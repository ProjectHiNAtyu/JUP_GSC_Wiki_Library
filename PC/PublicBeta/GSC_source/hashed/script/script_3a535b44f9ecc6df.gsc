// script_3a535b44f9ecc6df  (3A535B44F9ECC6DF.gscc) (size: 1246 Bytes / 0x4de / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xb99a4048 (3113893960)
// size ...... 1246 (0x4de)
// includes .. 7   (offset: 0xd6)
// strings ... 5   (offset: 0x482)
// dev strs .. 0   (offset: 0x4de)
// exports ... 3   (offset: 0x22e)
// cseg ...... 0x10e + 0x120 (0x22e)
// imports ... 17  (offset: 0x2a6)
// animtree1 . 0   (offset: 0x4de)
// animtree2 . 0   (offset: 0x4de)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_compass;
#using scripts\cp_mp\vehicles\vehicle_damage;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\cp_mp\vehicles\vehicle_tracking;
#using scripts\engine\utility;

#namespace namespace_60a636790355dd76;

// Namespace namespace_60a636790355dd76 / namespace_15896d40cab0d429
// Params 0
// Checksum 0x0, Offset: 0x116
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_sedan_hatchback_1985", &function_2c9651adad47c81f);
}

// Namespace namespace_60a636790355dd76 / namespace_15896d40cab0d429
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x131
// Size: 0x33
function private function_2c9651adad47c81f() {
    if (!function_9697379150687859("veh9_sedan_hatchback_1985")) {
        return;
    }
    registersharedfunc("veh9_sedan_hatchback_1985_nitrous", "spawn", &function_87c1d62f952bef20);
    function_8497e7e46b5e397("veh9_sedan_hatchback_1985");
}

// Namespace namespace_60a636790355dd76 / namespace_15896d40cab0d429
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x16c
// Size: 0xc1
function private function_87c1d62f952bef20(spawndata, faildata) {
    spawndata = function_37480e9c9c701cf2("veh9_sedan_hatchback_1985", spawndata);
    spawndata.vehicletype = "veh9_sedan_hatchback_1985_physics_nitrous_mp";
    vehicle = _spawnvehicle(spawndata, faildata);
    if (!isdefined(vehicle)) {
        return undefined;
    }
    vehicle_create(vehicle, "veh9_sedan_hatchback_1985", spawndata);
    vehicle.objweapon = makeweapon(function_7aaa7ae503292f43("veh9_sedan_hatchback_1985"));
    vehicle_compass_registerinstance(vehicle);
    vehicle_createlate(vehicle, spawndata);
    vehicle thread vehicle_watchflipped();
    vehicle thread function_1b69321ff9937fc5();
    if (issharedfuncdefined("veh9_sedan_hatchback_1985", "create")) {
        [[ getsharedfunc("veh9_sedan_hatchback_1985", "create") ]](vehicle);
    }
    return vehicle;
}

