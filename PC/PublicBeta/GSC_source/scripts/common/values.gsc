// scripts\common\values.gsc  (3B64EB40368C1450.gscc) (size: 35999 Bytes / 0x8c9f / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xfdb6d885 (4256618629)
// size ...... 35999 (0x8c9f)
// includes .. 7   (offset: 0x8df)
// strings ... 143 (offset: 0x8097)
// dev strs .. 22  (offset: 0x8b6b)
// exports ... 145 (offset: 0x4693)
// cseg ...... 0x917 + 0x3d7c (0x4693)
// imports ... 285 (offset: 0x5d3b)
// animtree1 . 0   (offset: 0x8c9f)
// animtree2 . 0   (offset: 0x8c9f)
#using script_4a6760982b403bad;
#using scripts\asm\asm;
#using scripts\common\ai;
#using scripts\common\string;
#using scripts\common\system;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace val;

// Namespace val / scripts\common\values
// Params 0, eflags: 0x5
// Checksum 0x0, Offset: 0x91f
// Size: 0x19
function private autoexec __init__system__() {
    system::register(#"val", undefined, &pre_main, undefined);
}

// Namespace val / scripts\common\values
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x940
// Size: 0xd6e
function pre_main() {
    if (isdefined(level.var_750a82cea28f2f13)) {
        return;
    }
    level.var_750a82cea28f2f13 = 1;
    register("breath_system", 1, 0, "$self", &function_ff6d5864f8680d5e, "$value");
    register("damage", 1, 0, "$self", &function_a49123f94edb0267, "$value");
    register("death", 1, 0, "$self", &function_613f82ecdf9b56b8, "$value");
    register("damageshield", 0, 1, "$self", &function_8aba0b6af3dcb0ef, "$value");
    register("ignoresuppression", 0, 1, "$self", &function_9e8589036c3fd37e, "$value");
    register("whizby", 1, 0);
    register("ignoreme", 0, 1, "$self", &function_2553e8f1e80d32a9, "$value");
    register("ignoreall", 0, 1, "$self", &function_d3eeff01d5db508a, "$value");
    register("take_weapons", 0, 1, "$self", &set_takeweapons, "$value");
    register("weapon", 1, 0, "$self", &function_945a9012be94d89b, "$value");
    register("weapon_switch", 1, 0, "$self", &function_271781b97a830b8f, "$value");
    register("weapon_switch_clip", 1, 0, "$self", &function_cbbbe022b06a2d09, "$value");
    register("script_weapon_switch", 0, 1);
    register("reload", 1, 0, "$self", &function_6a7974bc3033866f, "$value");
    register("weapon_pickup", 1, 0, "$self", &function_ac139cd4bd7d232e, "$value");
    register("fire", 1, 0, "$self", &function_cda8ef3bebb4e3ee, "$value");
    register("autoreload", 1, 0, "$self", &function_1155b13235411eec, "$value");
    register("weapon_first_raise_anims", 1, 0, "$self", &function_782c9cfc7f78e416, "$value");
    register("offhand_weapons", 1, 0, "$self", &function_8fdf6df702996fa7, "$value");
    if (!isdefined(level.ismp) || level.ismp == 0) {
        link("offhand_weapons", "offhand_shield_weapons");
    }
    register("offhand_primary_weapons", 1, 0, "$self", &function_47279b5d7e2bcef3, "$value");
    register("offhand_secondary_weapons", 1, 0, "$self", &function_c8f662a90251117, "$value");
    link("offhand_secondary_weapons", "offhand_shield_weapons");
    register("offhand_shield_weapons", 1, 0, "$self", &function_f61d010ff82a69da, "$value");
    register("offhand_throwback", 1, 0, "$self", &function_54a3481116d62f02, "$value");
    register("allow_offhand_special", 1, 0, "$self", &function_8493479decad7dea, "$value");
    register("allow_aim_assist", 1, 0, "$self", &function_4e24d3eb9687a667, "$value");
    register("usability", 1, 0, "$self", &function_586996315a6703b0, "$value");
    register("freezecontrols", 0, 1, "$self", &function_15cc9bfda3c4adee, "$value");
    register("freezecontrols_allowlook", 0, 1, "$self", &function_9a6ef6fcc3e3c652, "$value");
    register("hide", 0, 1, "$self", &set_hide, "$value");
    register("health_regen", 1, 0, "$self", &set_health_regen, "$value");
    register("allow_health_regen_delay", 1, 0, "$self", &function_1140c973aa64c8d6, "$value");
    register("ignore_health_regen_delay", 0, 1, "$self", &set_ignore_health_regen_delay, "$value");
    register("stealth_social_reveal", 0, 1, "$self", &function_d4513b1bc21601, "$value");
    register("show_hud", 1, 0, "$self", &function_688748c7477e93dc, "$value");
    register("show_weapon_hud", 1, 0, "$self", &function_8b2fc23241e6448b, "$value");
    register("show_dpad_hud", 1, 0, "$self", &function_147fe8bda5949cf2, "$value");
    register("allow_jump", 1, 0, "$self", &set_allowjump, "$value");
    register("allow_double_jump", 1, 0, "$self", &function_5d8c973a5b6b05d8, "$value");
    register("crouch", 1, 0, "$self", &set_allowcrouch, "$value");
    register("prone", 1, 0, "$self", &set_allowprone, "$value");
    register("stance_change", 1, 0, "$self", &function_c8e47b79550e4319, "$value");
    register("melee", 1, 0, "$self", &set_allowmelee, "$value");
    register("lean", 1, 0, "$self", &function_1e949110ce628e51, "$value");
    register("allow_melee_victim", 1, 0, "$self", &allow_melee_victim, "$value");
    register("mantle", 1, 0, "$self", &function_b3870b9ec763d70a, "$value");
    register("mount_top", 1, 0, "$self", &function_9b5befbb13ad7651, "$value");
    register("mount_side", 1, 0, "$self", &function_aac726af48296365, "$value");
    register("sprint", 1, 0, "$self", &set_allowsprint, "$value");
    register("jog", 1, 0, "$self", &function_2a827539b0ee61b7, "$value");
    register("ads", 1, 0, "$self", &set_allowads, "$value");
    register("stand", 1, 0, "$self", &set_allowstand, "$value");
    register("allow_movement", 1, 0, "$self", &set_allowmovement, "$value");
    register("ladder", 1, 0, "$self", &function_f3b4bc17c87adba5, "$value");
    register("swimming_underwater", 1, 0, "$self", &function_880120db350a6425, "$value");
    register("dtp", 1, 0, "$self", &function_d13b7a396eab0463, "$value");
    register("move_speed_scale", 1, 1, "$self", &function_46eda303c0fa6322, "$value");
    register("desired_speed", 0, 0, "$self", &set_desiredspeed, "$value");
    register("goalradius", 2048, 2048, "$self", &function_a93b95cf50f8c3c9, "$value");
    register("push_player", 0, 1, "$self", &set_pushplayer, "$value");
    register("skip_death", 0, 1, "$self", &function_397bdae9676d99b2, "$value");
    register("skip_scene_death", 0, 1, "$self", &function_c7cacbe604c9200d, "$value");
    register("supers", 1, 0, "$self", &function_ee3a42d7c6b37fe, "$value");
    register("wallrun", 1, 0, "$self", &function_98e071a6cc904543, "$value");
    register("doublejump", 1, 0, "$self", &function_156a6ef9e8bb6f63, "$value");
    register("slide", 1, 0, "$self", &function_60e7c22bac17f22f, "$value");
    register("execution_attack", 1, 0, "$self", &function_5e4e727a591c079d, "$value");
    register("execution_victim", 1, 0, "$self", &function_eb0398e7c2c3c055, "$value");
    register("vehicle_use", 1, 0, "$self", &function_e62e9efd7d1bf0da, "$value");
    register("vehicle_lean_out", 1, 0, "$self", &function_798a407672c35e3c, "$value");
    register("vehicle_seat_switch", 1, 0, "$self", &function_2a5481b1da502117, "$value");
    register("nvg", 1, 0, "$self", &function_7edde3ba90d9a36, "$value");
    register("spotter_scope", 1, 0, "$self", &function_2a4de4fe3103d24c, "$value");
    register("supersprint", 1, 0, "$self", &function_65fb0f9b12a90f29, "$value");
    register("shellshock", 1, 0, "$self", &function_3368e1d4052b1596, "$value");
    register("cinematic_motion", 1, 0, "$self", &function_ea01b65c909b99d2, "$value");
    register("armor", 1, 0, "$self", &function_293669b3b38c7221, "$value");
    register("door_frozen", 0, 1, "$self", &function_2937a757c6689fb3, "$value");
    register("interactions", 1, 0, "$self", &function_cbdfe6762b367d1b, "$value");
    register("action_slot_weapon", 1, 0, "$self", &function_dc9ce02e5a3bd6da, "$value");
    register("equipment_primary", 1, 0, "$self", &function_dd8e7fdce5f0dcff, "$value");
    register("equipment_secondary", 1, 0, "$self", &function_2b70e9743c9a71b, "$value");
    register("overlord_locked_priority", 0, 0, "$self", &function_f8b197beec8e9945, "$value");
    register("backpack_inventory", 1, 0, "$self", &function_4a0c36c985cc4a03, "$value");
    register("tacmap_scoreboard", 1, 0, "$self", &function_d093a1b1e1c340a3, "$value");
    register("demeanor", "", "", "$self", &set_demeanor, "$value");
    register("pain", 1, 0, "$self", &function_e839d0e33e07c756, "$value");
    register("infinite_ammo", 0, 1, "$self", &function_15b077dbaf3b063f, "$value");
    register("kill_on_damage", 0, 0, "$self", &function_7f308a0cfa036a48, "$value");
    register("hide_operator_backpack", 0, 1, "$self", &function_cfb80f3b8aad230, "$value");
    register("show_operator_pet", 1, 0, "$self", &function_9c9b518e967a4514, "$value");
    register("allow_give_super_point", 1, 1, "$self", &function_fc93ada8ce1701fe, "$value");
    register("pause_zombie_spawning", 0, 0, "$self", &function_3718505d535c6113, "$value");
    register("show_healthbar", 1, 1, "$self", &function_10613d0755b1655, "$value");
    register("attackeraccuracy", 1, 1, "$self", &function_ff795a8bf33046c1, "$value");
    register("ascender_use", 1, 0);
    register("crate_use", 1, 0);
    register("cough_gesture", 1, 0);
    register("ladder_placement", 1, 0);
    register("killstreaks", 1, 0);
    register("cp_munitions", 1, 0);
    register("cp_munitions_pickup", 1, 0);
    register("one_hit_melee_victim", 1, 0);
    register("flashed", 1, 0);
    register("stunned", 1, 0);
    register("stick_kill", 1, 0);
    register("unresolved_collisions", 1, 0);
    register("equipment_wheel", 1, 0, "$self", &function_1bc52d1afc4d1b95, ["equipment_wheel", "$value"]);
    register("disallow_knockdown", 0, 1, "$self", &function_4c8f023af26b4a8a, "$value");
    register("disallow_stun", 0, 1, "$self", &function_db2848cc88d5a336, "$value");
    register("ignore_ai_collision", 0, 1, "$self", &function_b0146ba0c8f08192, "$value");
    register("spy_cam", 1, 0, "$self", &function_1bc52d1afc4d1b95, ["spy_cam", "$value"]);
    register("ammomod_immune", 0, 1, "$self", &function_d549cfeb2ed5d5e2, "$value");
    register("allow_dismember", 1, 0, "$self", &function_b010672d21d0fdb1, "$value");
    register("cinematics_participant", 0, 1, "$self", &function_83f16f4f6bc886b2, "$value");
    /#
        level thread debug_values();
        validate("<dev string:x1c>", "<dev string:x23>", &function_1d19c0b0f63836bf);
        validate("<dev string:x29>", "<dev string:x23>", &function_c4d1d331dd972e60);
        validate("<dev string:x2f>", "<dev string:x23>", &function_b07da66c065f9ef7);
    #/
}

// Namespace val / scripts\common\values
// Params 6, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x16b6
// Size: 0xe4
function register(str_name, default_value, var_8f2a3de49e1f0527, call_on, func, args) {
    assert(isstring(str_name));
    if (!isdefined(level.values)) {
        level.values = [];
    }
    if (isdefined(level.values[str_name])) {
        assertmsg("Value '" + str_name + "' already registered.");
        return;
    }
    if (isdefined(args)) {
        if (!isarray(args)) {
            args = [args];
        }
    } else {
        args = [];
    }
    level.values[str_name] = {#a_args:args, #var_8f2a3de49e1f0527:var_8f2a3de49e1f0527, #default_value:default_value, #func:func, #call_on:call_on, #str_name:str_name};
}

// Namespace val / scripts\common\values
// Params 1
// Checksum 0x0, Offset: 0x17a2
// Size: 0x23
function unregister(str_name) {
    if (isdefined(level.values)) {
        level.values[str_name] = undefined;
    }
}

// Namespace val / scripts\common\values
// Params 2
// Checksum 0x0, Offset: 0x17cd
// Size: 0x43
function group_register(group_name, value_names) {
    /#
        thread function_15421e5286d72ec3(value_names);
    #/
    if (!isdefined(level.value_groups)) {
        level.value_groups = [];
    }
    level.value_groups[group_name] = value_names;
}

/#

    // Namespace val / scripts\common\values
    // Params 1, eflags: 0x4
    // Checksum 0x0, Offset: 0x1818
    // Size: 0x58, Type: dev
    function private function_15421e5286d72ec3(value_names) {
        waitframe();
        foreach (val_name in value_names) {
            assert_registered(val_name);
        }
    }

#/

// Namespace val / scripts\common\values
// Params 2
// Checksum 0x0, Offset: 0x1878
// Size: 0x5e
function group_set(group_name, value) {
    assertex(isdefined(level.value_groups[group_name]), "<dev string:x3c>" + group_name + "<dev string:x69>");
    str_id = "_group_" + group_name;
    set_array(str_id, level.value_groups[group_name], value);
}

// Namespace val / scripts\common\values
// Params 1
// Checksum 0x0, Offset: 0x18de
// Size: 0x25
function group_reset(group_name) {
    str_id = "_group_" + group_name;
    reset_all(str_id);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x190b
// Size: 0x37, Type: bool
function private assert_registered(str_name) {
    /#
        if (!isdefined(level.values[str_name])) {
            assertmsg("<dev string:x6b>" + str_name + "<dev string:x73>");
            return false;
        }
    #/
    return true;
}

// Namespace val / scripts\common\values
// Params 4
// Checksum 0x0, Offset: 0x194b
// Size: 0x89
function default_func(str_name, call_on, value, args) {
    if (assert_registered(str_name)) {
        if (isdefined(args) && !isarray(args)) {
            args = [args];
        }
        if (!isdefined(args)) {
            args = [];
        }
        s_value = level.values[str_name];
        s_value.default_call_on = call_on;
        s_value.default_value = value;
        s_value.default_args = args;
    }
}

// Namespace val / scripts\common\values
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x19dc
// Size: 0x94
function link(str_name, var_4d81048fd967e05, func) {
    if (assert_registered(str_name)) {
        s_value = level.values[str_name];
        new_link = spawnstruct();
        new_link.name = var_4d81048fd967e05;
        new_link.func = func;
        if (!isdefined(new_link.func)) {
            new_link.func = &simple_link;
        }
        s_value.links[var_4d81048fd967e05] = new_link;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x1a78
// Size: 0xc
function private simple_link(b_value) {
    return b_value;
}

// Namespace val / scripts\common\values
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1a8d
// Size: 0xe7
function set(str_id, str_name, value) {
    if (assert_registered(str_name)) {
        if (!isdefined(value)) {
            value = level.values[str_name].var_8f2a3de49e1f0527;
        }
        push_value(str_id, str_name, value);
        set_value(str_name, value);
    }
    if (isarray(level.values[str_name].links)) {
        foreach (s_link in level.values[str_name].links) {
            set(str_id, s_link.name, [[ s_link.func ]](value));
        }
    }
}

// Namespace val / scripts\common\values
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1b7c
// Size: 0x66
function set_array(str_id, var_d1450ef5ee023044, value) {
    foreach (str_name in var_d1450ef5ee023044) {
        set(str_id, str_name, value);
    }
}

// Namespace val / scripts\common\values
// Params 2
// Checksum 0x0, Offset: 0x1bea
// Size: 0x5d
function reset_array(str_id, var_d1450ef5ee023044) {
    foreach (str_name in var_d1450ef5ee023044) {
        reset(str_id, str_name);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1c4f
// Size: 0x8e
function get(str_name) {
    if (assert_registered(str_name)) {
        if (isdefined(self.values) && isdefined(self.values[str_name])) {
            n_index = self.values[str_name].size - 1;
            if (n_index >= 0 && isdefined(self.values[str_name][n_index].value)) {
                return self.values[str_name][n_index].value;
            }
        }
        return get_default(str_name);
    }
}

// Namespace val / scripts\common\values
// Params 2
// Checksum 0x0, Offset: 0x1ce5
// Size: 0x21
function set_radiant(str_name, value) {
    set("radiant", str_name, value);
}

// Namespace val / scripts\common\values
// Params 4
// Checksum 0x0, Offset: 0x1d0e
// Size: 0x3f
function set_for_time(n_time, str_id, str_name, value) {
    self endon("death");
    set(str_id, str_name, value);
    wait n_time;
    reset(str_id, str_name);
}

// Namespace val / scripts\common\values
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1d55
// Size: 0x108
function reset(str_id, str_name) {
    n_index = remove_value(str_id, str_name);
    if (!n_index) {
        if (isdefined(self.values) && isdefined(self.values[str_name]) && self.values[str_name].size > 0) {
            set_value(str_name, self.values[str_name][0].value);
        } else {
            set_default(str_name);
        }
    }
    if (isarray(level.values[str_name].links)) {
        foreach (s_link in level.values[str_name].links) {
            reset(str_id, s_link.name);
        }
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1e65
// Size: 0xe0
function reset_all(str_id) {
    if (!isdefined(self.values)) {
        return;
    }
    valuescopy = arraycopy(self.values);
    foreach (valuestates in valuescopy) {
        foreach (state in valuestates) {
            if (isdefined(state.str_id) && state.str_id == str_id) {
                reset(str_id, valuekey);
            }
        }
    }
}

// Namespace val / scripts\common\values
// Params 1
// Checksum 0x0, Offset: 0x1f4d
// Size: 0x18
function reset_radiant(str_name) {
    reset("radiant", str_name);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1f6d
// Size: 0x20
function nuke(str_name) {
    self.values[str_name] = [];
    set_default(str_name);
}

// Namespace val / scripts\common\values
// Params 0
// Checksum 0x0, Offset: 0x1f95
// Size: 0xab
function nuke_all() {
    if (!isdefined(self.values)) {
        return;
    }
    var_9c45b28e12994e8f = [];
    foreach (str_name, value in self.values) {
        var_9c45b28e12994e8f[var_9c45b28e12994e8f.size] = str_name;
    }
    foreach (str_name in var_9c45b28e12994e8f) {
        nuke(str_name);
    }
}

// Namespace val / scripts\common\values
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2048
// Size: 0xaf
function private push_value(str_id, str_name, value) {
    assert(isstring(str_id));
    remove_value(str_id, str_name);
    if (!isdefined(self.values)) {
        self.values = [];
    }
    if (!isdefined(self.values[str_name])) {
        self.values[str_name] = [];
    }
    new_value = spawnstruct();
    new_value.str_id = str_id;
    new_value.value = value;
    self.values[str_name] = utility::array_insert(self.values[str_name], new_value, 0);
}

// Namespace val / scripts\common\values
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x20ff
// Size: 0xda
function private remove_value(str_id, str_name) {
    if (!isdefined(self)) {
        return -1;
    }
    n_index = undefined;
    if (isdefined(self.values) && isdefined(self.values[str_name])) {
        for (n_index = self.values[str_name].size - 1; n_index >= 0; n_index--) {
            if (self.values[str_name][n_index].str_id == str_id) {
                self.values[str_name] = utility::array_remove_index(self.values[str_name], n_index);
                break;
            }
        }
        if (!self.values[str_name].size) {
            self.values[str_name] = undefined;
            if (!self.values.size) {
                self.values = undefined;
            }
        }
    }
    return utility::ter_op(isdefined(n_index), n_index, -1);
}

// Namespace val / scripts\common\values
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x21e2
// Size: 0xb1
function private set_value(str_name, value) {
    s_value = level.values[str_name];
    if (isdefined(s_value)) {
        s_value.value = value;
        if (isdefined(s_value.func)) {
            call_on = utility::ter_op(isstring(s_value.call_on) && s_value.call_on == "$self", self, s_value.call_on);
            utility::single_func_argarray(call_on, s_value.func, replace_values(s_value.a_args, value));
        }
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x229b
// Size: 0xcd
function private get_default(str_name) {
    default_value = undefined;
    s_value = level.values[str_name];
    if (isdefined(s_value) && isdefined(s_value.default_value)) {
        if (isfunction(s_value.default_value)) {
            call_on = utility::ter_op(isstring(s_value.default_call_on) && s_value.default_call_on == "$self", self, s_value.default_call_on);
            default_value = utility::single_func_argarray(call_on, s_value.default_value, replace_values(s_value.default_args));
        } else {
            default_value = s_value.default_value;
        }
    }
    return default_value;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2371
// Size: 0x2b
function private set_default(str_name) {
    default_value = get_default(str_name);
    if (isdefined(default_value)) {
        set_value(str_name, default_value);
    }
}

// Namespace val / scripts\common\values
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x23a4
// Size: 0x72
function private function_32efb357c319abf0(array, str_value, replacement) {
    foreach (val in array) {
        if (isstring(val) && val == str_value) {
            array[i] = replacement;
        }
    }
    return array;
}

// Namespace val / scripts\common\values
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x241f
// Size: 0x37
function private replace_values(a_args, value) {
    if (isdefined(a_args)) {
        a_args = function_32efb357c319abf0(a_args, "$self", self);
        a_args = function_32efb357c319abf0(a_args, "$value", value);
    }
    return a_args;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x245f
// Size: 0x71
function private function_a49123f94edb0267(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (isplayer(self)) {
        if (utility::issp()) {
            if (b_value) {
                self disableinvulnerability();
            } else {
                self enableinvulnerability();
            }
        } else if (istrue(level.var_a12c755dc79cd6f3)) {
            self.takedamage = b_value;
        } else {
            /#
                iprintln("<dev string:x85>");
            #/
        }
        return;
    }
    self setcandamage(b_value);
}

// Namespace val / scripts\common\values
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x24d8
// Size: 0x1d
function private function_1d19c0b0f63836bf() {
    if (isplayer(self)) {
        return !self isinvulnerable();
    }
    return self function_89db472b36958666();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x24fd
// Size: 0x3a
function private function_613f82ecdf9b56b8(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (isdefined(self.deathshieldfunc)) {
        self [[ self.deathshieldfunc ]](!b_value);
    }
    self.allowdeath = b_value;
}

// Namespace val / scripts\common\values
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x253f
// Size: 0xb
function private function_c4d1d331dd972e60() {
    return self.allowdeath;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2553
// Size: 0x1f
function private function_8aba0b6af3dcb0ef(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self.damageshield = b_value;
}

// Namespace val / scripts\common\values
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x257a
// Size: 0xb
function private function_b07da66c065f9ef7() {
    return self.damageshield;
}

// Namespace val / scripts\common\values
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x258e
// Size: 0x8
function private function_564dce69848aceaa() {
    return self islookcontrolsfrozen();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x259f
// Size: 0x1e
function private function_9e8589036c3fd37e(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self.ignoresuppression = b_value;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x25c5
// Size: 0x76
function private set_takeweapons(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (isplayer(self)) {
        assertmsg("set_takeweapons not implemented for players");
        return;
    }
    if (b_value) {
        ai::gun_remove();
        if (isdefined(anim.var_c65f21298ce83c9c)) {
            self [[ anim.var_c65f21298ce83c9c ]]();
        }
        return;
    }
    ai::gun_recall();
    if (isdefined(anim.var_f240ef0c84eac2b2)) {
        self [[ anim.var_f240ef0c84eac2b2 ]]();
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2643
// Size: 0x7a
function private function_945a9012be94d89b(value) {
    if (!isdefined(value)) {
        value = 0;
    }
    if (value != 1) {
        self disableweapons(isnumber(value) && value == -1 ? 1 : 0);
        if (isdefined(level.allow_weapon_mp)) {
            self [[ level.allow_weapon_mp ]](0);
        }
        return;
    }
    self enableweapons();
    if (isdefined(level.allow_weapon_mp)) {
        self [[ level.allow_weapon_mp ]](1);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x26c5
// Size: 0x29
function private function_271781b97a830b8f(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableweaponswitch();
        return;
    }
    self disableweaponswitch();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x26f6
// Size: 0x2c
function private function_cbbbe022b06a2d09(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self disableemptyclipweaponswitch(0);
        return;
    }
    self disableemptyclipweaponswitch(1);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x272a
// Size: 0x2c
function private function_cda8ef3bebb4e3ee(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self allowfire(1);
        return;
    }
    self allowfire(0);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x275e
// Size: 0x89
function private function_6a7974bc3033866f(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value != 1) {
        self allowreload(0);
        if (b_value != -1) {
            self cancelreload();
            var_5814d27874b48e54 = spawnstruct();
            var_5814d27874b48e54.player = self;
            var_5814d27874b48e54.cancelreason = "ENTER_VEHICLE";
            var_5814d27874b48e54.reloadcanceltime = getsystemtimeinmicroseconds();
            namespace_c45ac99c4997e722::function_80820d6d364c1836("callback_on_reload_cancel", var_5814d27874b48e54);
        }
        return;
    }
    self allowreload(1);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x27ef
// Size: 0x29
function private function_ac139cd4bd7d232e(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableweaponpickup();
        return;
    }
    self disableweaponpickup();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2820
// Size: 0x29
function private function_1155b13235411eec(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableautoreload();
        return;
    }
    self disableautoreload();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2851
// Size: 0x29
function private function_8fdf6df702996fa7(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableoffhandweapons();
        return;
    }
    self disableoffhandweapons();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2882
// Size: 0x29
function private function_47279b5d7e2bcef3(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableoffhandprimaryweapons();
        return;
    }
    self disableoffhandprimaryweapons();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x28b3
// Size: 0x29
function private function_c8f662a90251117(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableoffhandsecondaryweapons();
        return;
    }
    self disableoffhandsecondaryweapons();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x28e4
// Size: 0x1c
function private function_f61d010ff82a69da(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self allowoffhandshieldweapons(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2908
// Size: 0x2a
function private function_54a3481116d62f02(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (b_value) {
        self enableoffhandthrowback();
        return;
    }
    self disableoffhandthrowback();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x293a
// Size: 0x19
function private function_8493479decad7dea(b_value) {
    assertmsg("set_allow_offhand_special not implemented");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x295b
// Size: 0x48
function private function_4e24d3eb9687a667(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    assert(!isdefined(level.ismp) || level.ismp == 0);
    setsaveddvar(@"aim_assist_script_disable", !b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x29ab
// Size: 0x29
function private function_586996315a6703b0(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableusability();
        return;
    }
    self disableusability();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x29dc
// Size: 0x1f
function private function_2553e8f1e80d32a9(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self.ignoreme = b_value;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2a03
// Size: 0x1f
function private function_d3eeff01d5db508a(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self.ignoreall = b_value;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x2a2a
// Size: 0x40
function private function_ae5bbceb3d29efe6(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    assert(isplayer(self));
    if (b_value) {
        self.nohitmarkers = undefined;
        return;
    }
    self.nohitmarkers = 1;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2a72
// Size: 0x3b
function private set_hide(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (b_value) {
        if (b_value == 1) {
            self hide();
        } else {
            self hide();
        }
        return;
    }
    self show();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2ab5
// Size: 0x31
function private set_health_regen(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (b_value) {
        self.disable_health_regen = undefined;
        return;
    }
    self.disable_health_regen = 1;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2aee
// Size: 0x30
function private function_1140c973aa64c8d6(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self.disable_health_regen_delay = undefined;
        return;
    }
    self.disable_health_regen_delay = 1;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2b26
// Size: 0x31
function private set_ignore_health_regen_delay(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (b_value) {
        self.ignore_health_regen_delay = 1;
        return;
    }
    self.ignore_health_regen_delay = 0;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2b5f
// Size: 0x8b
function private function_a93b95cf50f8c3c9(val) {
    if (isdefined(val)) {
        self.goalradius = val;
        return;
    }
    if (isdefined(self.radius)) {
        self.goalradius = float(self.radius);
        return;
    }
    if (isdefined(self.spawner.radius)) {
        self.goalradius = float(self.spawner.radius);
        return;
    }
    self.goalradius = 2048;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2bf2
// Size: 0x28
function private function_397bdae9676d99b2(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self.skipdeath = utility::ter_op(b_value, 1, 0);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2c22
// Size: 0x28
function private function_c7cacbe604c9200d(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self.skipscenedeath = utility::ter_op(b_value, 1, undefined);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2c52
// Size: 0x13
function private function_ff6d5864f8680d5e(b_allow) {
    self enableplayerbreathsystem(b_allow);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2c6d
// Size: 0x13
function private function_15cc9bfda3c4adee(b_freeze) {
    self freezecontrols(b_freeze);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2c88
// Size: 0x13
function private function_9a6ef6fcc3e3c652(b_freeze) {
    self freezelookcontrols(b_freeze);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2ca3
// Size: 0x4e
function private function_d4513b1bc21601(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (!utility::ent_flag_exist("stealth_social_reveal")) {
        utility::ent_flag_init("stealth_social_reveal");
    }
    if (b_value) {
        utility::ent_flag_set("stealth_social_reveal");
        return;
    }
    utility::ent_flag_clear("stealth_social_reveal");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2cf9
// Size: 0x26
function private function_688748c7477e93dc(b_value) {
    if (b_value) {
        b_value = 0;
    } else {
        b_value = 1;
    }
    self setclientomnvar("ui_hide_hud", b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2d27
// Size: 0x26
function private function_8b2fc23241e6448b(b_value) {
    if (b_value) {
        b_value = 0;
    } else {
        b_value = 1;
    }
    self setclientomnvar("ui_hide_weapon_info", b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2d55
// Size: 0x26
function private function_147fe8bda5949cf2(b_value) {
    if (b_value) {
        b_value = 0;
    } else {
        b_value = 1;
    }
    self setclientomnvar("ui_hide_dpad_hud", b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2d83
// Size: 0x28
function private allow_melee_victim(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self.canbemeleed = utility::ter_op(b_value, 1, 0);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2db3
// Size: 0x1d
function private set_allowjump(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowjump(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2dd8
// Size: 0x1d
function private function_5d8c973a5b6b05d8(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowdoublejump(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2dfd
// Size: 0x1d
function private set_allowcrouch(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowcrouch(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2e22
// Size: 0x1d
function private set_allowprone(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowprone(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2e47
// Size: 0xf8
function private function_c8e47b79550e4319(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (b_value) {
        self allowstand(1);
        self allowcrouch(1);
        self allowprone(1);
        return;
    }
    current = self getstance();
    foreach (stance in array_remove(["stand", "crouch", "prone"], current)) {
        switch (stance) {
        case #"hash_c6775c88e38f7803":
            self allowstand(0);
            break;
        case #"hash_3fed0cbd303639eb":
            self allowcrouch(0);
            break;
        case #"hash_d91940431ed7c605":
            self allowprone(0);
            break;
        }
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2f47
// Size: 0x1d
function private set_allowmelee(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowmelee(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2f6c
// Size: 0x1c
function private function_1e949110ce628e51(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self allowlean(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2f90
// Size: 0x1d
function private function_b3870b9ec763d70a(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowmantle(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2fb5
// Size: 0x1c
function private function_9b5befbb13ad7651(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self allowmounttop(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2fd9
// Size: 0x1c
function private function_aac726af48296365(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self allowmountside(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2ffd
// Size: 0x1d
function private set_allowsprint(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowsprint(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3022
// Size: 0x1d
function private function_2a827539b0ee61b7(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowjog(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3047
// Size: 0x1d
function private set_allowstand(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowstand(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x306c
// Size: 0x1d
function private set_allowmovement(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowmovement(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3091
// Size: 0x1d
function private function_f3b4bc17c87adba5(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowladder(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x30b6
// Size: 0x1d
function private function_880120db350a6425(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self function_f484b2c51e0d6f5e(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x30db
// Size: 0x1d
function private function_d13b7a396eab0463(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowdive(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3100
// Size: 0x3a
function private function_46eda303c0fa6322(val) {
    if (!isdefined(val)) {
        val = 1;
    }
    if (isai(self)) {
        asm::asm_setmoveplaybackrate(val);
        return;
    }
    if (isplayer(self)) {
        self setmovespeedscale(val);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3142
// Size: 0x45
function private set_desiredspeed(val) {
    if (!isdefined(val)) {
        val = 0;
    }
    if (!isai(self)) {
        assertmsg("VAL_DESIRED_SPEED can only be used on AI entities");
        return;
    }
    if (val > 0) {
        self aisetdesiredspeed(val);
        return;
    }
    self aiclearscriptdesiredspeed(val);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x318f
// Size: 0x1d
function private set_pushplayer(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self pushplayer(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x31b4
// Size: 0x31
function private function_ee3a42d7c6b37fe(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self enableoffhandspecialweapons();
        return;
    }
    self disableoffhandspecialweapons();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x31ed
// Size: 0x91
function private function_cfb80f3b8aad230(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        if (self tagexists("TAG_STOWED_BACKPACK_HIDE")) {
            if (!isdefined(self.operatorcustomization) || !isdefined(self.operatorcustomization.body) || self.operatorcustomization.body != "body_mp_gus_iw9_1_1") {
                self hidepart("TAG_STOWED_BACKPACK_HIDE");
            }
        }
        return;
    }
    if (self tagexists("TAG_STOWED_BACKPACK_HIDE")) {
        self showpart("TAG_STOWED_BACKPACK_HIDE");
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3286
// Size: 0x1d
function private function_9c9b518e967a4514(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self function_360aa68e9d2fc8d3(!b_value, self);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x32ab
// Size: 0x1c
function private function_98e071a6cc904543(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self allowwallrun(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x32cf
// Size: 0x94
function private function_156a6ef9e8bb6f63(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self energy_setenergy(0, self.doublejumpenergy);
        self energy_setrestorerate(0, self.doublejumpenergyrestorerate);
        self.doublejumpenergy = undefined;
        self.doublejumpenergyrestorerate = undefined;
        self allowdoublejump(1);
        return;
    }
    self.doublejumpenergy = self energy_getenergy(0);
    self.doublejumpenergyrestorerate = self energy_getrestorerate(0);
    self energy_setenergy(0, 0);
    self energy_setrestorerate(0, 0);
    self allowdoublejump(0);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x336b
// Size: 0x1c
function private function_60e7c22bac17f22f(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self allowslide(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x338f
// Size: 0x35
function private function_5e4e727a591c079d(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self [[ level.enableexecutionattackfunc ]]();
        return;
    }
    self [[ level.disableexecutionattackfunc ]]();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x33cc
// Size: 0x35
function private function_eb0398e7c2c3c055(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self [[ level.enableexecutionvictimfunc ]]();
        return;
    }
    self [[ level.disableexecutionvictimfunc ]]();
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3409
// Size: 0x1c
function private function_e62e9efd7d1bf0da(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    vehicle_allowplayeruse(self, b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x342d
// Size: 0x1c
function private function_798a407672c35e3c(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self function_681750c19a6216ca(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3451
// Size: 0x27
function private function_2a5481b1da502117(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self.var_ea02a8bfcfde7c4b = utility::ter_op(b_value, undefined, 1);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3480
// Size: 0x77
function private function_7edde3ba90d9a36(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    var_c7b3c8374684b876 = 2;
    if (b_value) {
        if (!isai(self)) {
            self setactionslot(var_c7b3c8374684b876, "nightvision");
            if (utility::iscp()) {
                self function_b1e64d364cf55b73(1);
            }
        }
        return;
    }
    if (!isai(self)) {
        self setactionslot(var_c7b3c8374684b876, "");
        if (utility::iscp()) {
            self function_b1e64d364cf55b73(0);
        }
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x34ff
// Size: 0x42
function private function_2a4de4fe3103d24c(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        if (!isai(self)) {
            self.var_24e9ac46ba2ec580 = undefined;
        }
        return;
    }
    if (!isai(self)) {
        self.var_24e9ac46ba2ec580 = 1;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3549
// Size: 0x1c
function private function_65fb0f9b12a90f29(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self allowsupersprint(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x356d
// Size: 0x4f
function private function_3368e1d4052b1596(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        if (isdefined(level.enableshellshockfunc)) {
            self [[ level.enableshellshockfunc ]]();
        }
        return;
    }
    if (isdefined(level.disableshellshockfunc)) {
        self [[ level.disableshellshockfunc ]]();
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x35c4
// Size: 0x4e
function private function_ea01b65c909b99d2(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        if (isdefined(self.cinematicmotionoverride)) {
            self setcinematicmotionoverride(self.cinematicmotionoverride);
        } else {
            self clearcinematicmotionoverride();
        }
        return;
    }
    self setcinematicmotionoverride("disabled");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x361a
// Size: 0x51
function private function_293669b3b38c7221(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (isdefined(self.armor) && isdefined(self.armor.toggleuifunc)) {
        self [[ self.armor.toggleuifunc ]](b_value);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3673
// Size: 0x55
function private getequipmenttableinfo(ref) {
    if (isdefined(ref) && !isdefined(level.equipment.table[ref])) {
        assertmsg("getEquipmentTableInfo was called fo equipment with a ref that wasn't initialized: " + ref + "!");
    }
    return level.equipment.table[ref];
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x36d1
// Size: 0x25
function private getcurrentequipment(slot) {
    if (!isdefined(self.equipment)) {
        return undefined;
    }
    return self.equipment[slot];
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x36ff
// Size: 0x44
function private disableslotinternal(slot) {
    if (slot == "primary") {
        self clearoffhandprimary();
        return;
    }
    if (slot == "secondary") {
        self clearoffhandsecondary();
        return;
    }
    if (slot == "super") {
        self clearoffhandspecial();
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x374b
// Size: 0x2f2
function private enableslotinternal(slot) {
    ref = getcurrentequipment(slot);
    equipmentlist = self getweaponslistoffhands();
    weapon = undefined;
    variantid = undefined;
    if (!isdefined(ref)) {
        return;
    }
    found = 0;
    foreach (equip in equipmentlist) {
        equipref = undefined;
        foreach (tableinfo in level.equipment.table) {
            if (isdefined(tableinfo.objweapon.basename) && equip.basename == tableinfo.objweapon.basename) {
                equipref = tableinfo.ref;
                break;
            }
        }
        if (isdefined(equipref) && equipref == ref) {
            found = 1;
            if (isdefined(equip.variantid) && equip.variantid > 0) {
                variantid = equip.variantid;
                if (!isdefined(equip.basename)) {
                    return undefined;
                }
                if (isdefined(variantid) && variantid > 0) {
                    weapon = makeweapon(equip.basename, [], undefined, undefined, variantid);
                    var_1092bc40c58c1c9a = equip.basename + "|" + string(variantid);
                    attachments = level.equipmentblueprints[var_1092bc40c58c1c9a];
                    foreach (variant in attachments) {
                        weapon = weapon withattachment(attachment, variant);
                    }
                } else {
                    weapon = makeweapon(equip.basename);
                }
            } else {
                tableinfo = getequipmenttableinfo(ref);
                weapon = tableinfo.objweapon;
            }
            break;
        }
    }
    tableinfo = getequipmenttableinfo(ref);
    if (!istrue(found)) {
        weapon = tableinfo.objweapon;
    }
    if (isdefined(weapon)) {
        if (isdefined(weapon) && !tableinfo.ispassive) {
            if (slot == "primary") {
                self assignweaponoffhandprimary(weapon);
                return;
            }
            if (slot == "secondary") {
                self assignweaponoffhandsecondary(weapon);
                return;
            }
            if (slot == "super") {
                self assignweaponoffhandspecial(weapon);
            }
        }
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3a45
// Size: 0x33
function private function_dd8e7fdce5f0dcff(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        enableslotinternal("primary");
        return;
    }
    disableslotinternal("primary");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3a80
// Size: 0x33
function private function_2b70e9743c9a71b(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        enableslotinternal("secondary");
        return;
    }
    disableslotinternal("secondary");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3abb
// Size: 0x25
function private function_782c9cfc7f78e416(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    setsaveddvar(@"hash_4771e9353baf9732", !b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3ae8
// Size: 0x1d
function private function_2937a757c6689fb3(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self scriptabledoorfreeze(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3b0d
// Size: 0x30
function private function_cbdfe6762b367d1b(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        self.interactions_disabled = undefined;
        return;
    }
    self.interactions_disabled = 1;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3b45
// Size: 0x3f
function private function_4a0c36c985cc4a03(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (utility::iscp()) {
        if (b_value) {
            self setclientomnvar("ui_disable_inventory", 0);
            return;
        }
        self setclientomnvar("ui_disable_inventory", 1);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3b8c
// Size: 0x42
function private function_d093a1b1e1c340a3(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (iscp()) {
        if (b_value) {
            self setclientomnvar("ui_show_tac_map", 1);
        } else {
            self setclientomnvar("ui_show_tac_map", 0);
        }
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x3bd6
// Size: 0x33
function private function_4e80f7e4ffe334e0(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value) {
        utility::flag_clear("weapon_scanning_off");
        return;
    }
    utility::flag_set("weapon_scanning_off");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3c11
// Size: 0x4e
function private function_dc9ce02e5a3bd6da(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    if (b_value && isdefined(self.actionslotweapon)) {
        self setactionslot(1, "weapon", self.actionslotweapon);
        return;
    }
    self setactionslot(1, "");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3c67
// Size: 0x37
function private set_demeanor(str_value) {
    if (isai(self)) {
        if (!isdefined(str_value) || str_value == "") {
            utility::clear_demeanor_override();
            return;
        }
        utility::demeanor_override(str_value);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3ca6
// Size: 0x1e
function private function_e839d0e33e07c756(b_value) {
    if (isai(self)) {
        self.allowpain = b_value;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3ccc
// Size: 0x3f
function private function_15b077dbaf3b063f(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    if (!isplayer(self) && !isagent(self)) {
        assertmsg("VAL_INFINITE_AMMO can only be applied to players and MP agents");
    }
    self function_ae3021dcebd28be1(b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3d13
// Size: 0x26
function private function_f8b197beec8e9945(val) {
    if (isdefined(level.var_60fc087bc7deaadc)) {
        self [[ level.var_60fc087bc7deaadc ]](val);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3d41
// Size: 0x1f
function private function_7f308a0cfa036a48(b_value) {
    if (isai(self)) {
        self.killondamage = istrue(b_value);
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3d68
// Size: 0x3b
function private function_fc93ada8ce1701fe(b_value) {
    if (isplayer(self) || isai(self)) {
        if (istrue(b_value)) {
            self.var_f405191d4605c15c = 0;
            return;
        }
        self.var_f405191d4605c15c = 1;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3dab
// Size: 0x16
function private function_3718505d535c6113(b_value) {
    self.var_f62adc4cc32e37c7 = istrue(b_value);
}

// Namespace val / scripts\common\values
// Params 2
// Checksum 0x0, Offset: 0x3dc9
// Size: 0xde
function function_bee64cea73f1992b(str_id, value) {
    if (value) {
        set(str_id, "fire", !value);
        set(str_id, "offhand_weapons", !value);
        set(str_id, "allow_movement", !value);
        set(str_id, "allow_jump", !value);
        set(str_id, "melee", !value);
        set(str_id, "sprint", !value);
        set(str_id, "prone", !value);
        return;
    }
    reset(str_id, "fire");
    reset(str_id, "offhand_weapons");
    reset(str_id, "allow_movement");
    reset(str_id, "allow_jump");
    reset(str_id, "melee");
    reset(str_id, "sprint");
    reset(str_id, "prone");
}

// Namespace val / scripts\common\values
// Params 2
// Checksum 0x0, Offset: 0x3eaf
// Size: 0xa6
function function_91558560b423d58e(str_id, value) {
    if (value) {
        set(str_id, "offhand_weapons", !value);
        set(str_id, "allow_movement", !value);
        set(str_id, "allow_jump", !value);
        set(str_id, "melee", !value);
        set(str_id, "sprint", !value);
        return;
    }
    reset(str_id, "offhand_weapons");
    reset(str_id, "allow_movement");
    reset(str_id, "allow_jump");
    reset(str_id, "melee");
    reset(str_id, "sprint");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3f5d
// Size: 0x1d
function private set_allowads(b_value) {
    if (!isdefined(b_value)) {
        b_value = 1;
    }
    self allowads(b_value);
}

// Namespace val / scripts\common\values
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3f82
// Size: 0x18
function private function_1bc52d1afc4d1b95(s_notify, b_value) {
    self notify(s_notify, b_value);
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3fa2
// Size: 0x1e
function private function_4c8f023af26b4a8a(b_value) {
    if (isai(self)) {
        self.disallow_knockdown = b_value;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3fc8
// Size: 0x1e
function private function_db2848cc88d5a336(b_value) {
    if (isai(self)) {
        self.disallow_stun = b_value;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3fee
// Size: 0x28
function private function_b0146ba0c8f08192(b_value) {
    if (isai(self)) {
        self enableavoidance(!b_value);
        self.var_3119604b74dfdbbd = !b_value;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x401e
// Size: 0x1e
function private function_d549cfeb2ed5d5e2(b_value) {
    if (isai(self)) {
        self.var_b9527ed408c69385 = b_value;
    }
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4044
// Size: 0x1d
function private function_10613d0755b1655(b_value) {
    if (!isdefined(b_value)) {
        b_value = 0;
    }
    self.showhealthbar = b_value;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4069
// Size: 0x15
function private function_ff795a8bf33046c1(b_value) {
    self.attackeraccuracy = b_value;
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4086
// Size: 0x44
function private function_b010672d21d0fdb1(b_value) {
    if (!utility::ent_flag_exist("allow_dismember")) {
        utility::ent_flag_init("allow_dismember");
    }
    if (b_value) {
        utility::ent_flag_set("allow_dismember");
        return;
    }
    utility::ent_flag_clear("allow_dismember");
}

// Namespace val / scripts\common\values
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x40d2
// Size: 0x14
function private function_83f16f4f6bc886b2(b_value) {
    self function_3671ec427c125cb(istrue(b_value));
}

/#

    // Namespace val / scripts\common\values
    // Params 3, eflags: 0x4
    // Checksum 0x0, Offset: 0x40ee
    // Size: 0x82, Type: dev
    function private validate(str_name, call_on, func) {
        if (!isdefined(level.values[str_name])) {
            assertmsg("<dev string:x6b>" + str_name + "<dev string:x73>");
            return;
        }
        s_value = level.values[str_name];
        s_value.b_validate = 1;
        s_value.func_validate = func;
        s_value.validate_call_on = call_on;
    }

    // Namespace val / scripts\common\values
    // Params 3, eflags: 0x4
    // Checksum 0x0, Offset: 0x4178
    // Size: 0x12f, Type: dev
    function private validate_value(str_name, value, b_assert) {
        if (!isdefined(b_assert)) {
            b_assert = 0;
        }
        s_value = level.values[str_name];
        current_value = undefined;
        if (isdefined(s_value.func_validate)) {
            call_on = utility::ter_op(isstring(s_value.validate_call_on) && s_value.validate_call_on == "<dev string:x23>", self, s_value.validate_call_on);
            if (isdefined(s_value.validate_args)) {
                current_value = utility::single_func_argarray(call_on, s_value.func_validate, replace_values(s_value.validate_args));
            } else {
                current_value = utility::single_func_argarray(call_on, s_value.func_validate, []);
            }
        } else {
            current_value = 0;
        }
        b_match = isdefined(current_value) && current_value == value;
        if (b_assert) {
            assert(b_match, "<dev string:xf9>" + str_name + "<dev string:x10c>" + current_value + "<dev string:x113>" + value + "<dev string:x125>");
        }
        return b_match;
    }

    // Namespace val / scripts\common\values
    // Params 0, eflags: 0x4
    // Checksum 0x0, Offset: 0x42af
    // Size: 0x2db, Type: dev
    function private debug_values() {
        setdvarifuninitialized(@"scr_debug_values", 0);
        waitframe();
        scr_debug_values = 0;
        var_145377a3061eae2 = -1;
        while (true) {
            if (gettime() > var_145377a3061eae2) {
                scr_debug_values = getdvarint(@"scr_debug_values");
                var_145377a3061eae2 = gettime() + 1000;
            }
            if (!scr_debug_values) {
                waitframe();
                continue;
            }
            str_debug_values_entity = string::to_string(getdvar(@"scr_debug_values_entity", "<dev string:x128>"));
            if (str_debug_values_entity == "<dev string:x128>" || str_debug_values_entity == "<dev string:x129>" || str_debug_values_entity == "<dev string:x12c>") {
                hud_ent = level.host;
                if (!isdefined(hud_ent)) {
                    hud_ent = level.player;
                }
                if (!isdefined(hud_ent)) {
                    hud_ent = level.players[0];
                }
                str_label = "<dev string:x131>";
            } else {
                str_value = str_debug_values_entity;
                str_key = "<dev string:x13d>";
                if (issubstr(str_value, "<dev string:x148>")) {
                    a_toks = strtok(str_value, "<dev string:x148>");
                    str_value = a_toks[0];
                    str_key = a_toks[1];
                }
                hud_ent = getent(str_value, str_key, 1);
                str_label = str_value + "<dev string:x148>" + str_key;
            }
            printtoscreen2d(200, 100, str_label, (1, 1, 1), 2);
            a_all_ents = getentarray();
            foreach (ent in a_all_ents) {
                if (isdefined(ent.values)) {
                    i = 1;
                    foreach (str_name, a_value in ent.values) {
                        top_value = a_value[0];
                        if (isdefined(top_value)) {
                            b_valid = 1;
                            if (istrue(level.values[str_name].b_validate)) {
                                b_assert = getdvarint(@"scr_debug_values", 0) > 1;
                                b_valid = ent validate_value(str_name, top_value.value, b_assert);
                            }
                            ent display_value(i, str_name, top_value.str_id, top_value.value, isdefined(hud_ent) && b_valid, isdefined(hud_ent) && ent == hud_ent);
                            i++;
                        }
                    }
                }
            }
            waitframe();
        }
    }

    // Namespace val / scripts\common\values
    // Params 6, eflags: 0x4
    // Checksum 0x0, Offset: 0x4592
    // Size: 0x101, Type: dev
    function private display_value(index, str_name, str_id, value, b_valid, on_hud) {
        if (!isdefined(on_hud)) {
            on_hud = 0;
        }
        str_value = "<dev string:x128>";
        if (string::to_string(str_name) != "<dev string:x128>") {
            str_value = string::rjust(str_name, 20);
            if (isdefined(value)) {
                str_value += "<dev string:x14a>" + value;
            }
            str_value += "<dev string:x14e>" + string::ljust("<dev string:x128>" + str_id + "<dev string:x151>", 30);
        }
        color = utility::ter_op(b_valid, (1, 1, 1), (1, 0, 0));
        if (on_hud) {
            printtoscreen2d(200, 100 + index * 25, str_value, color, 2);
        }
        print3d(self.origin - (0, 0, index * 8), str_value, color, 1, 0.3, 1);
    }

#/
