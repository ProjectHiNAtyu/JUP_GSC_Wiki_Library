// scripts\quaked\script_struct_mp_iw9_dirt_bike.gsc  (70EAE1B2101A187.gscc) (size: 465 Bytes / 0x1d1 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x8b646117 (2338611479)
// size ...... 465 (0x1d1)
// includes .. 4   (offset: 0x77)
// strings ... 1   (offset: 0x1bd)
// dev strs .. 0   (offset: 0x1d1)
// exports ... 2   (offset: 0xe1)
// cseg ...... 0x97 + 0x4a (0xe1)
// imports ... 5   (offset: 0x131)
// animtree1 . 0   (offset: 0x1d1)
// animtree2 . 0   (offset: 0x1d1)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_1fce23c232dc778e;

// Namespace namespace_1fce23c232dc778e / scripts\quaked\script_struct_mp_iw9_dirt_bike
// Params 0
// Checksum 0x0, Offset: 0x9f
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_civ_lnd_dirt_bike", &function_22e02886ba8d83bf);
}

// Namespace namespace_1fce23c232dc778e / scripts\quaked\script_struct_mp_iw9_dirt_bike
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xba
// Size: 0x27
function private function_22e02886ba8d83bf() {
    if (!function_9697379150687859("veh9_civ_lnd_dirt_bike")) {
        return;
    }
    if (iscp()) {
        return;
    }
    function_8497e7e46b5e397("veh9_civ_lnd_dirt_bike");
}

