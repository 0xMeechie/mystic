const std = @import("std");

var run_Game = true;
pub fn main() !void {
    while (run_Game) {
        const reader = std.io.getStdIn().reader();
        std.debug.print("Welcome to Mystic!\n", .{});
        std.time.sleep(std.time.ns_per_s * 3);
        std.debug.print("Lets Get Started!\n", .{});
        std.debug.print("Tell me your name adventurer!\n", .{});

        var nameBuff: [16]u8 = undefined;
        const name = reader.readUntilDelimiterOrEof(nameBuff[0..], '\n') catch |err| {
            std.debug.print("name too long. Please choose a shorter name: {}\n", .{err});
            continue;
        } orelse "No Input";

        std.debug.print("Hello, {s}! Are you ready? Yes or No\n", .{name});

        var get_started_buffer: [16]u8 = undefined;
        const get_started = reader.readUntilDelimiterOrEof(get_started_buffer[0..], '\n') catch |err| {
            std.debug.print("couldn't determine if you're ready to play {}", .{err});
            continue;
        } orelse "No Input";

        if (std.mem.eql(u8, get_started, "yes") or std.mem.eql(u8, get_started, "Yes")) {
            std.debug.print("Lets play the game", .{});
        } else if (std.mem.eql(u8, get_started, "No")) {
            std.debug.print("not quite ready yet", .{});
        } else {
            std.debug.print("woah what the heck did you put??", .{});
        }
    }
}

const Player = struct {
    name: []u8,
    level: i8,
    experience: i16,
    experience_cap: i16,

    pub fn init(name: []u8) Player {
        return .{
            .name = name,
            .level = 1,
            .experience = 0,
            .experience_cap = 100,
        };
    }
};

const Mage = struct {
    base: Player,

    pub fn init(name: []u8) Mage {
        return .{ .base = Player.init(name) };
    }
};

const Warrior = struct {
    base: Player,

    pub fn init(name: []u8) Warrior {
        return .{ .base = Player.init(name) };
    }
};

const Rogue = struct {
    base: Player,

    pub fn init(name: []u8) Rogue {
        return .{ .base = Player.init(name) };
    }
};

pub const CharacterClass = union(enum) {
    mage: Mage,
    warrior: Warrior,
    rogue: Rogue,
};

fn classPick() !CharacterClass {}
