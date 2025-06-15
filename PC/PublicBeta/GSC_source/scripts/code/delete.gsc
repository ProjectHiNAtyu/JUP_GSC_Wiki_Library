// scripts\code\delete.gsc  (2B0D7E2A0F096CD1.gscc) (size: 227 Bytes / 0xe3 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x7e1730f6 (2115449078)
// size ...... 227 (0xe3)
// includes .. 0   (offset: 0x60)
// strings ... 0   (offset: 0xe3)
// dev strs .. 0   (offset: 0xe3)
// exports ... 1   (offset: 0x83)
// cseg ...... 0x60 + 0x23 (0x83)
// imports ... 2   (offset: 0xab)
// animtree1 . 0   (offset: 0xe3)
// animtree2 . 0   (offset: 0xe3)
#namespace delete;

// Namespace delete / scripts\code\delete
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x68
// Size: 0x1b
function main() {
    assert(isdefined(self));
    wait 0;
    if (isdefined(self)) {
        self delete();
    }
}

