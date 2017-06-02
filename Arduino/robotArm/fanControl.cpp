#include "fanControl.h"
#include "arduino.h"


FanControl::FanControl(int aPin) {
  setDisableDelay(30000);
  nextShutdown = 0;
  pin = aPin;
  pinMode(pin , OUTPUT);
  digitalWrite(pin , LOW);
  state = false;
}

void FanControl::enable(bool value) {
  if (value) {
    state = true;
    digitalWrite(pin, HIGH);
  } else {
    disable();
  }
}

void FanControl::disable() {
  state = false;
  nextShutdown = millis() + disableDelay;
  update();
}

void FanControl::setDisableDelay(long millisec) {
  disableDelay = millisec;
}

void FanControl::update() {
  if (!state) {
     if (millis() >= nextShutdown) {
       digitalWrite(pin, LOW);
     }
  }
}
