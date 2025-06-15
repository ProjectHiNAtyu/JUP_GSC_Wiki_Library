// scripts\code\struct.gsc  (34A720E17D0E697B.gscc) (size: 274 Bytes / 0x112 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x556f20b9 (1433346233)
// size ...... 274 (0x112)
// includes .. 0   (offset: 0x60)
// strings ... 0   (offset: 0x112)
// dev strs .. 0   (offset: 0x112)
// exports ... 2   (offset: 0xa6)
// cseg ...... 0x60 + 0x46 (0xa6)
// imports ... 1   (offset: 0xf6)
// animtree1 . 0   (offset: 0x112)
// animtree2 . 0   (offset: 0x112)
#namespace struct;

// Namespace struct / scripts\code\struct
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x68
// Size: 0xc
function initstructs() {
    level.struct = [];
}

// Namespace struct / scripts\code\struct
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7c
// Size: 0x29
function createstruct() {
    struct = spawnstruct();
    level.struct[level.struct.size] = struct;
    return struct;
}

