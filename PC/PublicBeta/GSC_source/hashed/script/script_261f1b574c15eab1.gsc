// script_261f1b574c15eab1  (261F1B574C15EAB1.gscc) (size: 423 Bytes / 0x1a7 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x38928139 (949125433)
// size ...... 423 (0x1a7)
// includes .. 4   (offset: 0x73)
// strings ... 1   (offset: 0x193)
// dev strs .. 0   (offset: 0x1a7)
// exports ... 2   (offset: 0xd3)
// cseg ...... 0x93 + 0x40 (0xd3)
// imports ... 4   (offset: 0x123)
// animtree1 . 0   (offset: 0x1a7)
// animtree2 . 0   (offset: 0x1a7)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_ddf44c860acc3f80;

// Namespace namespace_ddf44c860acc3f80 / namespace_8db7d778efdc3d65
// Params 0
// Checksum 0x0, Offset: 0x9b
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_overland_2016", &function_7993e6a0ef6e50d9);
}

// Namespace namespace_ddf44c860acc3f80 / namespace_8db7d778efdc3d65
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xb6
// Size: 0x1d
function private function_7993e6a0ef6e50d9() {
    if (!function_9697379150687859("veh9_overland_2016")) {
        return;
    }
    function_8497e7e46b5e397("veh9_overland_2016");
}

