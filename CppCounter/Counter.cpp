#include "Counter.h"

Counter::Counter() : value(0) {}

void Counter::increment() {
  value++;
}

int Counter::getValue() const {
  return value;
}
