// scripts\unittest\util.gsc  (78A054D0158094FB.gscc) (size: 436 Bytes / 0x1b4 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x8bf16ce (146740942)
// size ...... 436 (0x1b4)
// includes .. 0   (offset: 0x77)
// strings ... 3   (offset: 0x190)
// dev strs .. 0   (offset: 0x1b4)
// exports ... 3   (offset: 0xdc)
// cseg ...... 0x77 + 0x65 (0xdc)
// imports ... 2   (offset: 0x154)
// animtree1 . 0   (offset: 0x1b4)
// animtree2 . 0   (offset: 0x1b4)
#namespace util;

// Namespace util / scripts\unittest\util
// Params 1
// Checksum 0x0, Offset: 0x7f
// Size: 0x1b
function test_print(msg) {
    msg = "SCR_TEST: " + msg;
    sysprint(msg);
}

// Namespace util / scripts\unittest\util
// Params 1
// Checksum 0x0, Offset: 0xa2
// Size: 0x19
function test_begin(tag) {
    test_print(tag + "_begin");
}

// Namespace util / scripts\unittest\util
// Params 1
// Checksum 0x0, Offset: 0xc3
// Size: 0x19
function test_end(tag) {
    test_print(tag + "_end");
}

