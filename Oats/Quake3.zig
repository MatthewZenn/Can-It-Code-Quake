const std = @import("std");

fn Q_sqrt(number: f32) f32 {
    var y: f32 = number;
    const x2: f32 = number * 0.5;

    var i: *i64 = @ptrCast(y);
    i = 0x5f3759df - (i >> 1);
    var b: *f32 = @ptrCast(i);

    b = b * (1.5 - (x2 * b * b));
    b = b * (1.5 - (x2 * b * b));

    return b;
}

pub fn main() void {
    std.debug.print(Q_sqrt(0.15625), .{});
}
