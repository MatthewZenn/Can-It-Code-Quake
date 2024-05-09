function Q_rsqrt($number) {
  $threehalfs = 1.5;
  $x2 = $number * 0.5;
  $y = $number;
  $i = unpack('l', pack('f', $y))[1]; 
  $i = 0x5f3759df - ($i >> 1); 
  $y = unpack('f', pack('l', $i))[1];

  $y = $y * ($threehalfs - ($x2 * $y * $y));
  // Uncomment the following line for the second iteration
  //$y = $y * ($threehalfs - ($x2 * $y * $y)); // Second iteration

  return $y;
}

echo Q_rsqrt(2.43);
