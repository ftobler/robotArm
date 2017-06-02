#include <Arduino.h>


void gripperOpen(int i = 1000) {
  stepper.step(i);
}

void gripperClose(int i = 1000) {
  stepper.step(-i);
}
