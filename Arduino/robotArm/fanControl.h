#ifndef FANCONTROL_H_
#define FANCONTROL_H_

class FanControl {
public:
  FanControl(int aPin);
  void enable(bool value = true);
  void disable();
  void setDisableDelay(long millisec);
  void update();
private:
  bool state;
  int pin;
  long disableDelay;
  long nextShutdown;
};

#endif