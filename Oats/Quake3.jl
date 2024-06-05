function q_rsqrt(number)::Float32
  y::Float32 = number
  x2::Float32 = number * 0.5

  i = reinterpret(Int64, y)
  i = 0x5f3759df - (i >> 1)
  y = reinterpret(Float32, i)

  y = y * (1.5 - (x2 * y * y));
  y = y * (1.5 - (x2 * y * y));

  return y
end

println(q_rsqrt(0.15625))