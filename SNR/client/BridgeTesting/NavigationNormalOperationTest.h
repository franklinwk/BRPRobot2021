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

#ifndef __NavigationNormalOperationTest_h
#define __NavigationNormalOperationTest_h

#include "igtlSocket.h"
#include "../NavigationIGTControlBase.h"
#include "../NavigationSlicerScript.hxx"

class NavigationNormalOperationTest : public NavigationIGTControlBase
{
public:
  NavigationNormalOperationTest();
  ~NavigationNormalOperationTest();

  virtual const char* Name() { return "Normal Operation Test"; };

  virtual ErrorPointType Test();
};

#endif //__NavigationNormalOperationTest_h


