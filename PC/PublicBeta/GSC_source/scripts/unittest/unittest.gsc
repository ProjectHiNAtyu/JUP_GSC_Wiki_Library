// scripts\unittest\unittest.gsc  (508F2C4AFE4464DD.gscc) (size: 964 Bytes / 0x3c4 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x27a04084 (664813700)
// size ...... 964 (0x3c4)
// includes .. 11  (offset: 0x60)
// strings ... 0   (offset: 0x3c4)
// dev strs .. 0   (offset: 0x3c4)
// exports ... 3   (offset: 0x1a8)
// cseg ...... 0xb8 + 0xf0 (0x1a8)
// imports ... 15  (offset: 0x220)
// animtree1 . 0   (offset: 0x3c4)
// animtree2 . 0   (offset: 0x3c4)
#using scripts\unittest\call;
#using scripts\unittest\cond;
#using scripts\unittest\error;
#using scripts\unittest\loop;
#using scripts\unittest\ops;
#using scripts\unittest\patch;
#using scripts\unittest\private;
#using scripts\unittest\switch;
#using scripts\unittest\threads;
#using scripts\unittest\util;
#using scripts\unittest\variables;

#namespace unittest;

// Namespace unittest / scripts\unittest\unittest
// Params 0
// Checksum 0x0, Offset: 0xc0
// Size: 0x44
function test() {
    unittest_ops::main();
    unittest_call::main();
    unittest_variables::main();
    unittest_cond::main();
    unittest_loop::main();
    unittest_switch::main();
    unittest_threads::main();
    unittest_patch::main();
    namespace_106f587ebebd0cab::main();
    /#
    #/
}

// Namespace unittest / scripts\unittest\unittest
// Params 0
// Checksum 0x0, Offset: 0x10c
// Size: 0x9
function error() {
    unittest_error::main();
}

// Namespace unittest / scripts\unittest\unittest
// Params 0
// Checksum 0x0, Offset: 0x11d
// Size: 0x8b
function main() {
    setdvarifuninitialized(@"hash_3b4e5f0e69f46421", 0);
    while (true) {
        wait 1;
        var_c990b60e12f60d87 = getdvarint(@"hash_3b4e5f0e69f46421", 0);
        switch (var_c990b60e12f60d87) {
        case 0:
            continue;
        case 1:
            test();
            break;
        case 2:
            error();
            break;
        }
        setdvar(@"hash_3b4e5f0e69f46421", 0);
    }
}

