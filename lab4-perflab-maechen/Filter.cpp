#include "Filter.h"
#include <iostream>

Filter::Filter(short _dim)
{
  divisor = 1;
  dim = _dim;
  data = new short[dim * dim];
}

short Filter::get(short r, short c)
{
  return data[ r * dim + c ];
}

void Filter::set(short r, short c, short value)
{
  data[ r * dim + c ] = value;
}

short Filter::getDivisor()
{
  return divisor;
}

void Filter::setDivisor(short value)
{
  divisor = value;
}

short Filter::getSize()
{
  return dim;
}

void Filter::info()
{

  cout << "Filter is.." << endl;
  for (short row = 0; row < dim; row++) {
    for (short col = 0; col < dim; col++) {
      cout << get(row, col) << " ";
    }
    cout << endl;
  }
}
