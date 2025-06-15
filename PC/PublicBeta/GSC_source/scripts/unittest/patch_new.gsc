// scripts\unittest\patch_new.gsc  (3FB3888869A3BBAC.gscc) (size: 518 Bytes / 0x206 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x11c5e620 (298182176)
// size ...... 518 (0x206)
// includes .. 1   (offset: 0x8b)
// strings ... 4   (offset: 0x1d6)
// dev strs .. 0   (offset: 0x206)
// exports ... 4   (offset: 0xf2)
// cseg ...... 0x93 + 0x5f (0xf2)
// imports ... 2   (offset: 0x192)
// animtree1 . 0   (offset: 0x206)
// animtree2 . 0   (offset: 0x206)
#using scripts\unittest\util;

#namespace patch_new;

// Namespace patch_new / scripts\unittest\patch_new
// Params 0
// Checksum 0x0, Offset: 0x9b
// Size: 0xe
function patch_new() {
    test_print("patch_new");
}

// Namespace patch_new / scripts\unittest\patch_new
// Params 0
// Checksum 0x0, Offset: 0xb1
// Size: 0x15
function patch_new2() {
    test_print("patch_new2");
    patch_new3();
}

// Namespace patch_new / scripts\unittest\patch_new
// Params 0
// Checksum 0x0, Offset: 0xce
// Size: 0xe
function patch_new3() {
    test_print("patch_new3");
}

// Namespace patch_new / scripts\unittest\patch_new
// Params 0
// Checksum 0x0, Offset: 0xe4
// Size: 0xe
function patch_new4() {
    test_print("patch_new4");
}

