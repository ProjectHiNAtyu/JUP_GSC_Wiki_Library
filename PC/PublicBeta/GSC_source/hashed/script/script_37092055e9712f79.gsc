// script_37092055e9712f79  (37092055E9712F79.gscc) (size: 419 Bytes / 0x1a3 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xeb1a91fd (3944387069)
// size ...... 419 (0x1a3)
// includes .. 4   (offset: 0x6f)
// strings ... 1   (offset: 0x18f)
// dev strs .. 0   (offset: 0x1a3)
// exports ... 2   (offset: 0xcf)
// cseg ...... 0x8f + 0x40 (0xcf)
// imports ... 4   (offset: 0x11f)
// animtree1 . 0   (offset: 0x1a3)
// animtree2 . 0   (offset: 0x1a3)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_6740f5eaa6432488;

// Namespace namespace_6740f5eaa6432488 / namespace_b835d284f1d90ddd
// Params 0
// Checksum 0x0, Offset: 0x97
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_atv_boost", &atv_init);
}

// Namespace namespace_6740f5eaa6432488 / namespace_b835d284f1d90ddd
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xb2
// Size: 0x1d
function private atv_init() {
    if (!function_9697379150687859("veh9_atv_boost")) {
        return;
    }
    function_8497e7e46b5e397("veh9_atv_boost");
}

