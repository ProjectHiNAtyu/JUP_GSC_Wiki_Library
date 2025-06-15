// script_320478327c55986c  (320478327C55986C.gscc) (size: 466 Bytes / 0x1d2 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xe5365a70 (3845544560)
// size ...... 466 (0x1d2)
// includes .. 4   (offset: 0x78)
// strings ... 1   (offset: 0x1be)
// dev strs .. 0   (offset: 0x1d2)
// exports ... 2   (offset: 0xe2)
// cseg ...... 0x98 + 0x4a (0xe2)
// imports ... 5   (offset: 0x132)
// animtree1 . 0   (offset: 0x1d2)
// animtree2 . 0   (offset: 0x1d2)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_5b55a39d45a8a3ed;

// Namespace namespace_5b55a39d45a8a3ed / namespace_19f9046b14b6bdf2
// Params 0
// Checksum 0x0, Offset: 0xa0
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_civ_lnd_scooter_eu", &function_9ba16c90d67c5692);
}

// Namespace namespace_5b55a39d45a8a3ed / namespace_19f9046b14b6bdf2
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xbb
// Size: 0x27
function private function_9ba16c90d67c5692() {
    if (!function_9697379150687859("veh9_civ_lnd_scooter_eu")) {
        return;
    }
    if (iscp()) {
        return;
    }
    function_8497e7e46b5e397("veh9_civ_lnd_scooter_eu");
}

