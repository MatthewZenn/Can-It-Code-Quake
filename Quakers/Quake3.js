function Q_rsqrt(number) {
  var x2, y;
  var i;
  var b = new BigInt64Array(8);
  var c = new Float32Array(4);

  x2 = number * 0.5;
  y = number;
  b[0] = y;
  i = b;
  i = 0x5f3759df - (i >> 1);
  c[0] = i;
  y = c;

  y = y*(1.5 - (x2 * y * y));
  y = y*(1.5 - (x2 * y * y));

  return y;
}

console.log(Q_rsqrt(3.14));