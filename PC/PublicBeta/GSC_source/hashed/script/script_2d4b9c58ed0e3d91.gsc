// script_2d4b9c58ed0e3d91  (2D4B9C58ED0E3D91.gscc) (size: 485 Bytes / 0x1e5 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x7c08583c (2080921660)
// size ...... 485 (0x1e5)
// includes .. 13  (offset: 0x69)
// strings ... 1   (offset: 0x1d1)
// dev strs .. 0   (offset: 0x1e5)
// exports ... 2   (offset: 0x111)
// cseg ...... 0xd1 + 0x40 (0x111)
// imports ... 4   (offset: 0x161)
// animtree1 . 0   (offset: 0x1e5)
// animtree2 . 0   (offset: 0x1e5)
#using scripts\common\utility;
#using scripts\cp_mp\utility\player_utility;
#using scripts\cp_mp\utility\vehicle_omnvar_utility;
#using scripts\cp_mp\utility\weapon_utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_compass;
#using scripts\cp_mp\vehicles\vehicle_damage;
#using scripts\cp_mp\vehicles\vehicle_dlog;
#using scripts\cp_mp\vehicles\vehicle_interact;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\cp_mp\vehicles\vehicle_tracking;
#using scripts\engine\utility;

#namespace namespace_4d7ae30b2e476428;

// Namespace namespace_4d7ae30b2e476428 / namespace_8624e3257d13b029
// Params 0
// Checksum 0x0, Offset: 0xd9
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_utv", &function_d4d9f4b3b4b7f479);
}

// Namespace namespace_4d7ae30b2e476428 / namespace_8624e3257d13b029
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xf4
// Size: 0x1d
function private function_d4d9f4b3b4b7f479() {
    if (!function_9697379150687859("veh9_utv")) {
        return;
    }
    function_8497e7e46b5e397("veh9_utv");
}

