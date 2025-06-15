// script_1d1428a3b7b402b0  (1D1428A3B7B402B0.gscc) (size: 425 Bytes / 0x1a9 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x3bef4463 (1005536355)
// size ...... 425 (0x1a9)
// includes .. 4   (offset: 0x75)
// strings ... 1   (offset: 0x195)
// dev strs .. 0   (offset: 0x1a9)
// exports ... 2   (offset: 0xd5)
// cseg ...... 0x95 + 0x40 (0xd5)
// imports ... 4   (offset: 0x125)
// animtree1 . 0   (offset: 0x1a9)
// animtree2 . 0   (offset: 0x1a9)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_fd9cce3f0a5043c9;

// Namespace namespace_fd9cce3f0a5043c9 / namespace_3568ab3cfd523b38
// Params 0
// Checksum 0x0, Offset: 0x9d
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_mil_cargo_truck", &function_7d644f73e8a967d);
}

// Namespace namespace_fd9cce3f0a5043c9 / namespace_3568ab3cfd523b38
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xb8
// Size: 0x1d
function private function_7d644f73e8a967d() {
    if (!function_9697379150687859("veh9_mil_cargo_truck")) {
        return;
    }
    function_8497e7e46b5e397("veh9_mil_cargo_truck");
}

