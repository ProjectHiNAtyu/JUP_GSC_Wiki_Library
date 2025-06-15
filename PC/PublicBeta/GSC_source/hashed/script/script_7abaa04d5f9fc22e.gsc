// script_7abaa04d5f9fc22e  (7ABAA04D5F9FC22E.gscc) (size: 421 Bytes / 0x1a5 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x1fa036bb (530593467)
// size ...... 421 (0x1a5)
// includes .. 4   (offset: 0x71)
// strings ... 1   (offset: 0x191)
// dev strs .. 0   (offset: 0x1a5)
// exports ... 2   (offset: 0xd1)
// cseg ...... 0x91 + 0x40 (0xd1)
// imports ... 4   (offset: 0x121)
// animtree1 . 0   (offset: 0x1a5)
// animtree2 . 0   (offset: 0x1a5)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_b0ade278d3496f7;

// Namespace namespace_b0ade278d3496f7 / namespace_a5c3c313b4f6886a
// Params 0
// Checksum 0x0, Offset: 0x99
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_pickup_2014", &function_ef5d5f963f4b6c14);
}

// Namespace namespace_b0ade278d3496f7 / namespace_a5c3c313b4f6886a
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xb4
// Size: 0x1d
function private function_ef5d5f963f4b6c14() {
    if (!function_9697379150687859("veh9_pickup_2014")) {
        return;
    }
    function_8497e7e46b5e397("veh9_pickup_2014");
}

