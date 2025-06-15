// script_6388715b7706a618  (6388715B7706A618.gscc) (size: 479 Bytes / 0x1df / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x89d87a01 (2312665601)
// size ...... 479 (0x1df)
// includes .. 4   (offset: 0x85)
// strings ... 1   (offset: 0x1cb)
// dev strs .. 0   (offset: 0x1df)
// exports ... 2   (offset: 0xef)
// cseg ...... 0xa5 + 0x4a (0xef)
// imports ... 5   (offset: 0x13f)
// animtree1 . 0   (offset: 0x1df)
// animtree2 . 0   (offset: 0x1df)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_25855beb6219459;

// Namespace namespace_25855beb6219459 / namespace_6258b6d1cdc40598
// Params 0
// Checksum 0x0, Offset: 0xad
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_civ_lnd_motorcycle_cruiser_2008", &function_b103169a6a0515ba);
}

// Namespace namespace_25855beb6219459 / namespace_6258b6d1cdc40598
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xc8
// Size: 0x27
function private function_b103169a6a0515ba() {
    if (!function_9697379150687859("veh9_civ_lnd_motorcycle_cruiser_2008")) {
        return;
    }
    if (iscp()) {
        return;
    }
    function_8497e7e46b5e397("veh9_civ_lnd_motorcycle_cruiser_2008");
}

