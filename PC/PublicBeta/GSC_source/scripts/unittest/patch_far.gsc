// scripts\unittest\patch_far.gsc  (46E026730332CC63.gscc) (size: 416 Bytes / 0x1a0 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x76ecf51b (1995240731)
// size ...... 416 (0x1a0)
// includes .. 1   (offset: 0x8a)
// strings ... 3   (offset: 0x178)
// dev strs .. 0   (offset: 0x1a0)
// exports ... 3   (offset: 0xdc)
// cseg ...... 0x92 + 0x4a (0xdc)
// imports ... 1   (offset: 0x154)
// animtree1 . 0   (offset: 0x1a0)
// animtree2 . 0   (offset: 0x1a0)
#using scripts\unittest\util;

#namespace patch_far;

// Namespace patch_far / scripts\unittest\patch_far
// Params 0
// Checksum 0x0, Offset: 0x9a
// Size: 0xe
function patch_far() {
    test_print("patch_far");
}

// Namespace patch_far / scripts\unittest\patch_far
// Params 0
// Checksum 0x0, Offset: 0xb0
// Size: 0x16
function patch_far_notify() {
    test_print("patch_far_notify");
    level notify("patch_far_notify");
}

// Namespace patch_far / scripts\unittest\patch_far
// Params 0
// Checksum 0x0, Offset: 0xce
// Size: 0xe
function patch_far_wait() {
    test_print("patch_far_wait");
}

