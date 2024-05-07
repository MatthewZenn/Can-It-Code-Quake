fn q_rsqrt(number f32) f32 {
	mut long := i64
	mut x := f32
	mut y := f32
	
	x = number * 0.5
	y = number
	long = &y
	long = 0x5f3759df - (long >> 1)
	y = &long
	
	y = y * (1.5 - (x * y * y))
	y = y * (1.5 - (x * y * y))
	
	return y
}

fn main() {
	println(q_rsqrt(0.15625))
}