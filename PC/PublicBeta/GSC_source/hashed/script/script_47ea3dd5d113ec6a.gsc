// script_47ea3dd5d113ec6a  (47EA3DD5D113EC6A.gscc) (size: 1193 Bytes / 0x4a9 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x75fbbd74 (1979432308)
// size ...... 1193 (0x4a9)
// includes .. 4   (offset: 0xb9)
// strings ... 4   (offset: 0x45d)
// dev strs .. 0   (offset: 0x499)
// exports ... 5   (offset: 0x261)
// cseg ...... 0xd9 + 0x188 (0x261)
// imports ... 11  (offset: 0x329)
// animtree1 . 0   (offset: 0x499)
// animtree2 . 1   (offset: 0x499)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_fd9b98db526befab;

// Namespace namespace_fd9b98db526befab / scripts\quaked\script_struct_mp_jup_jltv
// Params 0, eflags: 0x1
// Checksum 0x0, Offset: 0xe1
// Size: 0x1e
function autoexec main() {
    level.var_7bf42d565645a485 = 1;
    function_c0b3ddc9a6bdcc46("veh_jup_jltv", &function_d3890e30943d672c);
}

// Namespace namespace_fd9b98db526befab / scripts\quaked\script_struct_mp_jup_jltv
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x107
// Size: 0x3c
function private function_d3890e30943d672c() {
    if (!function_9697379150687859("veh_jup_jltv")) {
        return;
    }
    if (utility::iscp()) {
        registersharedfunc("veh_jup_jltv", "create", &function_770292fe92b71912);
    }
    function_8497e7e46b5e397("veh_jup_jltv");
}

// Namespace namespace_fd9b98db526befab / scripts\quaked\script_struct_mp_jup_jltv
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x14b
// Size: 0x2d
function private function_770292fe92b71912(vehicle) {
    vehicle.vehicle_specific_onentervehicle = &function_f131c851f1c4e709;
    vehicle.vehicle_specific_onexitvehicle = &function_7b4a4367ee409795;
}

// Namespace namespace_fd9b98db526befab / scripts\quaked\script_struct_mp_jup_jltv
// Params 4, eflags: 0x4
// Checksum 0x0, Offset: 0x180
// Size: 0x91
function private function_f131c851f1c4e709(vehicle, var_7558f98f3236963d, player, data) {
    if (istrue(vehicle.door_open)) {
        vehicle vehicleplayanim(mp_vehicles_always_loaded#reb_com_veh8_techo_fl_door_close);
        vehicle.door_open = undefined;
    }
    if (istrue(level.var_d39df167f3a996b0)) {
        vehicle setscriptablepartstate("lights", "on");
    }
    if (isdefined(vehicle.var_f24cc3beef01650c)) {
        vehicle.var_1ab6b61153087915 = vehicle.var_f24cc3beef01650c;
    }
}

// Namespace namespace_fd9b98db526befab / scripts\quaked\script_struct_mp_jup_jltv
// Params 4, eflags: 0x4
// Checksum 0x0, Offset: 0x219
// Size: 0x48
function private function_7b4a4367ee409795(vehicle, var_7558f98f3236963d, player, data) {
    if (!istrue(data.playerdisconnect)) {
        player.isdrivingvehicle = undefined;
    }
    vehicle.var_1ab6b61153087915 = undefined;
}

