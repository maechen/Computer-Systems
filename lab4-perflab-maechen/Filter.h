//-*-c++-*-
#ifndef _Filter_h_
#define _Filter_h_

using namespace std;

class Filter {
  short divisor;
  short dim;
  short *data;

public:
  Filter(short _dim);
  short get(short r, short c);
  void set(short r, short c, short value);

  short getDivisor();
  void setDivisor(short value);

  short getSize();
  void info();
};

#endif
