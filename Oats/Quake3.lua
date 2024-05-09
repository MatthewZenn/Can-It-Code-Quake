function Q_rsqrt(number)
  x2 = number * 0.5
  y = number
  
  i = string.pack(j, y)
  i = 0x5f3759df - (i >> 1)
  y = string.unpack(i)

  y = y * (1.5 - (x2 * y * y))
  y = y * (1.5 - (x2 * y * y))
  
  return y
end

print(Q_rsqrt(123.456))