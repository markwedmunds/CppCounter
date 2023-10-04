#ifndef Counter_h
#define Counter_h

class Counter {
public:
    Counter();
    void increment();
    int getValue() const;
private:
    int value;
};

#endif /* Counter_h */
