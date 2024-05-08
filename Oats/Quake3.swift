import Foundation

func Q_rsqrt(number: Float32) -> Float32 {
  var i: UInt32
  let x2 = number * 0.5
  var y = number

  i = UInt32(y.bitPattern)
  i = 0x5f3759df - (i >> 1)
  y = Float32(bitPattern: UInt32(i))

  y = y*(1.5 - (x2 * y * y))
  y = y*(1.5 - (x2 * y * y))
  y = y*(1.5 - (x2 * y * y))

  return y
}

print(Q_rsqrt(number: 0.15625))