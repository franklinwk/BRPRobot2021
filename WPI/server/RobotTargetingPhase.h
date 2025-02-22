/*=========================================================================
  Language:  C++
  Please see
    http://wiki.na-mic.org/Wiki/index.php/ProstateBRP_OpenIGTLink_Communication_June_2013
  for the detail of the protocol.

=========================================================================*/

#ifndef __RobotTargetingPhase_h
#define __RobotTargetingPhase_h

#include "igtlSocket.h"
#include "igtlMath.h"
#include "igtlMessageBase.h"
#include "RobotPhaseBase.h"

class RobotTargetingPhase : public RobotPhaseBase
{
public:

  RobotTargetingPhase();
  ~RobotTargetingPhase();

  virtual const char* Name() { return "TARGETING"; };

  virtual int Initialize();
  virtual int MessageHandler(igtl::MessageHeader* headerMsg);

protected:
  
  // Has the  received a target matrix?
  int TargetFlag;

};

#endif //__RobotTargetingPhase_h
