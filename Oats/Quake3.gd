func Q_rsqrt(number: float):
  var x: float
  var y:float = number
  var i: int
  var b: PackedByteArray = PackedByteArray()
  
  x = number * 0.5
  b.resize(8)
  b.encode_float(0, y)
  i = b.decode_s64(0)
  i = 0x5f3759df - (i >> 1)
  b.encode_s64(0, i)
  y = b.decode_float(0)

  y = y * (1.5 - (x * y * y))
  y = y * (1.5 - (x * y * y))
  y = y * (1.5 - (x * y * y))

  return y

console.log(Q_rsqrt(0.15625))