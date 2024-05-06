function Q_rsqrt(number) {
  var x2, y;
  var i;

  x2 = number * 0.5;
  y = number;
  i = new Int32Array(new Float32Array([y]).buffer)[0];;
  i = 0x5f3759df - (i >> 1);
  y = new Float32Array(new Int32Array([i]).buffer)[0];;

  y = y*(1.5 - (x2 * y * y));
  y = y*(1.5 - (x2 * y * y));

  return y;
}

console.log(Q_rsqrt(0.15265));