import Foundation

func Q_rsqrt(number: Float32) -> Float32 {
  var i: Int64
  var x2 = number * 0.5
  var y = number

  i = UnsafePointer(y)
  i = 0x5f3759df - (i >> 1);
  y = UnsafePointer(i)

  y = y*(1.5 - (x2 * y * y));
  y = y*(1.5 - (x2 * y * y));

  return y
}

print(Q_rsqrt(number: 0.15625))