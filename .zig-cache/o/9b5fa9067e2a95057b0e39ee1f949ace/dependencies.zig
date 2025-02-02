pub const packages = struct {
    pub const @"122062b24f031e68f0d11c91dfc32aed5baf06caf26ed3c80ea1802f9e788ef1c358" = struct {
        pub const build_root = "/Users/mrmunch/.cache/zig/p/122062b24f031e68f0d11c91dfc32aed5baf06caf26ed3c80ea1802f9e788ef1c358";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"12208da4dfcd9b53fb367375fb612ec73f38e53015f1ce6ae6d6e8437a637078e170" = struct {
        pub const available = true;
        pub const build_root = "/Users/mrmunch/.cache/zig/p/12208da4dfcd9b53fb367375fb612ec73f38e53015f1ce6ae6d6e8437a637078e170";
        pub const build_zig = @import("12208da4dfcd9b53fb367375fb612ec73f38e53015f1ce6ae6d6e8437a637078e170");
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"1220d93782859726c2c46a05450615b7edfc82b7319daac50cbc7c3345d660b022d7" = struct {
        pub const build_root = "/Users/mrmunch/.cache/zig/p/1220d93782859726c2c46a05450615b7edfc82b7319daac50cbc7c3345d660b022d7";
        pub const build_zig = @import("1220d93782859726c2c46a05450615b7edfc82b7319daac50cbc7c3345d660b022d7");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "xcode_frameworks", "12208da4dfcd9b53fb367375fb612ec73f38e53015f1ce6ae6d6e8437a637078e170" },
            .{ "emsdk", "1220e8fe9509f0843e5e22326300ca415c27afbfbba3992f3c3184d71613540b5564" },
        };
    };
    pub const @"1220e8fe9509f0843e5e22326300ca415c27afbfbba3992f3c3184d71613540b5564" = struct {
        pub const available = false;
    };
    pub const @"1220eedbc450fcfced1599d69f1e2c38b60af51616dbf724f6b9a8ed2c2a7c62cf9c" = struct {
        pub const build_root = "/Users/mrmunch/.cache/zig/p/1220eedbc450fcfced1599d69f1e2c38b60af51616dbf724f6b9a8ed2c2a7c62cf9c";
        pub const build_zig = @import("1220eedbc450fcfced1599d69f1e2c38b60af51616dbf724f6b9a8ed2c2a7c62cf9c");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "raylib", "1220d93782859726c2c46a05450615b7edfc82b7319daac50cbc7c3345d660b022d7" },
            .{ "raygui", "122062b24f031e68f0d11c91dfc32aed5baf06caf26ed3c80ea1802f9e788ef1c358" },
        };
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "raylib-zig", "1220eedbc450fcfced1599d69f1e2c38b60af51616dbf724f6b9a8ed2c2a7c62cf9c" },
};
