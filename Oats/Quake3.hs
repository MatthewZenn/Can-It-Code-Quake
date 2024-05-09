Q_rsrt number =
  let y = number :: [float]
  let x = number * 0.5 :: [float]

  i :: [integer] ptr y
  a = 0x5f3759df - (i >> 1);
  c :: [float] ptr a

  e = c*(1.5 - (x * c * c));
  b = e*(1.5 - (x * e * e));
  
  return b

main :: IO()
main = do
  print(Q_rsrt 0.15625)