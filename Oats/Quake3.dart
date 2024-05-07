import 'dart:typed_data';

double Q_rsqrt(double number) {
  final threehalfs = 1.5;
  final x2 = number * 0.5;
  var y = number;

  var i = Float32List(1);
  i.buffer.asFloat32List()[0] = y;
  var intValue = i.buffer.asUint32List()[0];
  intValue = 0x5f3759df - (intValue >> 1);
  i.buffer.asUint32List()[0] = intValue;
  y = i.buffer.asFloat32List()[0];
  y = y * (threehalfs - (x2 * y * y)); // first iteration
  // y = y * (threehalfs - (x2 * y * y)); // increased precision

  return y;
}

void main() {
  print(Q_rsqrt(23.4));
}
