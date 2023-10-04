#import "CounterWrapper.h"
#include "Counter.h"

@interface CounterWrapper() {
  Counter *counter; // C++ instance
}
@end

@implementation CounterWrapper

- (instancetype)init {
  self = [super init];
  if (self) {
    counter = new Counter();
  }
  return self;
}

- (void)dealloc {
  delete counter;
}

- (void)increment {
  counter->increment();
}

- (int)getValue {
  return counter->getValue();
}

@end
