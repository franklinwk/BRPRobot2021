/*=========================================================================
  Language:  C++
  Please see
    http://wiki.na-mic.org/Wiki/index.php/ProstateBRP_OpenIGTLink_Communication_June_2013
  for the detail of the protocol.

=========================================================================*/

#include "RobotPhaseBase.h"
#include <string.h>
#include <stdlib.h>
#include "igtlOSUtil.h"
#include "igtlStringMessage.h"
#include "igtlClientSocket.h"
#include "igtlStatusMessage.h"
#include "igtlTransformMessage.h"
#include <cmath>

RobotPhaseBase::RobotPhaseBase()
{
  this->NextWorkphase.clear();
  this->RStatus = NULL;
}

RobotPhaseBase::~RobotPhaseBase()
{
}

int RobotPhaseBase::Enter(const char *queryID)
{
  // Send acknowledgement message with query ID
  std::stringstream ss;
  ss << "ACK_" << queryID;
  this->SendStringMessage(ss.str().c_str(), this->Name());
  Logger &log = Logger::GetInstance();
  log.Log("Changed Workphase to " + string(this->Name()), ss.str(), 1, 1);

  // Send phase message
  // TODO: Check if the phase transition is allowed
  this->SendStatusMessage("CURRENT_STATUS", 1, 0, this->Name());

  return this->Initialize();
}

int RobotPhaseBase::Process()
{
  // Create a message buffer to receive header
  igtl::MessageHeader::Pointer headerMsg;
  headerMsg = igtl::MessageHeader::New();

  ReceiveMessageHeader(headerMsg, 0);

  // If there is any workphase change request,
  // set NextWorkphase (done in the subroutine) and return 1.
  if (this->CheckWorkphaseChange(headerMsg))
  {
    return 1;
  }

  // Otherwise, the current workphase is the next workphase.
  this->NextWorkphase = this->Name();                      // Set the name of the current workphase as the next one.
  std::cout << this->Name() << ": is the current state\n"; // Added it for test

  // This checks if the navigation is asking for Robot's Status or current tip position.
  // Get_transform will return current_position and get_status will get current_status
  // if the return value is zero then the code enters the if statement and initiates a specialized method
  // of the MessageHandder of the Workphase. i.e will listen to an incoming transform for the calibration step
  if (!this->CheckCommonMessage(headerMsg))
  {
    MessageHandler(headerMsg);
  }
  std::cout << "Calibration flag is: " << this->GetRobotStatus()->GetCalibrationFlag() << std::endl;
  return 0;
}

int RobotPhaseBase::MessageHandler(igtl::MessageHeader *headerMsg)
{
  // TODO: Implement Message handling for GetTransform returns 1 as of now
  return 0;
}

int RobotPhaseBase::CheckWorkphaseChange(igtl::MessageHeader *headerMsg)
{

  // Check if the message requests phase transition
  if (strcmp(headerMsg->GetDeviceType(), "STRING") == 0 &&
      strncmp(headerMsg->GetDeviceName(), "CMD_", 4) == 0)
  {
    igtl::StringMessage::Pointer stringMsg;
    stringMsg = igtl::StringMessage::New();
    stringMsg->SetMessageHeader(headerMsg);
    stringMsg->AllocatePack();
    bool timeout(false);

    // The code waits here for new messages recieved from the socket
    int r = this->Socket->Receive(stringMsg->GetPackBodyPointer(), stringMsg->GetPackBodySize(), timeout);
    if (r < 0)
    {
      std::cerr << "ERROR: Timeout." << std::endl;
      this->Socket->CloseSocket();
      exit(EXIT_FAILURE);
    }
    else if (r == 0)
    {
      std::cerr << "ERROR: Socket closed while reading a message." << std::endl;
      this->Socket->CloseSocket();
      exit(EXIT_FAILURE);
    }

    // Deserialize the string message
    // If you want to skip CRC check, call Unpack() without argument.
    int c = stringMsg->Unpack(1);

    if (c & igtl::MessageHeader::UNPACK_BODY) // if CRC check is OK
    {
      if (stringMsg->GetEncoding() == 3)
      {
        this->NextWorkphase = stringMsg->GetString();
        std::cout << "Next Work Phase is: " << this->NextWorkphase << std::endl;
        // Get the query ID
        std::string msgName = headerMsg->GetDeviceName();
        this->QueryID = msgName.substr(4, std::string::npos);
        return 1;
      }
      else
      {
        this->NextWorkphase = "Unknown";
        return 1;
      }
    }
    else
    {
      std::cerr << "ERROR: Invalid CRC." << std::endl;
      this->NextWorkphase = "Unknown";
      return 1;
    }
  }
  else
  {
    return 0;
  }
}

// As of now Get_Transform Doesn not do anything and upon receiving the message the robot
// commumnication software does not send anything back.
// TODO: Add capability to send the current location of the robot's tip to the navigation.
int RobotPhaseBase::CheckCommonMessage(igtl::MessageHeader *headerMsg)
{
  /// Check if GET_TRANSFORM has been received
  if (strcmp(headerMsg->GetDeviceType(), "GET_TRANSFORM") == 0 &&
      strncmp(headerMsg->GetDeviceName(), "CURRENT_POSITION", 4) == 0)
  {
    igtl::Matrix4x4 currentPosition;
    igtl::IdentityMatrix(currentPosition);
    currentPosition[0][3] = 20; // 20 mm in R-L
    currentPosition[1][3] = 40; // 40 mm in A-P
    currentPosition[2][3] = 50; // 10 mm in S-I
    // Send navigation about how the desired target will look like
    SendTransformMessage("CURRENT_POSITION", currentPosition);
    Logger &log = Logger::GetInstance();
    log.Log("Info: Sent CURRENT_POSITIN to navigation", 1, 1);

    return 1;
  }
  /// Check if GET_STATUS has been received
  else if (strcmp(headerMsg->GetDeviceType(), "GET_STATUS") == 0 &&
           strncmp(headerMsg->GetDeviceName(), "CURRENT_STATUS", 4) == 0)
  {
    this->SendStatusMessage(this->Name(), 1, 0);
    Logger &log = Logger::GetInstance();
    log.Log("Info: Sent CURRENT_STATUS to navigation", 1, 1);

    return 1;
  }

  /// Check if the navigation is sending the needle tip pose
  else if (strcmp(headerMsg->GetDeviceType(), "TRANSFORM") == 0 &&
           strncmp(headerMsg->GetDeviceName(), "NPOSE_", 6) == 0)
  {
    // Create a matrix to store needle pose
    std::string devName = headerMsg->GetDeviceName();
    igtl::Matrix4x4 matrix;
    this->ReceiveTransform(headerMsg, matrix);

    // Acknowledgement
    std::stringstream ss;
    ss << "ACK_" << devName.substr(6, std::string::npos);
    SendTransformMessage(ss.str().c_str(), matrix);

    // Validate the needle transform matrix
    if (ValidateMatrix(matrix))
    {
      Logger &log = Logger::GetInstance();
      log.Log("OpenIGTLink Needle Tip Received and Set in Code.", devName.substr(6, std::string::npos), LOG_LEVEL_INFO, true);
      SendStatusMessage(this->Name(), igtl::StatusMessage::STATUS_OK, 0);
      return 1;
    }
    else
    {
      // Incorrect needle pose send status error
      std::cerr << "ERROR: Invalid calibration matrix." << std::endl;
      SendStatusMessage(this->Name(), igtl::StatusMessage::STATUS_CONFIG_ERROR, 0);
    }
  }

  return 0;
}
