function Q_rsqrt(number)
  x2 = number * 0.5
  y = number
  
  i = struct.unpack('>i', struct.pack(y))[0]
  i = 0x5f3759df - (i >> 1)
  y = struct.unpack('>y', struct.pack(i))[0]

  y = y * (1.5 - (x2 * y * y))
  y = y * (1.5 - (x2 * y * y))
  
  return y
end

print(Q_rsqrt(123.456))