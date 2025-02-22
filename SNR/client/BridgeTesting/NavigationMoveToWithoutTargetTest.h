/*=========================================================================

  Program:   BRP Prostate Robot: Testing Simulator (Client)
  Language:  C++

  Copyright (c) Brigham and Women's Hospital. All rights reserved.

  This software is distributed WITHOUT ANY WARRANTY; without even
  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
  PURPOSE.  See the above copyright notices for more information.

  Please see
    http://wiki.na-mic.org/Wiki/index.php/ProstateBRP_OpenIGTLink_Communication_June_2013
  for the detail of the testing protocol.

=========================================================================*/

#ifndef __NavigationMoveToWithoutTargetTest_h
#define __NavigationMoveToWithoutTargetTest_h

#include "igtlSocket.h"
#include "../NavigationIGTControlBase.h"

class NavigationMoveToWithoutTargetTest : public NavigationIGTControlBase
{
public:
  NavigationMoveToWithoutTargetTest();
  ~NavigationMoveToWithoutTargetTest();

  virtual const char* Name() { return "Normal Operation Test"; };

  virtual ErrorPointType Test();

};

#endif //__NavigationMoveToWithoutTargetTest_h


