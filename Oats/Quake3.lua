function Q_rsqrt(number)
  x2 = number * 0.5
  y = number
  
  i = string.unpack('i', string.pack('f', y))
  i = 0x5f3759df - (i >> 1)
  y = string.unpack('f', string.pack('i', i))

  y = y * (1.5 - (x2 * y * y))
  y = y * (1.5 - (x2 * y * y))
  y = y * (1.5 - (x2 * y * y))
  
  return y
end

print(Q_rsqrt(25))