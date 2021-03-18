//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
const std = @import("std");

const NumError = error{IllegalNumber};

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const my_num: NumError!u32 = getNumber();

    if (my_num) |num| {
        try stdout.print("my_num={}\n", .{num});
    }
    else |err|{
        try stdout.print("Error!\n", .{});
    }
}

// Just don't modify this function. It's "perfect" the way it is. :-)
fn getNumber() NumError!u32 {
    if (false) return NumError.IllegalNumber;
    return 42;
}
