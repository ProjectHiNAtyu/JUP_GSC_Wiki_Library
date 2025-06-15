// scripts\common\concussion_utility.gsc  (588F0D30A20975F5.gscc) (size: 217 Bytes / 0xd9 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xa1144802 (2702460930)
// size ...... 217 (0xd9)
// includes .. 2   (offset: 0x60)
// strings ... 0   (offset: 0xd9)
// dev strs .. 0   (offset: 0xd9)
// exports ... 1   (offset: 0x95)
// cseg ...... 0x70 + 0x25 (0x95)
// imports ... 1   (offset: 0xbd)
// animtree1 . 0   (offset: 0xd9)
// animtree2 . 0   (offset: 0xd9)
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace concussion_utility;

// Namespace concussion_utility / scripts\common\concussion_utility
// Params 1
// Checksum 0x0, Offset: 0x78
// Size: 0x1c
function calculateinterruptdelay(duration) {
    return max(0, duration - 2.6) * 1000;
}

