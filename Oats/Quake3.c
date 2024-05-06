float Q_rsqrt(float number) {
  long i;
  float x2, y;
  const float threehalfs = 1.5F;
  x2 = number * 0.5F;
  y = number;
  i = * ( long *) &y;
  i = 0x5f3759df - ( i>>1 );
  y = * ( long *) &i;
  y = y*( threehalfs - ( x2 * y * y ));
  return y;
}

int main() {
  printf(Q_rsqrt(2.43));
  //cout << Q_rsqrt(2.43); if in c++/c#
}