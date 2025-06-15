// script_6bc507afe7a93a3  (6BC507AFE7A93A3.gscc) (size: 1756 Bytes / 0x6dc / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x6266d63b (1650906683)
// size ...... 1756 (0x6dc)
// includes .. 9   (offset: 0x152)
// strings ... 6   (offset: 0x624)
// dev strs .. 0   (offset: 0x69c)
// exports ... 4   (offset: 0x3f8)
// cseg ...... 0x19a + 0x25e (0x3f8)
// imports ... 14  (offset: 0x498)
// animtree1 . 0   (offset: 0x69c)
// animtree2 . 4   (offset: 0x69c)
#using scripts\common\utility;
#using scripts\common\vehicle_build;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_compass;
#using scripts\cp_mp\vehicles\vehicle_damage;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\cp_mp\vehicles\vehicle_tracking;
#using scripts\engine\utility;

#namespace namespace_fd613a85da812eaa;

// Namespace namespace_fd613a85da812eaa / namespace_ea79ad160580b4e7
// Params 0
// Checksum 0x0, Offset: 0x1a2
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_blima", &function_6cb969a7647dc10f);
}

// Namespace namespace_fd613a85da812eaa / namespace_ea79ad160580b4e7
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1bd
// Size: 0x3d
function private function_6cb969a7647dc10f() {
    callbacks = [];
    callbacks["spawn"] = &function_41496c26b8d3660c;
    function_8497e7e46b5e397("veh9_blima", callbacks);
    if (utility::function_a10967d736dc56e5()) {
        scripts\common\vehicle_build::build_attach_models(&set_attached_models);
    }
}

// Namespace namespace_fd613a85da812eaa / namespace_ea79ad160580b4e7
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x202
// Size: 0xbc
function private function_41496c26b8d3660c(spawndata, faildata) {
    vehicle = function_bba34cf920370ff4("veh9_blima", spawndata, faildata);
    if (!isdefined(vehicle)) {
        return undefined;
    }
    if (istrue(spawndata.initai)) {
        vehicle.unload_hover_offset = 570;
        vehicle.unload_land_offset = 165;
        vehicle.script_badplace = 0;
        vehicle.vehiclesetuprope = 1;
        vehicle vehicle_setspeed(60, 20, 10);
        vehicle.preventrespawn = 1;
        vehicle.var_a8f4bb03b366aa80 = 1;
        vehicle.deathfunc = &vehicle_death;
        vehicle scripts\cp_mp\vehicles\vehicle_occupancy::function_a91927df280e94e4();
    }
    return vehicle;
}

// Namespace namespace_fd613a85da812eaa / namespace_ea79ad160580b4e7
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x2c7
// Size: 0x130
function private set_attached_models() {
    array = [];
    array["TAG_FastRope_LE"] = spawnstruct();
    array["TAG_FastRope_LE"].model = "equipment_fast_rope_wm_01_infil_heli_l";
    array["TAG_FastRope_LE"].tag = "body_animate_jnt";
    array["TAG_FastRope_LE"].idleanim = script_model#iw9_ai_infil_blima_rope_l_idle;
    array["TAG_FastRope_LE"].dropanim = script_model#iw9_ai_infil_blima_rope_l_drop;
    array["TAG_FastRope_RI"] = spawnstruct();
    array["TAG_FastRope_RI"].model = "equipment_fast_rope_wm_01_infil_heli_l";
    array["TAG_FastRope_RI"].tag = "body_animate_jnt";
    array["TAG_FastRope_RI"].idleanim = script_model#iw9_ai_infil_blima_rope_r_idle;
    array["TAG_FastRope_RI"].dropanim = script_model#iw9_ai_infil_blima_rope_r_drop;
    strings = getarraykeys(array);
    for (i = 0; i < strings.size; i++) {
        precachemodel(array[strings[i]].model);
    }
    return array;
}

