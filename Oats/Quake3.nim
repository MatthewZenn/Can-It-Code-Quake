proc q_rsqrt(number: float32): float32 =
  var x2, y: float32
  var i: int32

  y = number
  x2 = number * 0.5
  i : pointer = addr(y)
  i = 0x5f3759df - (i >> 1);
  y : pointer = addr(i)

  y = y*(1.5 - (x2 * y * y));
  y = y*(1.5 - (x2 * y * y));

  return y

echo q_rsqrt(0.15625)