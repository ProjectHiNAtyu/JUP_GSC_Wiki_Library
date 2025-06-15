// script_4d03c33853d322ec  (4D03C33853D322EC.gscc) (size: 424 Bytes / 0x1a8 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x407ea13e (1082040638)
// size ...... 424 (0x1a8)
// includes .. 4   (offset: 0x74)
// strings ... 1   (offset: 0x194)
// dev strs .. 0   (offset: 0x1a8)
// exports ... 2   (offset: 0xd4)
// cseg ...... 0x94 + 0x40 (0xd4)
// imports ... 4   (offset: 0x124)
// animtree1 . 0   (offset: 0x1a8)
// animtree2 . 0   (offset: 0x1a8)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_ba537d4b7d96315d;

// Namespace namespace_ba537d4b7d96315d / namespace_c597e0c0ef10da36
// Params 0
// Checksum 0x0, Offset: 0x9c
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_chopped_pickup", &function_cfd9bb6718c10ab6);
}

// Namespace namespace_ba537d4b7d96315d / namespace_c597e0c0ef10da36
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xb7
// Size: 0x1d
function private function_cfd9bb6718c10ab6() {
    if (!function_9697379150687859("veh9_chopped_pickup")) {
        return;
    }
    function_8497e7e46b5e397("veh9_chopped_pickup");
}

