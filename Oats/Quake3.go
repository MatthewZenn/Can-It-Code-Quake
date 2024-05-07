package main

import "unsafe"

func Q_rsqrt(number float32) float32 {
    threehalfs := float32(1.5)
    x2 := number * 0.5
    y := number

    i := *(*int64)(unsafe.Pointer(&y))
    i = 0x5f3759df - (i >> 1)
    y = *(*float32)(unsafe.Pointer(&i))
    y = y * (threehalfs - (x2 * y * y)) // first iteration 
    // y = y * (threehalfs - (x2 * y * y)) // increased precision

    return y
}

func main() {
    println(Q_rsqrt(123.4))
}