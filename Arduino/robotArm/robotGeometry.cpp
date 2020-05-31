#include "robotGeometry.h"
#include <math.h>
#include <Arduino.h>

RobotGeometry::RobotGeometry() {
  
}

void RobotGeometry::set(float axmm, float aymm, float azmm) {
  xmm = axmm;
  ymm = aymm;
  zmm = azmm; 
  calculateGrad();
}

float RobotGeometry::getXmm() const {
  return xmm;
}

float RobotGeometry::getYmm() const {
  return ymm;
}

float RobotGeometry::getZmm() const {
  return zmm;
}

float RobotGeometry::getRotRad() const {
  return rot;
}

float RobotGeometry::getLowRad() const {
  return low;
}

float RobotGeometry::getHighRad() const {
  return high;
}

void RobotGeometry::calculateGrad() {
 
   //Thanks to AaronHuang DaLian for pointing some things out.
   // => the 'high' angle is asin
   // => the 'low' ancle is arcos
   //since the difference is only angle and direction the wrong formulas actually worked. All constant offsets are removed.
   //below the refactored code:
   
   float rrot =  sqrt((xmm * xmm) + (ymm * ymm));    //radius from Top View
   float rside = sqrt((rrot * rrot) + (zmm * zmm));  //radius from Side View. Use rrot instead of ymm..for everything
   
   rot = asin(xmm / rrot);
   //Angle of Higher Stepper Motor. Need to invert it because that is the way the motor spins from the old code. Compatibility must remain.
   //high = 2 * PI - asin((rside * 0.5) / 120.0) * 2.0;  //120mm shank length
   high = - asin((rside * 0.5) / 120.0) * 2.0;  //120mm shank length + Neglegt the offset because not needed
   
   //Angle of Lower Stepper Motor  (acos()=Angle To Gripper)
   if (zmm > 0) {
     //low = PI / 2 - acos(rrot / rside) + ((PI - high) / 2.0) - (PI / 2.0); //instead of asin acos is more correct. But that was corrected by the angle
     low = - acos(rrot / rside) + ((PI - high) / 2.0) - (PI / 2.0); //instead of asin acos is more correct. But that was corrected by the angle +Neglegt the offset because not needed
   } else {
     //low = PI / 2 + acos(rrot / rside) + ((PI - high) / 2.0) - (PI / 2.0);
     low = + acos(rrot / rside) + ((PI - high) / 2.0) - (PI / 2.0);   //Neglegt the offset because not needed
   }
   //correct higher Angle as it is mechanically bounded width lower Motor
   high = high + low;

   //Original code
   /*float rrot =  sqrt((xmm * xmm) + (ymm * ymm));    //radius from Top View
   float rside = sqrt((rrot * rrot) + (zmm * zmm));  //radius from Side View. Use rrot instead of ymm..for everything
   
   rot = asin(xmm / rrot);
   //Angle of Higher Stepper Motor
   high = acos((rside * 0.5) / 120.0) * 2.0;  //120mm shank length
   
   //Angle of Lower Stepper Motor  (asin()=Angle To Gripper)
   if (zmm > 0) {
     low =      asin(rrot / rside) + ((PI - high) / 2.0) - (PI / 2.0);
   } else {
     low = PI - asin(rrot / rside) + ((PI - high) / 2.0) - (PI / 2.0);
   }
   
   
   //correct higher Angle as it is mechanically bounded width lower Motor
   high = high + low;*/
   
}
