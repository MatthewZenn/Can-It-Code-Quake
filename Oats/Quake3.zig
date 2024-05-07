const std = @import("std");

fn Q_rsqrt(number: f32) f32 {
    const y: f32 = number;
    const x2: f32 = number * 0.5;

    var i: i32 = @bitCast(y);
    i = 0x5f3759df - (i >> 1);
    var b: f32 = @bitCast(i);

    b = b * (1.5 - (x2 * b * b));
    b = b * (1.5 - (x2 * b * b));
    b = b * (1.5 - (x2 * b * b));

    return b;
}

pub fn main() void {
    std.debug.print("{d}\n", .{Q_rsqrt(0.15625)});
}
