fn q_rsqrt(number f32) {
	i i64
	x2 f32
	y f32
	
	x2: number * 0.5
	y: number
	i: &y
	i: 0x5f3759df - (i >> 1)
	y: &i
	
	y: y * (1.5 - (x2 * y * y))
	y: y * (1.5 - (x2 * y * y))
	
	return y
}

fn main() {
	println(q_rsqrt(0.15625))
}