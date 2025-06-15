// script_69342d6c299afdb8  (69342D6C299AFDB8.gscc) (size: 2652 Bytes / 0xa5c / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xcb9b3138 (3415945528)
// size ...... 2652 (0xa5c)
// includes .. 6   (offset: 0xdb)
// strings ... 11  (offset: 0x9b0)
// dev strs .. 0   (offset: 0xa5c)
// exports ... 11  (offset: 0x540)
// cseg ...... 0x10b + 0x435 (0x540)
// imports ... 24  (offset: 0x6f8)
// animtree1 . 0   (offset: 0xa5c)
// animtree2 . 0   (offset: 0xa5c)
#using scripts\common\utility;
#using scripts\cp_mp\utility\vehicle_omnvar_utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_d442866f161c611;

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 0, eflags: 0x1
// Checksum 0x0, Offset: 0x113
// Size: 0x1e
function autoexec main() {
    level.var_7bf42d565645a485 = 1;
    function_c0b3ddc9a6bdcc46("veh_jup_orav", &function_35ea3379640854ba);
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x139
// Size: 0x65
function private function_35ea3379640854ba() {
    if (!function_9697379150687859("veh_jup_orav")) {
        return;
    }
    callbacks = [];
    callbacks["spawn"] = &jup_orav_spawn;
    callbacks["enterEnd"] = &function_cd1063c51f2095cb;
    callbacks["exitEnd"] = &function_e78cf56b4fefc5bd;
    callbacks["reenter"] = &function_7f8905e7ccf8631;
    function_8497e7e46b5e397("veh_jup_orav", callbacks);
    function_e285398d3139ed59();
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x1a6
// Size: 0x72
function private jup_orav_spawn(spawndata, faildata) {
    function_cc9773b690da9dbd(spawndata);
    vehicle = function_bba34cf920370ff4("veh_jup_orav", spawndata, faildata);
    turret_weapon = function_9351d13c35d74e6d();
    turret = function_7d1a850ac1a81925(vehicle, turret_weapon, spawndata, "tag_turret_attach", "veh_jup_mil_buggy_orav_turret_mg");
    vehicle_registerturret(vehicle, turret, makeweapon(turret_weapon));
    return vehicle;
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x221
// Size: 0x6d
function private function_cc9773b690da9dbd(spawndata) {
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

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x296
// Size: 0x51
function private function_e285398d3139ed59() {
    leveldataforvehicle = vehomn_getleveldataforvehicle("veh_jup_orav", 1);
    leveldataforvehicle.rotationids[0] = 0;
    leveldataforvehicle.rotationrefsbyseatandweapon["gunner"][function_9351d13c35d74e6d()] = 0;
    leveldataforvehicle.var_bd169af9b46727ef = 1;
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x2ef
// Size: 0x93
function private function_cd1063c51f2095cb(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (istrue(data.success)) {
        thread function_56a7a8fdcaa5bf1a(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
        return;
    }
    if (!istrue(data.playerdisconnect) && !istrue(data.playerdeath)) {
        if (seatid == "gunner") {
            turret_weapon = function_9351d13c35d74e6d();
            thread vehicle_occupancy_taketurret(player, vehicle, turret_weapon, data, 1);
        }
    }
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x38a
// Size: 0x62
function private function_56a7a8fdcaa5bf1a(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (seatid == "gunner") {
        turret_weapon = function_9351d13c35d74e6d();
        player function_d764f933c0054e16(vehicle, turret_weapon, 850, 2200);
    }
    function_5004590331017d88(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x3f4
// Size: 0x46
function private function_e78cf56b4fefc5bd(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (istrue(data.success)) {
        function_625bc5b0746e2f18(vehicle, seatid, var_7558f98f3236963d, player, data);
    }
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x442
// Size: 0x5d
function private function_625bc5b0746e2f18(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (seatid == "gunner") {
        turret_weapon = function_9351d13c35d74e6d();
        player function_99ec1e87f279f082(data, vehicle, turret_weapon);
    }
    function_cb4191526e56163c(vehicle, seatid, var_7558f98f3236963d, player, data);
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x4a7
// Size: 0x5a
function private function_7f8905e7ccf8631(vehicle, var_9de41f2ee77c33ba, var_3f68c37bafd38606, player, data) {
    if (isdefined(var_3f68c37bafd38606) && var_3f68c37bafd38606 == "gunner") {
        turret_weapon = function_9351d13c35d74e6d();
        thread vehicle_occupancy_taketurret(player, vehicle, turret_weapon, data, 1);
    }
}

// Namespace namespace_d442866f161c611 / scripts\quaked\script_struct_mp_jup_orav
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x509
// Size: 0x37
function private function_9351d13c35d74e6d() {
    turretweapon = function_2e58e7b01554419a("veh_jup_orav", "gunner");
    if (isdefined(turretweapon)) {
        return turretweapon.basename;
    }
    return "";
}

