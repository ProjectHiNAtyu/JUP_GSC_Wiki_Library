// script_1edc3bb26d75a8f7  (1EDC3BB26D75A8F7.gscc) (size: 2813 Bytes / 0xafd / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x36454887 (910510215)
// size ...... 2813 (0xafd)
// includes .. 7   (offset: 0xe4)
// strings ... 11  (offset: 0xa51)
// dev strs .. 0   (offset: 0xafd)
// exports ... 12  (offset: 0x57d)
// cseg ...... 0x11c + 0x461 (0x57d)
// imports ... 26  (offset: 0x75d)
// animtree1 . 0   (offset: 0xafd)
// animtree2 . 0   (offset: 0xafd)
#using scripts\common\utility;
#using scripts\cp_mp\utility\vehicle_omnvar_utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_damage;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_a147074f8889586e;

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 0, eflags: 0x1
// Checksum 0x0, Offset: 0x124
// Size: 0x1e
function autoexec main() {
    level.var_7bf42d565645a485 = 1;
    function_c0b3ddc9a6bdcc46("veh_jup_truck_tech_aa", &function_657bb87e4b7af7f);
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x14a
// Size: 0x6c
function private function_657bb87e4b7af7f() {
    if (!function_9697379150687859("veh_jup_truck_tech_aa")) {
        return;
    }
    callbacks = [];
    callbacks["spawn"] = &function_4c72fe01c0c51c5c;
    callbacks["enterEnd"] = &function_1999c9c844035dc6;
    callbacks["exitEnd"] = &function_949eb1c65673cd06;
    callbacks["reenter"] = &function_6c47a47b31038e62;
    function_8497e7e46b5e397("veh_jup_truck_tech_aa", callbacks);
    function_f812c0ad901b2d20();
    function_b247c6a9756bbbee();
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1be
// Size: 0x1d
function private function_b247c6a9756bbbee() {
    var_e12affb695c458e6 = function_81d5780c8d74b92();
    vehicle_damage_setweaponhitdamagedata(var_e12affb695c458e6, 1);
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x1e3
// Size: 0x72
function private function_4c72fe01c0c51c5c(spawndata, faildata) {
    function_d603d07c7e71284c(spawndata);
    vehicle = function_bba34cf920370ff4("veh_jup_truck_tech_aa", spawndata, faildata);
    turret_weapon = function_81d5780c8d74b92();
    turret = function_7d1a850ac1a81925(vehicle, turret_weapon, spawndata, "tag_turret_attach", "veh_jup_mil_tech_turret_aa_truck");
    vehicle_registerturret(vehicle, turret, makeweapon(turret_weapon));
    return vehicle;
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x25e
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

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x2d3
// Size: 0x51
function private function_f812c0ad901b2d20() {
    leveldataforvehicle = vehomn_getleveldataforvehicle("veh_jup_truck_tech_aa", 1);
    leveldataforvehicle.rotationids[0] = 0;
    leveldataforvehicle.rotationrefsbyseatandweapon["gunner"][function_81d5780c8d74b92()] = 0;
    leveldataforvehicle.var_bd169af9b46727ef = 1;
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x32c
// Size: 0x93
function private function_1999c9c844035dc6(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (istrue(data.success)) {
        thread function_66ebf1a738fe7d5b(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
        return;
    }
    if (!istrue(data.playerdisconnect) && !istrue(data.playerdeath)) {
        if (seatid == "gunner") {
            turret_weapon = function_81d5780c8d74b92();
            thread vehicle_occupancy_taketurret(player, vehicle, turret_weapon, data, 1);
        }
    }
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x3c7
// Size: 0x62
function private function_66ebf1a738fe7d5b(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (seatid == "gunner") {
        turret_weapon = function_81d5780c8d74b92();
        player function_d764f933c0054e16(vehicle, turret_weapon, 850, 2200);
    }
    function_5004590331017d88(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x431
// Size: 0x46
function private function_949eb1c65673cd06(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (istrue(data.success)) {
        function_d911215a81a92b9b(vehicle, seatid, var_7558f98f3236963d, player, data);
    }
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x47f
// Size: 0x5d
function private function_d911215a81a92b9b(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (seatid == "gunner") {
        turret_weapon = function_81d5780c8d74b92();
        player function_99ec1e87f279f082(data, vehicle, turret_weapon);
    }
    function_cb4191526e56163c(vehicle, seatid, var_7558f98f3236963d, player, data);
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x4e4
// Size: 0x5a
function private function_6c47a47b31038e62(vehicle, var_9de41f2ee77c33ba, var_3f68c37bafd38606, player, data) {
    if (isdefined(var_3f68c37bafd38606) && var_3f68c37bafd38606 == "gunner") {
        turret_weapon = function_81d5780c8d74b92();
        thread vehicle_occupancy_taketurret(player, vehicle, turret_weapon, data, 1);
    }
}

// Namespace namespace_a147074f8889586e / namespace_ce23989dc4c45973
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x546
// Size: 0x37
function private function_81d5780c8d74b92() {
    turretweapon = function_2e58e7b01554419a("veh_jup_truck_tech_aa", "gunner");
    if (isdefined(turretweapon)) {
        return turretweapon.basename;
    }
    return "";
}

