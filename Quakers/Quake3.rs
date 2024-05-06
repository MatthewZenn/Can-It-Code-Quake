fn inv_sqrt(mut x: f32) -> f32 {
  let xhalf = 0.5 * x;
  let mut i = x.to_bits();

  i = 0x5f37_59df - (i >> 1);
  x = f32::from_bits(i);

  x * (1.5 - xhalf * x * x)
}

fn main() {
println!("{}", inv_sqrt(3.14));
}