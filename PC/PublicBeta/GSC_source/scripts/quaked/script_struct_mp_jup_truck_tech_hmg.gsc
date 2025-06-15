// scripts\quaked\script_struct_mp_jup_truck_tech_hmg.gsc  (EB4F4CE0838A5D9.gscc) (size: 2686 Bytes / 0xa7e / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xb881b044 (3095507012)
// size ...... 2686 (0xa7e)
// includes .. 7   (offset: 0xe0)
// strings ... 11  (offset: 0x9ce)
// dev strs .. 0   (offset: 0xa7e)
// exports ... 11  (offset: 0x55e)
// cseg ...... 0x118 + 0x446 (0x55e)
// imports ... 24  (offset: 0x716)
// animtree1 . 0   (offset: 0xa7e)
// animtree2 . 0   (offset: 0xa7e)
#using scripts\common\utility;
#using scripts\cp_mp\utility\vehicle_omnvar_utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_damage;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_b4019be8e42ae860;

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 0, eflags: 0x1
// Checksum 0x0, Offset: 0x120
// Size: 0x1e
function autoexec main() {
    level.var_7bf42d565645a485 = 1;
    function_c0b3ddc9a6bdcc46("veh_jup_truck_tech_hmg", &function_81e164465100fa5d);
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x146
// Size: 0x65
function private function_81e164465100fa5d() {
    if (!function_9697379150687859("veh_jup_truck_tech_hmg")) {
        return;
    }
    callbacks = [];
    callbacks["spawn"] = &jup_truck_tech_hmg_spawn;
    callbacks["enterEnd"] = &function_f25c1f55c0d22f24;
    callbacks["exitEnd"] = &function_b0bb9044b3840240;
    callbacks["reenter"] = &function_6a5cfd38b688e3a4;
    function_8497e7e46b5e397("veh_jup_truck_tech_hmg", callbacks);
    function_b484da4e03cd75e6();
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x1b3
// Size: 0x83
function private jup_truck_tech_hmg_spawn(spawndata, faildata) {
    function_d603d07c7e71284c(spawndata);
    vehicle = function_bba34cf920370ff4("veh_jup_truck_tech_hmg", spawndata, faildata);
    spawndata.var_14cde247ac3313a4 = "green";
    turret_weapon = function_8b14981dadeee9bc();
    turret = function_7d1a850ac1a81925(vehicle, turret_weapon, spawndata, "tag_turret_attach", "veh_jup_mil_tech_turret_hmg");
    vehicle_registerturret(vehicle, turret, makeweapon(turret_weapon));
    return vehicle;
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x23f
// Size: 0x6d
function private function_d603d07c7e71284c(spawndata) {
    if (isdefined(spawndata.var_14cde247ac3313a4)) {
        switch (spawndata.var_14cde247ac3313a4) {
        case #"hash_22ce3b03c1e51a9c":
            spawndata.var_14cde247ac3313a4 = "tan";
            break;
        case #"hash_a1e9b77432f55b0e":
            spawndata.var_14cde247ac3313a4 = "green";
            break;
        }
    }
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x2b4
// Size: 0x51
function private function_b484da4e03cd75e6() {
    leveldataforvehicle = vehomn_getleveldataforvehicle("veh_jup_truck_tech_hmg", 1);
    leveldataforvehicle.rotationids[0] = 0;
    leveldataforvehicle.rotationrefsbyseatandweapon["gunner"][function_8b14981dadeee9bc()] = 0;
    leveldataforvehicle.var_bd169af9b46727ef = 1;
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x30d
// Size: 0x93
function private function_f25c1f55c0d22f24(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (istrue(data.success)) {
        thread function_2dc902a61faa1d0d(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
        return;
    }
    if (!istrue(data.playerdisconnect) && !istrue(data.playerdeath)) {
        if (seatid == "gunner") {
            turret_weapon = function_8b14981dadeee9bc();
            thread vehicle_occupancy_taketurret(player, vehicle, turret_weapon, data, 1);
        }
    }
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x3a8
// Size: 0x62
function private function_2dc902a61faa1d0d(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (seatid == "gunner") {
        turret_weapon = function_8b14981dadeee9bc();
        player function_d764f933c0054e16(vehicle, turret_weapon, 850, 2200);
    }
    function_5004590331017d88(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x412
// Size: 0x46
function private function_b0bb9044b3840240(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (istrue(data.success)) {
        function_2c2ed55a7befefc1(vehicle, seatid, var_7558f98f3236963d, player, data);
    }
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x460
// Size: 0x5d
function private function_2c2ed55a7befefc1(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (seatid == "gunner") {
        turret_weapon = function_8b14981dadeee9bc();
        player function_99ec1e87f279f082(data, vehicle, turret_weapon);
    }
    function_cb4191526e56163c(vehicle, seatid, var_7558f98f3236963d, player, data);
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x4c5
// Size: 0x5a
function private function_6a5cfd38b688e3a4(vehicle, var_9de41f2ee77c33ba, var_3f68c37bafd38606, player, data) {
    if (isdefined(var_3f68c37bafd38606) && var_3f68c37bafd38606 == "gunner") {
        turret_weapon = function_8b14981dadeee9bc();
        thread vehicle_occupancy_taketurret(player, vehicle, turret_weapon, data, 1);
    }
}

// Namespace namespace_b4019be8e42ae860 / scripts\quaked\script_struct_mp_jup_truck_tech_hmg
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x527
// Size: 0x37
function private function_8b14981dadeee9bc() {
    turretweapon = function_2e58e7b01554419a("veh_jup_truck_tech_hmg", "gunner");
    if (isdefined(turretweapon)) {
        return turretweapon.basename;
    }
    return "";
}

