#ifndef INTERPOLATION_H_
#define INTERPOLATION_H_

#include "arduino.h"

struct Point {
  float xmm;
  float ymm;
  float zmm;
};
class Interpolation {
public:
  //void resetInterpolation(float px, float py, float pz);
  //void resetInterpolation(float p1x, float p1y, float p1z, float p2x, float p2y, float p2z);
  //void resetInterpolation(Point p0, Point p1);
  
  void setCurrentPos(float px, float py, float pz);
  void setInterpolation(float px, float py, float pz, float v = 0);
  void setInterpolation(float p1x, float p1y, float p1z, float p2x, float p2y, float p2z, float av = 0);
  
  void setCurrentPos(Point p);
  void setInterpolation(Point p1, float v = 0);
  void setInterpolation(Point p0, Point p1, float v = 0);
  
  void updateActualPosition();
  bool isFinished() const;
  
  float getXPosmm() const;
  float getYPosmm() const;
  float getZPosmm() const;
  Point getPosmm() const;
  
private:
  float getDistance() const;
  byte state;
  
  long startTime;  
  
  float xStartmm;
  float yStartmm;
  float zStartmm;
  float xDelta;
  float yDelta;
  float zDelta;
  float xPosmm;
  float yPosmm;
  float zPosmm;
  float v;
  float tmul;
};

#endif
