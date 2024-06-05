def q_rsqrt(number)
  three_halfs = 1.5
  x2 = number * 0.5
  y = number
  i = [y].pack('f').unpack('l')[0] 
  i = 0x5f3759df - (i >> 1) 
  y = [i].pack('l').unpack('f')[0] 
  y = y * (three_halfs - (x2 * y * y))

  return y
end

puts q_rsqrt(2.43)
