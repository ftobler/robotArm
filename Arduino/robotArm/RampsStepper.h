#ifndef RAMPSSTEPPER_H_
#define RAMPSSTEPPER_H_

class RampsStepper {
public:
  RampsStepper(int aStepPin, int aDirPin, int aEnablePin);
  void enable(bool value = true);
  void disable();
  
  bool isOnPosition() const;
  int getPosition() const;
  void setPosition(int value);
  void stepToPosition(int value);
  void stepRelative(int value);
  
  float getPositionRad() const;
  void setPositionRad(float rad);
  void stepToPositionRad(float rad);
  void stepRelativeRad(float rad);
  
  void update();
  
  void setReductionRatio(float gearRatio, int stepsPerRev);
private:
  int stepperStepTargetPosition;
  int stepperStepPosition;
    
  int stepPin;
  int dirPin;
  int enablePin;  
  
  float radToStepFactor;
};

#endif
