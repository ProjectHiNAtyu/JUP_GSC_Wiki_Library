// scripts\anim\battlechatter.gsc  (35DE402EFC5ACFB3.gscc) (size: 62389 Bytes / 0xf3b5 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x96a1ec09 (2527194121)
// size ...... 62389 (0xf3b5)
// includes .. 10  (offset: 0xe64)
// strings ... 259 (offset: 0xdf35)
// dev strs .. 106 (offset: 0xedb9)
// exports ... 150 (offset: 0x9f29)
// cseg ...... 0xeb4 + 0x9075 (0x9f29)
// imports ... 308 (offset: 0xb699)
// animtree1 . 0   (offset: 0xf3b5)
// animtree2 . 0   (offset: 0xf3b5)
#using script_433d8f78f7e5fb;
#using scripts\anim\battlechatter_ai;
#using scripts\anim\battlechatter_events;
#using scripts\anim\battlechatter_table;
#using scripts\anim\dialogue;
#using scripts\anim\utility_common;
#using scripts\asm\asm;
#using scripts\common\debug;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace battlechatter;

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0xebc
// Size: 0x7b1
function init_battlechatter() {
    setdvarifuninitialized(@"hash_ab3249fe50b0f590", 1);
    setdvarifuninitialized(@"hash_864d3ab12f741516", 0);
    setdvarifuninitialized(@"hash_44ef18550505e010", 0);
    setdvarifuninitialized(@"hash_350b154807f4d745", 0);
    setdvarifuninitialized(@"hash_4b7858e66804e305", 0);
    setdvarifuninitialized(@"hash_5aea525f549d2546", 0);
    if (isdefined(level.battlechatter) || getdvarint(@"hash_ab3249fe50b0f590") == 0) {
        return;
    }
    level.battlechatter = spawnstruct();
    level.battlechatter.states = [];
    level.battlechatter.delays = [];
    level.battlechatter.names = [];
    level.battlechatter.events = [];
    level.battlechatter.variations = [];
    setdvarifuninitialized(@"hash_495535a4877b324d", "off");
    setdvarifuninitialized(@"hash_87dca5163728ce02", "off");
    setdvarifuninitialized(@"hash_ce7cfdf8678edb2", "off");
    setdvarifuninitialized(@"hash_70aaec0e43322fea", "off");
    setdvarifuninitialized(@"hash_6f38327ed1f7340f", "off");
    setdvarifuninitialized(@"hash_702217ae066916b9", "");
    setdvarifuninitialized(@"hash_21778f568437cd09", "");
    setdvarifuninitialized(@"hash_611f04c407c3f644", "off");
    setdvarifuninitialized(@"hash_1c663353dae9fab0", "off");
    setdvarifuninitialized(@"hash_9627c73338f91622", "off");
    setdvarifuninitialized(@"hash_3cb0b3f110a54cf2", "csv");
    setdvarifuninitialized(@"hash_ef12a290c14c553f", "off");
    anim.bcprintfailprefix = "^1***** BCS FAILURE: ";
    anim.bcprintwarnprefix = "^3***** BCS WARNING: ";
    event_init();
    function_2f7fd2639db2a57b();
    function_2e88374b2f067e46();
    if (function_3cb5da19764baa3() == "T10") {
        function_5430999882251a0c();
    } else if (function_3cb5da19764baa3() == "JUP") {
        function_676ba319b8273e9e();
    }
    if (isdefined(level.var_aa78677d2156e18)) {
        [[ level.var_aa78677d2156e18 ]]();
    }
    function_90826d80aa1736cb("idle", &function_f06007e1f432ce27);
    function_90826d80aa1736cb("investigate", &function_f6c7d545b09f9f0a);
    function_90826d80aa1736cb("hunt", &function_7ce36b78c85185c2);
    function_90826d80aa1736cb("combat", &function_f5154a3d477820d9);
    function_3769e5550bed355b("default", level.battlechatteroverrides.var_fd6906dc66b503b4, level.battlechatteroverrides.var_4c433dc943a4b16e);
    function_3769e5550bed355b("idle", level.battlechatteroverrides.var_fd6906dc66b503b4, level.battlechatteroverrides.var_4c433dc943a4b16e);
    function_3769e5550bed355b("hunt", level.battlechatteroverrides.var_ac5d474ffe947f53, level.battlechatteroverrides.var_8fb4e94454c2b089);
    function_3769e5550bed355b("combat", level.battlechatteroverrides.var_de220ee05772f786, level.battlechatteroverrides.var_d4692deec4b3b23c);
    addeventfunc("curious", &function_1d268b003b51a5b3);
    addeventfunc("announce", &announceevent);
    addeventfunc("return_to_idle", &function_e64dbaaae396fbb8);
    addeventfunc("enter_hunt", &function_f4671f61a3031990);
    addeventfunc("join_combat", &function_881ab22021be3c6b);
    addeventfunc("enter_combat", &function_6237814879b07fbf);
    addeventfunc("red_alert", &function_3dac2e167dc9be7a);
    foreach (deck in level.battlechatter.events) {
        deck deck_shuffle();
    }
    level.var_fb605061a3778884 = default_to(level.var_fb605061a3778884, 200);
    level.var_fde5b385cc96729a = default_to(level.var_fde5b385cc96729a, squared(level.var_fb605061a3778884));
    level.var_798aa343368f724e = default_to(level.var_798aa343368f724e, 650);
    level.var_c1ed820e79e07b7c = default_to(level.var_c1ed820e79e07b7c, squared(level.var_798aa343368f724e));
    level.var_8893859de4351996 = default_to(level.var_8893859de4351996, 850);
    level.var_e4b1ac8399c73f44 = default_to(level.var_e4b1ac8399c73f44, squared(level.var_8893859de4351996));
    level.var_63a73645a8e030ad = default_to(level.var_63a73645a8e030ad, 1400);
    level.var_defb33e34eb9dee7 = default_to(level.var_defb33e34eb9dee7, squared(level.var_63a73645a8e030ad));
    setsaveddvar(@"hash_ab202f8049b3210a", level.var_63a73645a8e030ad);
    level.var_587de0e7b537210a = default_to(level.var_587de0e7b537210a, 2000);
    level.var_b4360cab4806d3a0 = default_to(level.var_b4360cab4806d3a0, squared(level.var_587de0e7b537210a));
    level.var_dd332b4f1c13f7d5 = default_to(level.var_dd332b4f1c13f7d5, 300);
    level.var_27a93e38d913ff2f = default_to(level.var_27a93e38d913ff2f, squared(level.var_dd332b4f1c13f7d5));
    level.var_3c8c2ca8a1d0e8a7 = default_to(level.var_3c8c2ca8a1d0e8a7, 590);
    level.var_e49b54322cbd63c1 = default_to(level.var_e49b54322cbd63c1, squared(level.var_3c8c2ca8a1d0e8a7));
    level.var_8b1a7cec63f2e832 = default_to(level.var_8b1a7cec63f2e832, level.var_798aa343368f724e);
    level.var_b1835eb671fbdac8 = default_to(level.var_b1835eb671fbdac8, squared(level.var_8b1a7cec63f2e832));
    level.var_1c60ace9b9fff6ff = default_to(level.var_1c60ace9b9fff6ff, 360);
    level.var_85b48a519a69f1b9 = default_to(level.var_85b48a519a69f1b9, squared(level.var_1c60ace9b9fff6ff));
    level.var_d809dc9f8a466642 = default_to(level.var_d809dc9f8a466642, 650);
    level.var_fe8551579a9d6778 = default_to(level.var_fe8551579a9d6778, squared(level.var_d809dc9f8a466642));
    level.var_8e8e487a64d9aa1b = default_to(level.var_8e8e487a64d9aa1b, 120);
    level.var_dafa42d7384e9ef5 = 10;
    if (isdefined(anim.squads)) {
        foreach (squad in anim.squads) {
            squad init_squadbattlechatter();
        }
    }
    anim.squadcreatefunc = &init_squadbattlechatter;
    if (!isdefined(anim.bcs_locations)) {
        function_2faee9e4cf862d61();
    }
    bcs_setup_countryids();
    /#
        thread function_a8c755adb8698257();
    #/
    level thread function_1ea9d53684d11626();
    level thread function_78405469b3060fa();
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x1675
// Size: 0x1175
function private function_2e88374b2f067e46() {
    level.battlechatter.settings["coverme"] = [0, 1, 5];
    level.battlechatter.settings["coverfire"] = [0, 1, 5];
    level.battlechatter.settings["lost_target"] = [0, 2, 5];
    level.battlechatter.settings["cease_fire"] = [0, 2, 5];
    level.battlechatter.settings["combat_hunt"] = [0, 2, 5];
    level.battlechatter.settings["hunt"] = [0, 2, 5];
    level.battlechatter.settings["reacquire_push_towards"] = [0, 2, 5];
    level.battlechatter.settings["combat_unaware"] = [0, 2, 5];
    level.battlechatter.settings["incoming_vehicle_response"] = [0, 0, 20];
    level.battlechatter.settings["_interrupt"] = [1, 0, 1];
    level.battlechatter.settings["aquired_target"] = [0, 2, 50];
    level.battlechatter.settings["order_attack"] = [0, 2, 35];
    level.battlechatter.settings["enemy_direction"] = [0, 2, 15];
    level.battlechatter.settings["getting_cover"] = [0.2, 2, 20];
    level.battlechatter.settings["enemy_getting_cover"] = [0.25, 2, 20];
    level.battlechatter.settings["target_getting_cover"] = [0.3, 2, 20];
    level.battlechatter.settings["ally_exposure"] = [0, 1, 20];
    level.battlechatter.settings["combat_status"] = [0, 1, 25];
    level.battlechatter.settings["enemy_weapon"] = [0, 1, 20];
    level.battlechatter.settings["hostile_burst"] = [0, 1, 20];
    level.battlechatter.settings["use_"] = [0, 1, 10];
    level.battlechatter.settings["enemy_using_"] = [0, 0.5, 10];
    level.battlechatter.settings["grenade_danger"] = [0.75, 0.5, 10];
    level.battlechatter.settings["hurt_by_"] = [0.75, 0.5, 10];
    level.battlechatter.settings["attacking"] = [0, 1, 40];
    level.battlechatter.settings["enemy_reloading"] = [0, 1, 20];
    level.battlechatter.settings["reloading"] = [0, 1, 15];
    level.battlechatter.settings["ammo_status"] = [0.1, 1, 15];
    level.battlechatter.settings["enemy_movement"] = [0, 1, 20];
    level.battlechatter.settings["enemy_movement_moving"] = [0, 1, 20];
    level.battlechatter.settings["enemy_movement_climbing_up"] = [0, 1, 10];
    level.battlechatter.settings["enemy_movement_moving_up"] = [0, 1, 10];
    level.battlechatter.settings["ally_movement"] = [0, 1, 15];
    level.battlechatter.settings["killfirm"] = [0, 2, 15];
    level.battlechatter.settings["player_killfirm"] = [0, 2, 30];
    level.battlechatter.settings["casualties"] = [0.6, 3, 30];
    level.battlechatter.settings["casualty"] = [0, 2, 15];
    level.battlechatter.settings["friendlyfire"] = [1, 0, 3];
    level.battlechatter.settings["idle_convo"] = [0.3, 1, 60];
    level.battlechatter.settings["idle"] = [0.2, 1, 60];
    level.battlechatter.settings["patrol_curious"] = [0.05, 0, 2];
    level.battlechatter.settings["investigate_start"] = [0, 2, 5];
    level.battlechatter.settings["investigate_pos_reached"] = [0.2, 2, 5];
    level.battlechatter.settings["saw_corpse_1"] = [0.6, 0, 10];
    level.battlechatter.settings["saw_corpse_2"] = [0.6, 0, 10];
    level.battlechatter.settings["found_corpse"] = [1, 1, 10];
    level.battlechatter.settings["found_corpse_1"] = "found_corpse";
    level.battlechatter.settings["found_corpse_2"] = "found_corpse";
    level.battlechatter.settings["found_corpse_3"] = "found_corpse";
    level.battlechatter.settings["announce_"] = [0.8, 1, 10];
    level.battlechatter.settings["return_to_idle"] = [0, 2, 5];
    level.battlechatter.settings["returned_to_idle_pos"] = [0, 2, 5];
    level.battlechatter.settings["enter_hunt_1"] = [1, 0.5, 10];
    level.battlechatter.settings["enter_hunt_2"] = [1, 0.5, 10];
    level.battlechatter.settings["enter_hunt_3"] = [1, 0.5, 15];
    level.battlechatter.settings["enter_hunt_4"] = [1, 0.5, 15];
    level.battlechatter.settings["enter_hunt_5"] = [1, 0.5, 30];
    level.battlechatter.settings["enter_hunt_6"] = [1, 0.5, 10];
    level.battlechatter.settings["hunt_ask_found"] = [0, 1, 30];
    level.battlechatter.settings["hunt_solo"] = [0, 1, 8];
    level.battlechatter.settings["enter_hunt_followup"] = [0.3, 5, 10];
    level.battlechatter.settings["initial_combat"] = [0.89, 0.5, 20];
    level.battlechatter.settings["initial_combat_2"] = "initial_combat";
    level.battlechatter.settings["initial_combat_N"] = "initial_combat";
    level.battlechatter.settings["initial_combat_nonshot_1"] = "initial_combat";
    level.battlechatter.settings["initial_combat_nonshot_2"] = "initial_combat";
    level.battlechatter.settings["initial_combat_nonshot_N"] = "initial_combat";
    level.battlechatter.settings["comb_rs_saw_enemy_on_pos"] = "initial_combat";
    level.battlechatter.settings["comb_rs_saw_enemy_out_pos"] = "initial_combat";
    level.battlechatter.settings["comb_rs_saw_shot_but_enemy_hid"] = "initial_combat";
    level.battlechatter.settings["comb_full_default"] = "initial_combat";
    level.battlechatter.settings["comb_full_unaware_sniper"] = "initial_combat";
    level.battlechatter.settings["comb_full_unaware_lmg"] = "initial_combat";
    level.battlechatter.settings["comb_full_unaware_shotgun"] = "initial_combat";
    level.battlechatter.settings["comb_full_aware_sniper"] = "initial_combat";
    level.battlechatter.settings["comb_full_aware_lmg"] = "initial_combat";
    level.battlechatter.settings["comb_full_aware_shotgun"] = "initial_combat";
    level.battlechatter.settings["comb_fulld_didnt_see_shooting"] = "initial_combat";
    level.battlechatter.settings["comb_fulld_enemy_open"] = "initial_combat";
    level.battlechatter.settings["comb_fulld_enemy_cover"] = "initial_combat";
    level.battlechatter.settings["comb_fulld_enemies_open"] = "initial_combat";
    level.battlechatter.settings["comb_fulld_enemies_cover"] = "initial_combat";
    level.battlechatter.settings["enter_combat"] = [0.89, 0.5, 15];
    level.battlechatter.settings["join_combat"] = [0, 3, 15];
    level.battlechatter.settings["losing_target_water"] = [0, 2, 5];
    level.battlechatter.settings["losing_target"] = [0, 2, 5];
    level.battlechatter.settings["status_report"] = [0.1, 1, 35];
    level.battlechatter.settings["corpse_status_report"] = [0.21, 1, 120];
    level.battlechatter.settings["red_alert_1"] = [1, 5, 10];
    level.battlechatter.settings["red_alert_N"] = "red_alert_1";
    level.battlechatter.settings["flanked_1"] = [0.9, 0, 5];
    level.battlechatter.settings["flanked_N"] = "flanked_1";
    level.battlechatter.settings["enemy_sighted_1"] = [0.89, 0, 5];
    level.battlechatter.settings["enemy_sighted_N"] = "enemy_sighted_1";
    level.battlechatter.settings["target_wounded"] = [0.2, 1, 15];
    level.battlechatter.settings["target_unhurt"] = [0.2, 1, 15];
    level.battlechatter.settings["wounded"] = [0.2, 1, 15];
    level.battlechatter.settings["cover_destroyed"] = [0.5, 0, 10];
    var_69f88410d1c9e28b = getdvarint(@"hash_2e9b4d77df5b8514") * 0.001;
    level.battlechatter.settings["lost_target_elapsed_1"] = [1, 0.5, var_69f88410d1c9e28b];
    level.battlechatter.settings["lost_target_elapsed_2"] = [1, 0.5, var_69f88410d1c9e28b];
    level.battlechatter.settings["hunt_initial"] = [1, 0.5, 10];
    level.battlechatter.settings["hunt_solo_enter"] = "hunt_initial";
    level.battlechatter.settings["hunt_solo_loop"] = "hunt_initial";
    level.battlechatter.settings["hunt_duo_enter"] = "hunt_initial";
    level.battlechatter.settings["hunt_duo_loop_near"] = "hunt_initial";
    level.battlechatter.settings["hunt_duo_loop_far_1"] = "hunt_initial";
    level.battlechatter.settings["hunt_duo_loop_far_2"] = "hunt_initial";
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x27f2
// Size: 0x2e
function private function_676ba319b8273e9e() {
    level.battlechatter.settings["investigate_loop"] = [0, 2, 5];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2828
// Size: 0x2
function private function_5430999882251a0c() {
    
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2832
// Size: 0x1a9
function function_78405469b3060fa() {
    level endon("battlechatter disabled");
    while (true) {
        level waittill("bc_notify", data_array);
        foreach (data in data_array) {
            if (!isdefined(data.entity)) {
                continue;
            }
            assert(isdefined(data.category));
            /#
                if (getdvarint(@"hash_350b154807f4d745")) {
                    if (isdefined(data.subcategory) && data.category != data.subcategory) {
                        text = data.category + "<dev string:x1c>" + data.subcategory;
                    } else {
                        text = data.category;
                    }
                    if (issharedfuncdefined("<dev string:x20>", "<dev string:x2e>")) {
                        data.entity thread [[ getsharedfunc("<dev string:x20>", "<dev string:x2e>") ]]("<dev string:x41>" + data.category, (0, 1, 0), 1, 0.5, (0, 0, 40), 5);
                    }
                }
            #/
            notifyhandled = function_955ca8d297928838(data);
            if (!notifyhandled && chatterallowed(data.entity)) {
                notifyhandled = function_6c731b5fab9c2494(data);
            }
            /#
                function_fdb8454d071bcf5b(data, notifyhandled);
            #/
        }
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x29e3
// Size: 0x5ca
function function_6c731b5fab9c2494(data) {
    assert(isdefined(data));
    assert(isdefined(data.entity));
    assert(isdefined(data.category));
    if (data.entity executeevent(data.category, data.params)) {
        return 1;
    }
    switch (data.category) {
    case #"hash_4c8ad9f2942ea5b":
        data.entity thread bcs_statechange(data);
        break;
    case #"hash_1044d327487d801a":
    case #"hash_184bba7053cc1c15":
    case #"hash_20cd76d83c2f7487":
        data.entity clear_cooldown("ally_movement");
        data.entity thread moveevent();
        break;
    case #"hash_d6c61718f24df768":
        data.entity thread function_56e490b1816855eb(data.otherentity, data.subcategory);
        break;
    case #"hash_5a5c93f2debb75c":
        data.entity thread function_1ae088b4c06d0525(data.params[1], data.params[2]);
        break;
    case #"hash_3ee703de5a8989c6":
        data.entity thread function_8fa36b2ce712a5bb();
        break;
    case #"hash_eeed4ce2a5de2aa5":
        if (data.subcategory == "losing_target") {
            data.entity thread function_e2d4e5c64d62278e(data.otherentity);
        } else if (data.subcategory == "lost_target") {
            data.entity function_93b4f17e4a3474b("lost_target", "ask_target_location");
        } else if (data.subcategory == "cease_fire") {
            data.entity function_93b4f17e4a3474b("cease_fire", "hunt_order_hold");
        } else if (data.subcategory == "lost_target_elapsed") {
            data.entity thread function_da9e3311b63335e1();
        }
        break;
    case #"hash_37bb23543c319104":
        if (data.subcategory == "hunt") {
            data.entity thread function_facb9692c3fba174();
        }
        break;
    case #"hash_bb388ae078895394":
        data.entity thread function_7825e0643a6c5600();
        break;
    case #"hash_3f894d6ee31df868":
        if (data.subcategory == "combat_unaware") {
            data.entity function_93b4f17e4a3474b("combat_unaware", "cmb_reactions");
        }
        break;
    case #"hash_1fe1f9ada345556c":
        if (data.subcategory == "investigateposreached") {
            if (isdefined(data.params[2]) && data.params[2] == "saw_corpse") {
                return;
            }
            data.entity thread function_e46d9fd4c3250863();
        }
        break;
    case #"hash_1879579c479117e0":
        if (data.subcategory == "dodge_vehicle_start") {
            data.entity function_93b4f17e4a3474b("incoming_vehicle_response", random(["hunt_reactions", "cmb_reactions"]));
        }
        break;
    case #"hash_124fc72bb55490ec":
        data.entity thread reloadevent();
        break;
    case #"hash_ecb83a34dd571174":
        data.entity thread moveevent(data.subcategory);
        break;
    case #"hash_661532715a742ebf":
        data.entity thread friendlyfireevent();
        break;
    case #"hash_58018e5cda140b2d":
        data.entity thread function_e906749f6343f822();
        break;
    case #"hash_c718a89b94ffdc2":
        data.entity thread function_4dffa550c687b071();
        break;
    case #"hash_2d1406e602f0875d":
        data.entity thread attackevent();
        data.entity thread function_3aab8d98361f6ecf();
        break;
    case #"hash_ab2e692ee80521f8":
        data.entity thread burnevent(data.subcategory);
        break;
    case #"hash_8f9bb78729a54b2c":
    case #"hash_fbd5bcbb1cbe3154":
        data.entity thread function_a364b61121ab136f(data.otherentity);
        break;
    case #"hash_a0721fe4fd9580f5":
        data.entity thread shootevent(data.subcategory);
        break;
    case #"hash_57203b1e53d3a619":
        if (isalive(data.entity)) {
            data.entity function_93b4f17e4a3474b("wounded", "wounded");
        }
        break;
    case #"hash_7a09a268a01b5f84":
        data.entity thread function_71da86464a72718d();
        break;
    case #"hash_affe6c9db8e997d3":
        data.entity thread function_402ee78fe1df3ace();
        data.entity thread function_771bace1bff17684();
        break;
    default:
        return 0;
    }
    return 1;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2fb6
// Size: 0xed, Type: bool
function function_955ca8d297928838(data) {
    assert(isdefined(data));
    assert(isdefined(data.entity));
    assert(isdefined(data.category));
    switch (data.category) {
    case #"hash_631f416c3d8360d4":
        data.entity thread useevent(data.subcategory, 0);
        break;
    case #"hash_12cb1aa4c57395":
        data.entity thread grenadedangerevent(data.otherentity);
        break;
    case #"hash_9a35360cb2dc98e6":
        data.entity thread useevent(data.subcategory, 1);
        break;
    default:
        return false;
    }
    return true;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x30ac
// Size: 0x116
function bcs_statechange(data) {
    previousstate = data.params[0];
    currentstate = data.params[1];
    ai_event = data.params[2];
    var_2a130b858db198cb = function_a07abd440b7a33fe(data.otherentity);
    if (previousstate == 4) {
        return;
    }
    if (previousstate == currentstate) {
        return;
    }
    self notify("bcs_stateChange", previousstate, currentstate);
    switch (currentstate) {
    case 0:
        return function_e64dbaaae396fbb8(previousstate);
    case 1:
        if (var_2a130b858db198cb) {
            return function_23a29830a84af4cf();
        } else {
            return function_bbb539fd7c238608();
        }
    case 2:
        return function_f4671f61a3031990();
    case 3:
        function_65f8179711192d2b();
        if (previousstate < 2) {
            if (var_2a130b858db198cb) {
                return function_64e63285a83e3efe();
            } else {
                return function_80bfded61c19c9cc(previousstate, ai_event);
            }
        } else {
            return function_6237814879b07fbf();
        }
        break;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x31ca
// Size: 0x2e
function function_45a69522dd934d18(dist) {
    level.var_587de0e7b537210a = 2048;
    level.var_b4360cab4806d3a0 = squared(level.var_587de0e7b537210a);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x3200
// Size: 0x15
function function_33bdd4ad6aa14edc(overrides) {
    level.battlechatteroverrides = overrides;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x321d
// Size: 0xa2
function function_2f7fd2639db2a57b() {
    if (!isdefined(level.battlechatteroverrides)) {
        level.battlechatteroverrides = spawnstruct();
        level.battlechatteroverrides.var_fd6906dc66b503b4 = 10;
        level.battlechatteroverrides.var_4c433dc943a4b16e = 16;
        level.battlechatteroverrides.var_ac5d474ffe947f53 = 4;
        level.battlechatteroverrides.var_8fb4e94454c2b089 = 12;
        level.battlechatteroverrides.var_de220ee05772f786 = 1;
        level.battlechatteroverrides.var_d4692deec4b3b23c = 2;
        return;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x32c7
// Size: 0x24
function init_squadbattlechatter() {
    squad = self;
    squad.chatinitialized = 1;
    squad notify("squad chat initialized");
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x32f3
// Size: 0xc, Type: bool
function bcsenabled() {
    return isdefined(level.battlechatter);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 6, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3308
// Size: 0xda
function bcs_setup_voice(voice, countryid, var_46119ee4018a3e10, var_790e7a69f5c40b30, var_4189af81d34b8804, var_10e927a072c477b) {
    if (!isdefined(var_790e7a69f5c40b30)) {
        var_790e7a69f5c40b30 = 0;
    }
    anim.usedids[voice] = [];
    for (i = 0; i < var_46119ee4018a3e10; i++) {
        anim.usedids[voice][i] = spawnstruct();
        anim.usedids[voice][i].count = 0;
        anim.usedids[voice][i].npcid = "" + i + 1;
    }
    anim.countryids[voice] = countryid;
    anim.var_6d557183af1d1db5[countryid] = var_4189af81d34b8804;
    anim.var_7f532a5dc6603698[countryid] = var_10e927a072c477b;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x33ea
// Size: 0xfc
function function_2faee9e4cf862d61() {
    assert(!isdefined(anim.bcs_locations));
    triggers = getentarray("trigger_multiple", "code_classname");
    location_triggers = [];
    foreach (trigger in triggers) {
        if (!issubstr(trigger.classname, "trigger_multiple_bcs")) {
            continue;
        }
        location_triggers[location_triggers.size] = trigger;
        trigger.location = getsubstr(trigger.classname, 24, trigger.classname.size);
        if (trigger.spawnflags & 1) {
            trigger.islandmark = 1;
        }
    }
    level.battlechatter.location_triggers = location_triggers;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x34ee
// Size: 0x14
function shutdown_battlechatter() {
    level.battlechatter = undefined;
    level notify("battlechatter disabled");
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x350a
// Size: 0x9d
function function_1ea9d53684d11626() {
    level endon("battlechatter disabled");
    wait 1;
    for (;;) {
        players = level.players;
        players_processed = 0;
        for (p = 0; p < players.size; p++) {
            player = players[p];
            if (!isalive(player) || !isdefined(player.origin)) {
                continue;
            }
            if (istrue(player.var_7887f3c24e400953)) {
                continue;
            }
            player thread function_f46983dffe232870();
            players_processed++;
            if (players_processed >= 5) {
                players_processed = 0;
                waitframe();
            }
        }
        waitframe();
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x35af
// Size: 0x2bc
function function_f46983dffe232870() {
    self endon("death_or_disconnect");
    self.var_7887f3c24e400953 = 1;
    if (!istrue(self.bcs_init)) {
        thread bcs_initplayer();
        self.bcs_init = 1;
    }
    nearby_ai = function_fd9e4cb348a5f283(self.origin, level.var_8893859de4351996);
    nearby_ai = sortbydistance(nearby_ai, self.origin);
    count = min(nearby_ai.size, 10);
    for (i = 0; i < count; i++) {
        waitframe();
        count_ratio = (i + 1) / count;
        if (percent_chance((1 - count_ratio) * 15)) {
            continue;
        }
        guy = nearby_ai[i];
        if (!isalive(guy) || !isdefined(guy.battlechatter) || istrue(guy.battlechatter.var_91892eb738fd74cd)) {
            continue;
        }
        team = guy.team;
        origin = guy.origin;
        if (!isdefined(team) || !isdefined(origin)) {
            continue;
        }
        if (isdefined(guy.battlechatter.nextlooptime) && gettime() < guy.battlechatter.nextlooptime) {
            /#
                if (getdvarint(@"hash_44ef18550505e010")) {
                    print3d(origin + (0, 0, 80), "<dev string:x47>", (1, 1, 1), 1, 0.3, 1, 1);
                }
            #/
            continue;
        }
        state = guy getcombatstate();
        if (!isdefined(state) || !isdefined(guy.team)) {
            continue;
        }
        if (state == "dead" || guy.team == "neutral") {
            continue;
        }
        if (state == "combat" && guy function_8f59caa9212fcc56()) {
            continue;
        }
        /#
            if (getdvarint(@"hash_44ef18550505e010")) {
                function_51c8ea07cf76cbd7("<dev string:x59>" + "<dev string:x5f>" + state + "<dev string:x6a>" + "<dev string:x70>");
                print3d(origin + (0, 0, 100), "<dev string:x76>", (1, 1, 1), 1, 0.3, 20, 1);
            }
        #/
        guy thread function_4f4f4b31f8a95d9f(state);
        if (utility::issp()) {
            guy function_af3a6677d4327aae();
        } else {
            guy function_b145367392d5843d();
        }
        break;
    }
    self.var_7887f3c24e400953 = 0;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3873
// Size: 0x35, Type: bool
function function_8f8de1d6f307f960(var_a434cd7944a162af) {
    return isdefined(var_a434cd7944a162af) && isstring(var_a434cd7944a162af) && function_5b7e9a4c946f3a13(var_a434cd7944a162af, ["frag_grenade", "semtex"]);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x38b1
// Size: 0x30
function bcs_initplayer() {
    self endon("death");
    self notify("bcs_initPlayer");
    self endon("bcs_initPlayer");
    childthread function_1d7ef730acb50079();
    childthread function_c3307723c588c6e5();
    childthread function_c47965a0917525b3();
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x38e9
// Size: 0x3c
function function_1d7ef730acb50079() {
    self endon("disconnect");
    while (true) {
        self waittill("weapon_fired", weapon);
        self.last_weapon_fired_time = gettime();
        self.var_23f37822d0802641 = weapon;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x392d
// Size: 0x78
function function_c3307723c588c6e5() {
    while (true) {
        self waittill("grenade_fire", grenade);
        if (isdefined(grenade) && isdefined(grenade.weapon_object)) {
            var_fc3f189c0832aec2 = function_c666e714b2411844(grenade.weapon_object);
            if (isdefined(var_fc3f189c0832aec2)) {
                function_216c67ab6749137a(self, undefined, "grenade_throw", var_fc3f189c0832aec2);
                if (function_8f8de1d6f307f960(var_fc3f189c0832aec2)) {
                    function_216c67ab6749137a(self, grenade, "grenade_danger");
                }
            }
        }
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x39ad
// Size: 0x4d
function function_c47965a0917525b3() {
    while (true) {
        self waittill("missile_fire", missile, objweapon);
        var_fc3f189c0832aec2 = function_c666e714b2411844(objweapon);
        if (isdefined(var_fc3f189c0832aec2)) {
            function_216c67ab6749137a(self, undefined, "use", var_fc3f189c0832aec2);
        }
    }
}

/#

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 0
    // Checksum 0x0, Offset: 0x3a02
    // Size: 0xb9, Type: dev
    function function_8d7aee019b12c98f() {
        self endon("<dev string:x80>");
        self.var_8d7aee019b12c98f = 1;
        while (isdefined(self.origin) && isdefined(level.players[0]) && isdefined(level.players[0].origin)) {
            print3d(self.origin + (0, 0, 60), floor(distance(level.players[0].origin, self.origin)), (1, 1, 1), 1, 0.5, 1, 1);
            waitframe();
        }
        self.var_8d7aee019b12c98f = undefined;
    }

#/

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3ac3
// Size: 0xba
function function_af3a6677d4327aae(seconds, var_492d858d989a382) {
    if (!isdefined(seconds)) {
        seconds = function_42a6e01190025613(getcombatstate()) / 1000;
    }
    if (!isdefined(self.origin) || !isdefined(self.team)) {
        return function_b145367392d5843d(seconds, var_492d858d989a382);
    }
    foreach (ai in function_fd9e4cb348a5f283(self.origin, level.var_798aa343368f724e, self.team)) {
        ai function_b145367392d5843d(seconds, var_492d858d989a382);
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3b85
// Size: 0x82
function function_b145367392d5843d(seconds, var_492d858d989a382) {
    if (!isdefined(self.battlechatter)) {
        return;
    }
    if (!isdefined(seconds)) {
        delay_ms = function_42a6e01190025613(getcombatstate());
    } else {
        delay_ms = seconds * 1000;
    }
    self.battlechatter.nextlooptime = gettime() + delay_ms;
    if (istrue(var_492d858d989a382)) {
        self.battlechatter.var_3c94d4874d436201 = gettime() + delay_ms;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3c0f
// Size: 0x75
function function_3769e5550bed355b(state, min_delay, max_delay) {
    assertex(isnumber(min_delay), "Min delay must be a number");
    assertex(isnumber(max_delay), "Max delay must be a number");
    assertex(min_delay <= max_delay, "Min delay must be less than or equal to max delay");
    level.battlechatter.delays[state] = [min_delay, max_delay];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3c8c
// Size: 0x5b
function function_42a6e01190025613(state) {
    range = level.battlechatter.delays[state];
    if (!isdefined(range)) {
        range = level.battlechatter.delays["default"];
    }
    return randomfloatrange(range[0], range[1]) * 1000;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3cf0
// Size: 0x55
function function_90826d80aa1736cb(state, func) {
    if (!isdefined(level.battlechatter)) {
        return;
    }
    assert(isdefined(level.battlechatter.states));
    level.battlechatter.states[state] = func;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3d4d
// Size: 0x9c
function function_4f4f4b31f8a95d9f(state) {
    self endon("death");
    if (!isdefined(level.battlechatter)) {
        return;
    }
    assert(isdefined(level.battlechatter.states));
    func = level.battlechatter.states[state];
    if (!isdefined(func)) {
        return;
    }
    self.battlechatter.var_91892eb738fd74cd = 1;
    result = self [[ func ]]();
    self.battlechatter.var_91892eb738fd74cd = undefined;
    return result;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 6
// Checksum 0x0, Offset: 0x3df2
// Size: 0x10c
function addevent(event_name, sequence, priority, timeout, cooldown, endons) {
    if (!isdefined(level.battlechatter.events[event_name])) {
        level.battlechatter.events[event_name] = create_deck();
    }
    event = spawnstruct();
    event.sequence = sequence;
    event.priority = priority;
    event.timeout = timeout;
    event.cooldown = cooldown;
    event.endons = endons;
    index = level.battlechatter.events[event_name].items.size;
    level.battlechatter.events[event_name].items[index] = event;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3f06
// Size: 0x96
function addeventfunc(event_name, func) {
    if (!isdefined(level.battlechatter.events[event_name])) {
        level.battlechatter.events[event_name] = create_deck();
    }
    index = level.battlechatter.events[event_name].items.size;
    level.battlechatter.events[event_name].items[index] = func;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x3fa4
// Size: 0x124
function removeevent(event_name, var_d93390a0d7e03633) {
    if (!isdefined(level.battlechatter.events)) {
        return;
    }
    if (!isdefined(level.battlechatter.events[event_name])) {
        return;
    }
    new_items = [];
    foreach (var_4e26918d4dd88782 in level.battlechatter.events[event_name].items) {
        if (var_4e26918d4dd88782 == var_d93390a0d7e03633) {
            if (level.battlechatter.events[event_name].index > index) {
                level.battlechatter.events[event_name].index--;
            }
            continue;
        }
        new_items[new_items.size] = var_4e26918d4dd88782;
    }
    level.battlechatter.events[event_name].items = new_items;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x40d0
// Size: 0xcb, Type: bool
function executeevent(event_name, params) {
    if (!chatterallowed(self)) {
        return true;
    }
    if (!isdefined(level.battlechatter.events[event_name])) {
        return false;
    }
    event = level.battlechatter.events[event_name] deck_draw();
    if (isarray(params)) {
        params = array_removeundefined(params);
    }
    if (isfunction(event)) {
        thread call_with_params_script(event, params);
    } else {
        thread function_d54e84a9513b0e45(event_name, event.sequence, event.priority, event.timeout, event.cooldown, event.endons);
    }
    return true;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x41a4
// Size: 0x27
function function_4d19743dba541be4() {
    return ["axis", "allies", "neutral", "team3"];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x41d4
// Size: 0x1e
function function_cda75fb378a679eb() {
    return ["axis", "allies", "team3"];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x41fb
// Size: 0x15
function getenemyteams() {
    return ["axis", "team3"];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x4219
// Size: 0x15
function function_2b3a4945ae9faf96() {
    return ["allies", "neutral"];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 6, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x4237
// Size: 0x52
function function_d54e84a9513b0e45(var_c5dc0e000c5b1c69, sequence, priority, timeout, cooldown, endons) {
    chatter = createchatter(var_c5dc0e000c5b1c69, sequence, priority, timeout, cooldown, endons);
    return playchatter(chatter);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x4292
// Size: 0x89
function function_93b4f17e4a3474b(var_c5dc0e000c5b1c69, sequence, var_7e4b3bd714b23bc7, endons) {
    if (!isdefined(var_7e4b3bd714b23bc7)) {
        var_7e4b3bd714b23bc7 = level.battlechatter.settings[var_c5dc0e000c5b1c69];
    }
    if (isstring(var_7e4b3bd714b23bc7)) {
        var_7e4b3bd714b23bc7 = level.battlechatter.settings[var_7e4b3bd714b23bc7];
    }
    if (!isdefined(var_7e4b3bd714b23bc7)) {
        /#
            iprintlnbold("<dev string:x86>" + var_c5dc0e000c5b1c69);
        #/
        return;
    }
    return function_d54e84a9513b0e45(var_c5dc0e000c5b1c69, sequence, var_7e4b3bd714b23bc7[0], var_7e4b3bd714b23bc7[1], var_7e4b3bd714b23bc7[2], endons);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4324
// Size: 0x215
function private playchatter(chatter) {
    retstruct = undefined;
    speaker = default_to(self.vo_parent, self);
    /#
        if (getdvarint(@"hash_864d3ab12f741516") == 1 || getdvarint(@"hash_864d3ab12f741516") == 2) {
            retstruct = spawnstruct();
        }
    #/
    if (!istrue(chatter.forced) && !speaker canchatter(undefined, undefined, retstruct)) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 2) {
                function_51c8ea07cf76cbd7("<dev string:xa1>" + default_to(chatter.name, "<dev string:xb4>") + "<dev string:xc0>" + function_55f43964ccdb5b95(speaker) + "<dev string:xc0>" + default_to(retstruct.text, "<dev string:xc2>"));
            }
        #/
        chatter.finished_or_cancelled = 1;
        chatter notify("finished_or_cancelled");
        return 0;
    }
    if (isdefined(chatter.name) && !check_cooldown(chatter.name)) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 2) {
                var_724d97199668ae7e = function_ea8354c6061a8b67(chatter.name);
                extra = "<dev string:xc2>";
                if (var_724d97199668ae7e != chatter.name) {
                    extra = "<dev string:xc3>" + var_724d97199668ae7e;
                }
                function_51c8ea07cf76cbd7("<dev string:xd3>" + chatter.name + "<dev string:xc0>" + function_55f43964ccdb5b95(speaker) + extra);
            }
        #/
        chatter.finished_or_cancelled = 1;
        chatter notify("finished_or_cancelled");
        return 0;
    }
    if (utility::issp()) {
        speaker function_af3a6677d4327aae();
    } else {
        speaker function_b145367392d5843d();
    }
    speaker set_cooldown(chatter.name, chatter.cooldown);
    level.battlechatter notify("chatter_added", chatter);
    chatter thread function_ac907769b9d391cb();
    return chatter;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 6
// Checksum 0x0, Offset: 0x4542
// Size: 0x52
function function_b9cc4ff760926456(name, sequence, priority, timeout, cooldown, endons) {
    chatter = createchatter(name, sequence, priority, timeout, cooldown, endons);
    return function_f6e959db9fb34ff3(chatter);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x459d
// Size: 0x1b
function function_f6e959db9fb34ff3(chatter) {
    playchatter(chatter);
    waitchatter(chatter);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x45c0
// Size: 0x4e
function waitchatter(chatter) {
    if (!isdefined(chatter) || !isstruct(chatter)) {
        return;
    }
    if (!istrue(chatter.finished_or_cancelled)) {
        chatter waittill("finished_or_cancelled");
    }
    if (isdefined(chatter.finished)) {
        return chatter.finished;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x4616
// Size: 0x3b2
function function_ac907769b9d391cb() {
    self.finished = 0;
    self.finished_or_cancelled = 0;
    self.speaker.var_44e1869b50a57309 = self.scope;
    self.speaker notify("started_queue_wait", self);
    cancelled = self.scope_ents[self.scope] function_f2a79001721945a(self, self.timeout, self.endons);
    self.speaker notify("finished_queue_wait", self, cancelled);
    if (!istrue(cancelled) && (istrue(self.forced) || default_to(self.speaker.vo_parent, self.speaker) canchatter())) {
        level.battlechatter notify("chatter_started", self);
        self.speaker.var_ec9f57e7698baffb = self.priority;
        foreach (ent in self.scope_ents) {
            ent function_797820cad48747ef(self);
        }
        self notify("proceeded");
        while (isdefined(self.finished) && !self.finished) {
            self.finished = function_a9c351ded2cf6ce4();
        }
        if (is_dead_or_dying(self.speaker)) {
            self.speaker stop_dialogue();
            if (isdefined(self.var_b1cc80f4b3875f46)) {
                self.listener function_93b4f17e4a3474b(self.name + "_interrupt", self.var_b1cc80f4b3875f46, level.battlechatter.settings["_interrupt"]);
            }
        }
        if (istrue(self.finished)) {
            if (self.name == "idle_convo" || self.name == "idle") {
                self.speaker set_cooldown(self.name, level.var_dafa42d7384e9ef5);
            } else {
                self.speaker set_cooldown(self.name, self.cooldown);
            }
        }
        foreach (ent in self.scope_ents) {
            ent remove_vo_data(self);
        }
    } else {
        self notify("proceeded");
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 2 && self.speaker canchatter()) {
                function_51c8ea07cf76cbd7("<dev string:xe4>" + default_to(self.name, "<dev string:xb4>") + "<dev string:xc0>" + function_55f43964ccdb5b95(self.speaker));
            } else if (getdvarint(@"hash_864d3ab12f741516") == 2) {
                function_51c8ea07cf76cbd7("<dev string:xf4>" + default_to(self.name, "<dev string:xb4>") + "<dev string:xc0>" + function_55f43964ccdb5b95(self.speaker));
            }
        #/
    }
    function_ab8711048f02259d(self.scope_ents);
    self.speaker notify("chatter_finished_or_cancelled", self);
    level.battlechatter notify("chatter_finished_or_cancelled", self);
    self.finished_or_cancelled = 1;
    self notify("finished_or_cancelled");
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x49d0
// Size: 0x8e2
function function_a9c351ded2cf6ce4() {
    if (is_dead_or_dying(self.speaker)) {
        if (isdefined(self.var_b1cc80f4b3875f46)) {
            switchspeaker();
            self.sequence = self.var_b1cc80f4b3875f46;
            self.index = 0;
            self.var_b1cc80f4b3875f46 = undefined;
        } else {
            /#
                if (getdvarint(@"hash_864d3ab12f741516")) {
                    function_51c8ea07cf76cbd7("<dev string:x112>" + default_to(self.name, "<dev string:xb4>"));
                }
            #/
            return;
        }
    }
    self.speaker notify("stop_bcs_sequence");
    self.speaker endon("death");
    self.speaker endon("stop_bcs_sequence");
    self.speaker endon("removed from battleChatter");
    endon_ent = self.speaker;
    foreach (endon_data in self.endons) {
        if (isent(endon_data) || isstruct(endon_data)) {
            endon_ent = endon_data;
            continue;
        }
        if (isstring(endon_data)) {
            endon_ent endon(endon_data);
        }
    }
    if (!isdefined(self.sequence) || !isdefined(self.index)) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516")) {
                function_51c8ea07cf76cbd7("<dev string:x125>" + default_to(self.name, "<dev string:xb4>"));
            }
        #/
        return;
    }
    vo_queue = level.vo_teams[self.speaker.team].vo_queue;
    if (vo_queue.size > 0 && vo_queue[0].priority > self.priority) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516")) {
                function_51c8ea07cf76cbd7("<dev string:x144>" + default_to(self.name, "<dev string:xb4>") + "<dev string:x157>" + self.priority + "<dev string:x159>" + default_to(vo_queue[0].name, "<dev string:xb4>") + "<dev string:x157>" + vo_queue[0].priority);
            }
        #/
        return;
    }
    if (self.index >= self.sequence.size) {
        return 1;
    }
    self.alias = undefined;
    if (utility::issp()) {
        self.speaker function_af3a6677d4327aae();
    } else {
        self.speaker function_b145367392d5843d();
    }
    segment = self.sequence[self.index];
    self.index++;
    if (isstring(segment)) {
        self.alias = function_5b9db2cb162b207a(segment);
        /#
            self.sequence[self.index - 1] = self.alias;
        #/
        if (!soundexists(self.alias)) {
            if (istrue(self.var_b7b89212841eaa3f)) {
                self.var_b7b89212841eaa3f = undefined;
                return 0;
            }
            /#
                if (getdvarint(@"hash_864d3ab12f741516")) {
                    if (!isdefined(self.speaker.battlechatter.countryid)) {
                        function_51c8ea07cf76cbd7("<dev string:x15d>" + default_to(self.name, "<dev string:xb4>") + "<dev string:x16e>" + self.speaker getentitynumber() + "<dev string:x174>" + default_to(anim.countryids[self.speaker.voice], "<dev string:xc2>") + "<dev string:x189>" + default_to(self.speaker.voice, "<dev string:xc2>"));
                        return;
                    }
                    if (self.alias == "<dev string:xc2>") {
                        function_51c8ea07cf76cbd7("<dev string:x190>" + default_to(self.name, "<dev string:xb4>") + "<dev string:x1ac>" + self.speaker.battlechatter.countryid + "<dev string:x1b0>" + segment + "<dev string:x1b3>");
                        return;
                    }
                    function_51c8ea07cf76cbd7("<dev string:x1b5>" + default_to(self.name, "<dev string:xb4>") + "<dev string:x1cc>" + self.alias + "<dev string:x1d0>" + "<dev string:x1d8>" + self.speaker.battlechatter.countryid + "<dev string:x1b0>" + segment + "<dev string:x1b3>");
                }
            #/
            return;
        }
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 1 || getdvarint(@"hash_864d3ab12f741516") == 2) {
                retstruct = spawnstruct();
            }
        #/
        if (!istrue(self.forced) && !default_to(self.speaker.vo_parent, self.speaker) canchatter(undefined, undefined, retstruct)) {
            /#
                if (getdvarint(@"hash_864d3ab12f741516")) {
                    function_51c8ea07cf76cbd7("<dev string:x1da>" + default_to(self.name, "<dev string:xb4>") + "<dev string:xc0>" + function_55f43964ccdb5b95(default_to(self.speaker.vo_parent, self.speaker)) + "<dev string:xc0>" + default_to(retstruct.text));
                }
            #/
            return;
        }
        if (!has_priority(self.scope_ents[self.scope].vo_active, 1)) {
            /#
                if (getdvarint(@"hash_864d3ab12f741516")) {
                    function_51c8ea07cf76cbd7("<dev string:x1f1>" + default_to(self.name, "<dev string:xb4>"));
                }
            #/
            return;
        }
        /#
            if (getdvarint(@"hash_864d3ab12f741516") && !istrue(self.var_589023656a9e531)) {
                self.var_589023656a9e531 = 1;
                function_51c8ea07cf76cbd7("<dev string:x205>" + default_to(self.name, "<dev string:xb4>") + "<dev string:xc0>" + function_55f43964ccdb5b95(self.owner));
            }
        #/
        finished = self.speaker function_7b52f05da542c2ff(self.alias, self.overlap, self.scope_ents[self.scope], self.receivers);
        if (!istrue(finished)) {
            /#
                if (getdvarint(@"hash_864d3ab12f741516")) {
                    function_51c8ea07cf76cbd7("<dev string:x210>" + default_to(self.name, "<dev string:xb4>"));
                }
            #/
            return;
        }
        return 0;
    } else if (isnumber(segment)) {
        if (segment <= 0) {
            return 0;
        }
        wait segment;
        return 0;
    } else if (isent(segment) || isstruct(segment)) {
        result = switchspeaker(segment);
        if (isint(result) && result == 0) {
            /#
                if (getdvarint(@"hash_864d3ab12f741516")) {
                    function_51c8ea07cf76cbd7("<dev string:x226>" + default_to(self.name, "<dev string:xb4>"));
                }
            #/
            return;
        } else {
            return 0;
        }
    } else if (isfunction(segment)) {
        result = self [[ segment ]]();
        if (isdefined(result)) {
            if (isint(result) && result == 0) {
                /#
                    if (getdvarint(@"hash_864d3ab12f741516")) {
                        function_51c8ea07cf76cbd7("<dev string:x241>" + default_to(self.name, "<dev string:xb4>") + "<dev string:x25b>" + self.index - 1 + "<dev string:x1b3>");
                    }
                #/
                return;
            }
            if (isarray(result)) {
                self.sequence = function_ef4b3df86351aa00(self.sequence, result, self.index);
            } else {
                self.sequence = array_insert(self.sequence, result, self.index);
            }
        }
        return 0;
    } else if (isarray(segment)) {
        self.sequence = function_ef4b3df86351aa00(self.sequence, segment, self.index);
        return 0;
    }
    /#
        if (getdvarint(@"hash_864d3ab12f741516")) {
            function_51c8ea07cf76cbd7("<dev string:x265>" + self.index + "<dev string:x27f>" + default_to(self.name, "<dev string:xb4>"));
        }
    #/
}

/#

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 2
    // Checksum 0x0, Offset: 0x52bb
    // Size: 0x38, Type: dev
    function function_51c8ea07cf76cbd7(text, var_73a14d94e40a8d15) {
        if (isdefined(var_73a14d94e40a8d15)) {
            var_73a14d94e40a8d15.text = text;
            return;
        }
        scripts\common\debug::function_7320cd1e4f724899(text);
        println(text);
    }

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 0
    // Checksum 0x0, Offset: 0x52fb
    // Size: 0x708, Type: dev
    function function_a8c755adb8698257() {
        level endon("<dev string:x28a>");
        player = undefined;
        for (;;) {
            if (!getdvarint(@"hash_864d3ab12f741516") || !isdefined(level.battlechatter) || !isdefined(level.vo_active)) {
            } else {
                var_aaaa8a8df8f5c537 = getdvarint(@"hash_b7c9a158890bce5a", 1920);
                var_ab5696f7e031e1ba = getdvarint(@"hash_9139b4ad2f235c95", 1080);
                var_39c991ead8822d9b = getdvarint(@"hash_b7c9a158890bce5a") / 1920;
                var_3f109f5aaf427a = getdvarint(@"hash_9139b4ad2f235c95") / 1080;
                setdvarifuninitialized(@"hash_91d2bfdbf8875369", 350);
                setdvarifuninitialized(@"hash_91d2bedbf8875136", 250);
                setdvarifuninitialized(@"hash_4fd3148b1459a83", 0.8);
                base_x = getdvarint(@"hash_91d2bfdbf8875369") * var_39c991ead8822d9b;
                base_y = getdvarint(@"hash_91d2bedbf8875136") * var_3f109f5aaf427a;
                base_scale = getdvarfloat(@"hash_4fd3148b1459a83") * var_3f109f5aaf427a;
                ln_height = 0;
                for (k = 0; k < level.vo_active.size; k++) {
                    if (!istrue(level.vo_active[k].ischatter)) {
                        continue;
                    }
                    chatter = level.vo_active[k];
                    sequence = chatter.sequence;
                    if (isdefined(chatter.name)) {
                        speaker = default_to(chatter.speaker.vo_parent, chatter.speaker);
                        if (isstruct(chatter.speaker) && isdefined(chatter.speaker.vo_parent)) {
                            speaker_text = "<dev string:x2a1>" + speaker getentitynumber() + "<dev string:x2a4>";
                        } else if (isstruct(chatter.speaker)) {
                            speaker_text = "<dev string:x2a1>" + "<dev string:x2ab>" + "<dev string:x2a4>";
                        } else {
                            speaker_text = "<dev string:x2a1>" + speaker getentitynumber();
                        }
                        event_info = "<dev string:x2b0>" + speaker_text + "<dev string:x2b4>" + chatter.name + "<dev string:x2b7>";
                        if (!isdefined(speaker.team)) {
                            color = (1, 1, 1);
                        } else {
                            color = ter_op(speaker.team == "<dev string:x2bb>", (0.1, 0.9, 0.1), (1, 0.2, 0.2));
                        }
                        pos_y = base_y + ln_height;
                        printtoscreen2d(base_x + 2, pos_y, event_info, (0, 0, 0), 1.75 * base_scale);
                        printtoscreen2d(base_x, pos_y + 2, event_info, (0, 0, 0), 1.75 * base_scale);
                        printtoscreen2d(base_x, pos_y, event_info, color, 1.75 * base_scale);
                        if (!isdefined(player)) {
                            player = getclosestplayer((0, 0, 0));
                        }
                        if (isdefined(player)) {
                            cam_x = mapfloat(0, var_aaaa8a8df8f5c537, 380, -380, base_x * 0.5);
                            cam_y = mapfloat(0, var_ab5696f7e031e1ba, -240, 240, pos_y * 0.5);
                            var_796003daa202b1f3 = player function_e4f6daea7b92c762((cam_x, cam_y, 0), 65, 5, 1);
                            line(speaker.origin, var_796003daa202b1f3, color);
                            debugstar(speaker.origin, color, 1, speaker_text);
                        }
                        ln_height += 30 * base_scale;
                    }
                    for (i = 0; i < sequence.size; i++) {
                        display_ln = undefined;
                        segment = sequence[i];
                        if (isstring(segment)) {
                            if (!isstartstr(segment, "<dev string:x2c2>")) {
                                alias = segment;
                            } else {
                                alias = chatter function_5b9db2cb162b207a(segment);
                                alias = getsubstr(alias, 6, alias.size);
                            }
                            display_ln = "<dev string:x2c6>" + ter_op(isdefined(alias), alias, segment);
                        } else if (isnumber(segment)) {
                            display_ln = "<dev string:x2cc>" + segment + "<dev string:x2d3>";
                        } else if (isent(segment)) {
                            ent_num = "<dev string:x2a1>" + segment getentitynumber();
                            display_ln = "<dev string:x2d8>";
                            if (isdefined(segment.animname)) {
                                display_ln += segment.animname + "<dev string:x2ec>" + ent_num + "<dev string:x2ef>";
                            } else {
                                display_ln += ent_num;
                            }
                        } else if (isstruct(segment) && isdefined(segment.vo_parent)) {
                            ent_num = "<dev string:x2a1>" + segment.vo_parent getentitynumber();
                            display_ln = "<dev string:x2d8>";
                            if (isdefined(segment.vo_parent.animname)) {
                                display_ln += segment.vo_parent.animname + "<dev string:x2f1>" + ent_num + "<dev string:x2ef>";
                            } else {
                                display_ln += ent_num + "<dev string:x2fc>";
                            }
                        } else if (isfunction(segment)) {
                            display_ln = "<dev string:x305>";
                        }
                        if (isdefined(display_ln)) {
                            is_index = i == chatter.index - 1;
                            color = ter_op(is_index, (1, 1, 0), (1, 1, 1));
                            space = ter_op(is_index, 32, 25) * base_scale;
                            scale = ter_op(is_index, 1.85, 1.5) * base_scale;
                            printtoscreen2d(base_x + 2, base_y + 2 + ln_height + is_index * 10 * base_scale, display_ln, (0, 0, 0), scale);
                            printtoscreen2d(base_x + 2, base_y + 2 + ln_height + is_index * 10 * base_scale, display_ln, (0, 0, 0), scale);
                            printtoscreen2d(base_x, base_y + ln_height + is_index * 10 * base_scale, display_ln, color, scale);
                            ln_height += space;
                        }
                    }
                    if (k < level.vo_active.size - 1) {
                        printtoscreen2d(base_x, base_y + ln_height, "<dev string:x313>", (1, 1, 1), 1.5 * base_scale);
                        ln_height += 30 * base_scale;
                    }
                }
            }
            waitframe();
        }
    }

#/

// Namespace battlechatter / scripts\anim\battlechatter
// Params 6, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5a0b
// Size: 0x1b7
function private createchatter(name, sequence, priority, timeout, cooldown, endons) {
    chatter = spawnstruct();
    chatter.name = name;
    chatter.scope = default_to(level.battlechatter.scope, "team");
    chatter.owner = self;
    chatter.speaker = self;
    chatter.scope_ents = function_28e38eefd3cc4ab();
    chatter.ischatter = 1;
    if (!isarray(sequence)) {
        sequence = [sequence];
    }
    chatter.index = 0;
    chatter.sequence = sequence;
    chatter.forced = isdefined(level.battlechatter) && isdefined(self.battlechatter) && istrue(self.battlechatter.friendlyfire_force) && name == "friendlyfire";
    chatter.priority = default_to(priority, 0);
    chatter.timeout = default_to(timeout, 1);
    chatter.cooldown = default_to(cooldown, 0);
    chatter.endons = default_to(endons, []);
    chatter.overlap = 1;
    if (!isarray(chatter.endons)) {
        chatter.endons = [chatter.endons];
    }
    return chatter;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x5bcb
// Size: 0x79
function function_a4ba1099ac49c74(sequence) {
    foreach (segment in sequence) {
        if (isarray(segment)) {
            result = function_a4ba1099ac49c74(segment);
            if (isdefined(result)) {
                return result;
            }
        }
        if (isent(segment)) {
            return segment;
        }
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x5c4c
// Size: 0x79
function function_c2aafbdbd7ff7b82(sequence) {
    foreach (segment in sequence) {
        if (isarray(segment)) {
            result = function_c2aafbdbd7ff7b82(segment);
            if (isdefined(result)) {
                return result;
            }
        }
        if (isstring(segment)) {
            return segment;
        }
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x5ccd
// Size: 0x288
function function_5b9db2cb162b207a(event_string) {
    if (isstartstr(event_string, "dx_")) {
        return event_string;
    }
    if (!isstartstr(event_string, "~") && !isstartstr(event_string, "c_") && !isstartstr(event_string, "s_")) {
        event_string = self.speaker event_lookup(event_string);
    }
    if (!isdefined(event_string)) {
        return "";
    }
    if (isstartstr(event_string, "dx_")) {
        return event_string;
    }
    segs = strtok(event_string, "_");
    char = default_to(function_8af9f89d6344a3df(self.speaker), "");
    countryid = default_to(self.speaker.battlechatter.countryid, "");
    if (isdefined(self.speaker.battlechatter.var_96a045a4858e3f20)) {
        countryid = self.speaker.battlechatter.var_96a045a4858e3f20;
    }
    if (segs.size > 2) {
        if (isdefined(countryid)) {
            if (segs[0] == "s") {
                segs[0] = anim.var_7f532a5dc6603698[countryid];
            } else {
                segs[0] = anim.var_6d557183af1d1db5[countryid];
            }
        }
        if (!isdefined(countryid) || !isdefined(segs[0])) {
            segs[0] = "hrcm";
        }
    }
    switch (segs.size) {
    case 4:
        return ("dx_bc_" + segs[0] + "_" + segs[1] + "_" + char + "_" + segs[2] + "_" + segs[3]);
    case 3:
        return ("dx_bc_" + segs[0] + "_" + segs[1] + "_" + char + "_" + segs[2]);
    case 2:
        return ("dx_bc_" + segs[0] + "_" + char + "_" + segs[1]);
    case 1:
        if (istrue(self.speaker.battlechatter.isleader)) {
            return ("dx_guid" + segs[0]);
        } else {
            return ("dx_guid" + segs[0] + "_" + char);
        }
    default:
        assertmsg("Invalid battlechatter event '" + event_string + "'");
        break;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x5f5d
// Size: 0x63
function lookupchatter(event_string) {
    if (!isdefined(level.battlechatter.var_642abcb792d36a72)) {
        function_fa9c799417080957();
    }
    if (isdefined(level.battlechatter.var_642abcb792d36a72[event_string])) {
        return level.battlechatter.var_642abcb792d36a72[event_string] deck_draw();
    }
    return event_string;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x5fc8
// Size: 0x17
function function_fa9c799417080957() {
    level.battlechatter.var_642abcb792d36a72 = [];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x5fe7
// Size: 0xf5
function function_8af9f89d6344a3df(speaker) {
    if (isdefined(speaker.battlechatter.charoverride)) {
        return tolower(speaker.battlechatter.charoverride);
    }
    npcid = default_to(speaker.battlechatter.npcid, "");
    if (npcid.size == 4) {
        return tolower(npcid);
    }
    countryid = default_to(speaker.battlechatter.countryid, "");
    if (isdefined(speaker.battlechatter.var_96a045a4858e3f20)) {
        countryid = speaker.battlechatter.var_96a045a4858e3f20;
    }
    if (countryid == "RU") {
        return tolower(countryid + "0" + npcid);
    }
    return tolower(countryid + npcid);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x60e5
// Size: 0xa5
function function_c5f095386a46f1e8(type) {
    type = default_to(type, "stealth");
    switch (type) {
    case #"hash_3d5f49f17b95335c":
        otn = getdvar(@"hash_495535a4877b324d") != "off";
        return ter_op(otn, "otn_", "cst_");
    case #"hash_44e999799ff10fce":
        return "vom_";
    default:
        otn = getdvar(@"hash_87dca5163728ce02") != "off";
        return ter_op(otn, "otn_", "cbc_");
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6192
// Size: 0xc6
function getgamemode() {
    if (isdefined(level.gamemode)) {
        return level.gamemode;
    }
    mapname = getdvar(@"mapname");
    switch (getsubstr(mapname, 0, 3)) {
    case #"hash_2865036c1ee43ae5":
        if (getsubstr(mapname, 0, 6) == "mp_br_") {
            level.gamemode = "br";
        } else {
            level.gamemode = "mp";
        }
        break;
    case #"hash_1a50316c17b5a73b":
        level.gamemode = "cp";
        break;
    default:
        level.gamemode = "sp";
        break;
    }
    return level.gamemode;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6261
// Size: 0xeb
function getlocation() {
    if (!isdefined(level.battlechatter.location_triggers)) {
        return;
    }
    location_triggers = self getistouchingentities(level.battlechatter.location_triggers);
    if (location_triggers.size == 0) {
        return;
    }
    locations = [];
    foreach (trigger in location_triggers) {
        var_2dab9fb88c214a2e = isdefined(trigger.islandmark) && level.player istouching(trigger);
        if (var_2dab9fb88c214a2e || !isdefined(trigger.location)) {
            continue;
        }
        locations[locations.size] = trigger.location;
    }
    return random(locations);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6355
// Size: 0xa8, Type: bool
function chatterallowed(guy) {
    if (!isdefined(level.battlechatter) || !isdefined(self.battlechatter)) {
        return false;
    }
    team = default_to(guy.team, "");
    var_b2118e1ec1b42f84 = !istrue(guy.battlechatterallowed);
    var_b9dcc79eda6d673d = isdefined(level.var_edce163bbab4f0ce) && istrue(level.var_edce163bbab4f0ce[team]);
    all_disabled = istrue(level.battlechatterdisabled);
    return !var_b2118e1ec1b42f84 && !var_b9dcc79eda6d673d && !all_disabled;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6406
// Size: 0x1d2, Type: bool
function canchatter(requiredstate, sighttarget, var_73a14d94e40a8d15, var_4acfa36a6dd8b797) {
    if (is_dead_or_dying(self) || !isdefined(self.team) || !isdefined(self.origin) || !chatterallowed(self)) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 3 || isdefined(var_73a14d94e40a8d15)) {
                function_51c8ea07cf76cbd7("<dev string:x335>", var_73a14d94e40a8d15);
            }
        #/
        return false;
    }
    if (isdefined(requiredstate) && getcombatstate() != requiredstate) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 3 || isdefined(var_73a14d94e40a8d15)) {
                function_51c8ea07cf76cbd7("<dev string:x372>", var_73a14d94e40a8d15);
            }
        #/
        return false;
    }
    if (isdefined(sighttarget)) {
        var_4acfa36a6dd8b797 = default_to(var_4acfa36a6dd8b797, 2);
        if (!self seerecently(sighttarget, var_4acfa36a6dd8b797)) {
            /#
                if (getdvarint(@"hash_864d3ab12f741516") == 3 || isdefined(var_73a14d94e40a8d15)) {
                    function_51c8ea07cf76cbd7("<dev string:x3a0>", var_73a14d94e40a8d15);
                }
            #/
            return false;
        }
    }
    if (istrue(self.in_melee_death)) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 3 || isdefined(var_73a14d94e40a8d15)) {
                function_51c8ea07cf76cbd7("<dev string:x3c5>", var_73a14d94e40a8d15);
            }
        #/
        return false;
    }
    if (istrue(self._animactive) && !istrue(self.battlechatter.var_7be5dbf61ca23f11)) {
        /#
            if (getdvarint(@"hash_864d3ab12f741516") == 3 || isdefined(var_73a14d94e40a8d15)) {
                function_51c8ea07cf76cbd7("<dev string:x3d4>", var_73a14d94e40a8d15);
            }
        #/
        return false;
    }
    if (isplayer(self)) {
        return true;
    }
    if (!getplayersinrange(self.origin, level.var_63a73645a8e030ad).size > 0) {
        /#
            if (isdefined(var_73a14d94e40a8d15)) {
                function_51c8ea07cf76cbd7("<dev string:x3e3>", var_73a14d94e40a8d15);
            }
        #/
        return false;
    }
    return true;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x65e1
// Size: 0x26
function bc_prefix(type) {
    return "dx_" + function_c5f095386a46f1e8(type) + function_8af9f89d6344a3df(self) + "_";
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6610
// Size: 0x41
function private function_ea8354c6061a8b67(chatter_name) {
    chatter_settings = level.battlechatter.settings[chatter_name];
    if (isdefined(chatter_settings) && isstring(chatter_settings)) {
        return chatter_settings;
    }
    return chatter_name;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6659
// Size: 0x107, Type: bool
function check_cooldown(name, players) {
    name = function_ea8354c6061a8b67(name);
    if (!isdefined(players)) {
        if (utility::issp()) {
            players = [level.player];
        } else {
            players = getplayersinrange(self.origin, level.var_63a73645a8e030ad);
        }
    }
    foreach (player in players) {
        if (!isdefined(player.var_9d0c877b6e13853e) || !isdefined(player.var_9d0c877b6e13853e[self.team])) {
            continue;
        }
        if (!isdefined(player.var_9d0c877b6e13853e[self.team][name])) {
            continue;
        }
        if (gettime() < player.var_9d0c877b6e13853e[self.team][name]) {
            return false;
        }
    }
    return true;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3
// Checksum 0x0, Offset: 0x6769
// Size: 0x3d, Type: bool
function function_161bd3732c0afbce(name, duration, players) {
    name = function_ea8354c6061a8b67(name);
    if (!check_cooldown(name, players)) {
        return false;
    }
    set_cooldown(name, duration, players);
    return true;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x67af
// Size: 0x166
function set_cooldown(name, duration, players) {
    if (!isdefined(name) || !isdefined(duration) || !isdefined(self.origin)) {
        return;
    }
    name = function_ea8354c6061a8b67(name);
    if (!isdefined(players)) {
        if (utility::issp()) {
            players = [level.player];
        } else {
            players = getplayersinrange(self.origin, level.var_63a73645a8e030ad);
        }
    }
    foreach (player in players) {
        if (!isdefined(player.var_9d0c877b6e13853e)) {
            player.var_9d0c877b6e13853e = [];
        }
        if (!isdefined(player.var_9d0c877b6e13853e[self.team])) {
            player.var_9d0c877b6e13853e[self.team] = [];
        }
        player.var_9d0c877b6e13853e[self.team][name] = gettime() + duration * 1000;
        if (utility::ismp()) {
            player.var_9d0c877b6e13853e[self.team] = function_ab7df904aa60d433(player.var_9d0c877b6e13853e[self.team], 5);
        }
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x691d
// Size: 0xee
function clear_cooldown(name) {
    if (!isdefined(name) || !isdefined(self.origin)) {
        return;
    }
    name = function_ea8354c6061a8b67(name);
    if (utility::issp()) {
        players = [level.player];
    } else {
        players = getplayersinrange(self.origin, level.var_63a73645a8e030ad);
    }
    foreach (player in players) {
        if (!isdefined(player.var_9d0c877b6e13853e)) {
            continue;
        }
        if (!isdefined(player.var_9d0c877b6e13853e[self.team])) {
            continue;
        }
        player.var_9d0c877b6e13853e[self.team][name] = undefined;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6a13
// Size: 0x126
function switchspeaker(new_speaker) {
    if (!isdefined(new_speaker)) {
        new_speaker = self.listener;
    }
    if (!isdefined(new_speaker)) {
        new_speaker = function_132875639c660348();
    }
    if (isint(new_speaker) && new_speaker == 0) {
        return 0;
    }
    foreach (ent in self.scope_ents) {
        ent remove_vo_data(self);
    }
    self.listener = self.speaker;
    self.speaker = new_speaker;
    self.speaker.var_ec9f57e7698baffb = self.priority;
    self.scope_ents = self.speaker function_28e38eefd3cc4ab();
    foreach (ent in self.scope_ents) {
        ent function_797820cad48747ef(self);
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6b41
// Size: 0x24
function function_132875639c660348() {
    newspeaker = self.speaker function_d8c3c539bc71c7af();
    if (isdefined(newspeaker)) {
        return newspeaker;
    }
    return 0;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6b6e
// Size: 0x24
function function_12014207b3e66976() {
    newspeaker = self.speaker getclosestfriendlyspeaker();
    if (isdefined(newspeaker)) {
        return newspeaker;
    }
    return 0;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6b9b
// Size: 0x24
function function_2a9c2c2765055f10() {
    newspeaker = self.speaker function_6b500fae7c3e61da();
    if (isdefined(newspeaker)) {
        return newspeaker;
    }
    return 0;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6bc8
// Size: 0x24
function function_ce07522e02781160() {
    newspeaker = function_573b9ff9ed152518(self.speaker);
    if (isdefined(newspeaker)) {
        return newspeaker;
    }
    return 0;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6bf5
// Size: 0x24
function function_afd322664ba54fa7() {
    newspeaker = function_592f13f1a0e078ff(self.speaker);
    if (isdefined(newspeaker)) {
        return newspeaker;
    }
    return 0;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6c22
// Size: 0xaf
function function_78a4669238a942e8() {
    rank = getrankvalue();
    if (!isdefined(rank)) {
        return getaiarray(self.team);
    }
    subordinates = [];
    foreach (guy in getaiarray(self.team)) {
        if (guy == self) {
            continue;
        }
        guy_rank = guy getrankvalue();
        if (isdefined(guy_rank) && guy_rank < rank) {
            subordinates[subordinates.size] = guy;
        }
    }
    return subordinates;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6cda
// Size: 0xaf
function function_78be0fae168f6d5() {
    rank = getrankvalue();
    if (!isdefined(rank)) {
        return getaiarray(self.team);
    }
    superiors = [];
    foreach (guy in getaiarray(self.team)) {
        if (guy == self) {
            continue;
        }
        guy_rank = guy getrankvalue();
        if (isdefined(guy_rank) && guy_rank > rank) {
            superiors[superiors.size] = guy;
        }
    }
    return superiors;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6d92
// Size: 0x34
function function_401ec0642c92d2eb() {
    return ter_op(self.team == "axis" || self.team == "team3", "allies", "bad_guys");
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6dcf
// Size: 0x68
function function_6e80d82709faefd() {
    npcid = undefined;
    if (isdefined(self.battlechatter)) {
        npcid = self.battlechatter.npcid;
    }
    new_speaker = function_248a7374a1a0605a(self.origin, function_78a4669238a942e8(), npcid);
    if (!isdefined(new_speaker)) {
        new_speaker = getclosestfriendlyspeaker(self.team);
    }
    return new_speaker;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6e40
// Size: 0x68
function function_a271b08319ea86ae() {
    npcid = undefined;
    if (isdefined(self.battlechatter)) {
        npcid = self.battlechatter.npcid;
    }
    new_speaker = function_248a7374a1a0605a(self.origin, function_78be0fae168f6d5(), npcid);
    if (!isdefined(new_speaker)) {
        new_speaker = getclosestfriendlyspeaker(self.team);
    }
    return new_speaker;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6eb1
// Size: 0x5f
function function_6b500fae7c3e61da() {
    npcid = undefined;
    if (isdefined(self.battlechatter)) {
        npcid = self.battlechatter.npcid;
    }
    new_speaker = function_b1ab02cfbfd12e43(function_78a4669238a942e8(), npcid);
    if (!isdefined(new_speaker)) {
        new_speaker = function_d8c3c539bc71c7af(self.team);
    }
    return new_speaker;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x6f19
// Size: 0x5f
function function_e5e9db75fe72e36f() {
    npcid = undefined;
    if (isdefined(self.battlechatter)) {
        npcid = self.battlechatter.npcid;
    }
    new_speaker = function_b1ab02cfbfd12e43(function_78be0fae168f6d5(), npcid);
    if (!isdefined(new_speaker)) {
        new_speaker = function_d8c3c539bc71c7af(self.team);
    }
    return new_speaker;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6f81
// Size: 0xd0
function getclosestfriendlyspeaker(team, requiredstate, requiresight, maxdist) {
    team = default_to(team, self.team);
    maxdist = default_to(maxdist, level.var_798aa343368f724e);
    if (!isdefined(team) || team == "dead") {
        return;
    }
    if (!isdefined(self.origin)) {
        return;
    }
    npcid = undefined;
    if (isdefined(self.battlechatter) && isdefined(self.battlechatter.npcid)) {
        npcid = self.battlechatter.npcid;
    }
    return function_248a7374a1a0605a(self.origin, function_fd9e4cb348a5f283(self.origin, maxdist, team), npcid, requiredstate, requiresight);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 4
// Checksum 0x0, Offset: 0x705a
// Size: 0x9b
function function_64bb0212d4b3e7fb(team, requiredstate, requiresight, maxdist) {
    if (!isdefined(self.enemy) || !isdefined(self.enemy.team)) {
        return;
    }
    team = default_to(team, self.enemy.team);
    maxdist = default_to(maxdist, level.var_798aa343368f724e);
    return function_248a7374a1a0605a(self.origin, function_fd9e4cb348a5f283(self.origin, maxdist, team), undefined, requiredstate, requiresight);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x70fe
// Size: 0x8f
function function_d8c3c539bc71c7af(team, requiredstate, requiresight, maxdist) {
    team = default_to(team, self.team);
    maxdist = default_to(maxdist, level.var_798aa343368f724e);
    npcid = undefined;
    if (isdefined(self.battlechatter)) {
        npcid = self.battlechatter.npcid;
    }
    return function_b1ab02cfbfd12e43(function_fd9e4cb348a5f283(self.origin, maxdist, team), npcid, requiredstate, requiresight);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 5, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7196
// Size: 0x9b
function function_8db2aa6f0377958(team, requiredstate, requiresight, maxdist, var_4acfa36a6dd8b797) {
    if (!isdefined(self.enemy) || !isdefined(self.enemy.team)) {
        return;
    }
    team = default_to(team, self.enemy.team);
    maxdist = default_to(maxdist, level.var_798aa343368f724e);
    return function_b1ab02cfbfd12e43(function_fd9e4cb348a5f283(self.origin, maxdist, team), undefined, requiredstate, requiresight, var_4acfa36a6dd8b797);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 5, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x723a
// Size: 0x148
function function_248a7374a1a0605a(origin, possible_speakers, excludeid, requiredstate, requiresight) {
    closest_distsq = undefined;
    closest_guy = undefined;
    sighttarget = undefined;
    if (istrue(requiresight)) {
        sighttarget = self;
    }
    foreach (guy in possible_speakers) {
        if (issentient(self) && guy == self) {
            continue;
        }
        if (guy function_754c9897f3b89964() || !guy canchatter(requiredstate, sighttarget) || is_equal(guy.battlechatter.npcid, excludeid)) {
            continue;
        }
        if (isdefined(guy.battlechatter) && istrue(guy.battlechatter.ishero)) {
            continue;
        }
        distsq = distance2dsquared(guy.origin, origin);
        if (!isdefined(closest_distsq) || distsq < closest_distsq) {
            closest_distsq = distsq;
            closest_guy = guy;
        }
    }
    return closest_guy;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 5, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x738b
// Size: 0x16c
function function_b1ab02cfbfd12e43(possible_speakers, excludeid, requiredstate, requiresight, var_4acfa36a6dd8b797) {
    best_guy = undefined;
    sighttarget = undefined;
    if (istrue(requiresight)) {
        sighttarget = self;
    }
    isselfsentient = isdefined(self) && issentient(self);
    foreach (guy in possible_speakers) {
        if (isselfsentient && guy == self) {
            continue;
        }
        if (1 && isdefined(guy._blackboard) && isdefined(guy._blackboard.currentvehicle)) {
            continue;
        }
        if (guy function_754c9897f3b89964() || !guy canchatter(requiredstate, sighttarget, undefined, var_4acfa36a6dd8b797)) {
            continue;
        }
        if (isdefined(guy.battlechatter) && is_equal(guy.battlechatter.npcid, excludeid)) {
            continue;
        }
        if (!isdefined(guy.var_e5cf232129f9ec01)) {
            return guy;
        }
        if (!isdefined(best_guy) || guy.var_e5cf232129f9ec01 < best_guy.var_e5cf232129f9ec01) {
            best_guy = guy;
        }
    }
    return best_guy;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x7500
// Size: 0x80
function getspeakers(team) {
    team = default_to(team, self.team);
    possible_speakers = [];
    foreach (guy in getaiarray(team)) {
        if (guy canchatter()) {
            possible_speakers[possible_speakers.size] = guy;
        }
    }
    return possible_speakers;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7589
// Size: 0x7c
function getplayersinrange(origin, radius) {
    assert(isdefined(origin) && isdefined(radius));
    if (utility::issp() && distancesquared(origin, level.player.origin) < squared(radius)) {
        return [level.player];
    }
    if (isdefined(level.var_c3d9ceba74248998)) {
        return [[ level.var_c3d9ceba74248998 ]](origin, radius);
    }
    return [];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x760e
// Size: 0x4c
function function_fd9e4cb348a5f283(origin, radius, team) {
    if (isdefined(level.var_1da0697a602f5a04)) {
        return [[ level.var_1da0697a602f5a04 ]](origin, radius, team);
    }
    if (isdefined(team)) {
        return getaiarrayinradius(origin, radius, team);
    }
    return getaiarrayinradius(origin, radius);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7663
// Size: 0xf8
function getenemiesinrange(radius) {
    if (!isdefined(self.enemy) || !isdefined(self.enemy.origin) || !isdefined(self.enemy.team)) {
        return [];
    }
    radius = default_to(radius, level.var_587de0e7b537210a);
    enemies = function_fd9e4cb348a5f283(self.enemy.origin, radius, self.enemy.team);
    if (isdefined(self.team) && self.team != "allies" && self.team != "neutral") {
        players = getplayersinrange(self.enemy.origin, radius);
        enemies = array_combine(enemies, players);
    }
    return enemies;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7764
// Size: 0xd7
function function_74b5af7f20c85724(origin, radius, my_team) {
    enemiesinrange = [];
    if (isdefined(my_team) && isdefined(origin)) {
        radius = default_to(radius, level.var_587de0e7b537210a);
        aiinrange = function_fd9e4cb348a5f283(origin, radius);
        if (isdefined(aiinrange)) {
            foreach (ai in aiinrange) {
                if (!isdefined(ai)) {
                    continue;
                }
                if (isdefined(ai.team) && ai.team == my_team) {
                    continue;
                }
                enemiesinrange = array_add(enemiesinrange, ai);
            }
        }
    }
    return enemiesinrange;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7844
// Size: 0x33, Type: bool
function isnear(target, radius) {
    return distancesquared(target.origin, self.origin) < squared(radius);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x7880
// Size: 0x2d
function function_cd250b4591e6bc01(var_595b006b359c3dde, var_3ab040f5cfcefbbb) {
    if (isdefined(self.voice) && self hasfemalevoice()) {
        return var_3ab040f5cfcefbbb;
    }
    return var_595b006b359c3dde;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x78b6
// Size: 0x7e
function function_1609ef297b7a32cf(enemy, var_646a5cd9726e8b01, var_8b254bbef9b6b110, enemies) {
    if (isdefined(self.battlechatter) && is_equal(enemy, self.battlechatter.target)) {
        return var_646a5cd9726e8b01;
    }
    if (!ismp() && !isdefined(enemies)) {
        enemies = getenemiesinrange();
    }
    if (!ismp() && enemies.size > 1) {
        return var_8b254bbef9b6b110;
    }
    return var_646a5cd9726e8b01;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x793d
// Size: 0x4c
function set_target(target) {
    guy = self;
    if (istrue(self.ischatter)) {
        guy = self.speaker;
    }
    target = default_to(target, guy.enemy);
    guy function_11bcc851afaf707(target);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x7991
// Size: 0xa
function clear_target() {
    function_11bcc851afaf707(undefined);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x79a3
// Size: 0xd2
function function_11bcc851afaf707(target) {
    if (isdefined(self.origin) && isdefined(self.team)) {
        foreach (ally in function_fd9e4cb348a5f283(self.origin, level.var_587de0e7b537210a, self.team)) {
            if (isdefined(ally.battlechatter)) {
                ally.battlechatter.target = target;
            }
        }
        return;
    }
    if (isdefined(self.battlechatter)) {
        self.battlechatter.target = target;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7a7d
// Size: 0x13
function function_d6731c6d074dc7d0(params) {
    thread function_87ee4a2ecd6546fc();
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7a98
// Size: 0x225
function function_87ee4a2ecd6546fc() {
    if (!isdefined(level.battlechatter) || !isdefined(self)) {
        return;
    }
    if (!isdefined(self.battlechatter) || !isdefined(self.battlechatter.countryid)) {
        return;
    }
    if (!isdefined(level.var_276311a22caaf5ac)) {
        return;
    }
    corpse = undefined;
    num_tries = 10;
    var_30d6320d769d3f2c = 1.5;
    countryid = self.battlechatter.countryid;
    name = self.battlechatter.name;
    voice = self.voice;
    team = self.team;
    count = 0;
    while (count < num_tries && !isdefined(corpse)) {
        array = [[ level.var_276311a22caaf5ac ]](self.origin, level.var_798aa343368f724e);
        foreach (corpseent in array) {
            if (corpseent.birthtime == gettime() && distancesquared(corpseent.origin, self.origin) <= var_30d6320d769d3f2c) {
                corpse = corpseent;
                break;
            }
        }
        count++;
        waitframe();
    }
    if (!isdefined(corpse)) {
        return;
    }
    corpse.battlechatter = spawnstruct();
    corpse.battlechatter.countryid = countryid;
    corpse.battlechatter.name = name;
    corpse.voice = voice;
    corpse.battlechatterallowed = 1;
    corpse.team = team;
    if (isdefined(level.stealth)) {
        corpse thread corpseloop();
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x7cc5
// Size: 0x14
function select_random(array) {
    return array[randomint(array.size)];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x7ce2
// Size: 0x95
function random_variation(base, count) {
    if (!isdefined(level.battlechatter.variations[base])) {
        array = [];
        for (i = 0; i < count; i++) {
            array[i] = base + i;
        }
        level.battlechatter.variations[base] = create_deck(array, 1, 1, 1);
    }
    return level.battlechatter.variations[base] deck_draw();
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7d80
// Size: 0x98
function getrankvalue() {
    if (!isdefined(self.airank)) {
        return undefined;
    }
    switch (self.airank) {
    case #"hash_f26abb676d8bacec":
        return 0;
    case #"hash_66b7b438a1ca57c2":
        return 1;
    case #"hash_7f4da8c6011cd2d4":
        return 2;
    case #"hash_1453ef0182122bcb":
        return 3;
    case #"hash_9400db43df3e85c2":
        return 4;
    case #"hash_bcc86315db6ecf35":
        return 5;
    case #"hash_f1891197c342b74b":
        return 6;
    default:
        return undefined;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x7e20
// Size: 0xe4
function function_b6b75579e4dbc957() {
    if (!isdefined(level.battlechatter.callsigns)) {
        callsigns = [];
        foreach (ai in getaiarray()) {
            if (isdefined(ai.callsign)) {
                callsigns[callsigns.size] = ai.callsign;
            }
        }
        if (callsigns.size > 0) {
            level.battlechatter.callsigns = create_deck(callsigns);
        }
    }
    if (isdefined(level.battlechatter.callsigns)) {
        self.callsign = level.battlechatter.callsigns deck_draw();
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 6
// Checksum 0x0, Offset: 0x7f0c
// Size: 0x93
function addeventplaybcs(type, name, modifier, delay, stealthevent, force) {
    self endon("death");
    self endon("removed from battleChatter");
    self endon("cancel speaking");
    self endon("stop event play bcs");
    if (!isdefined(modifier)) {
        return;
    }
    if (isdefined(delay)) {
        wait delay;
    }
    if (name == "state_change") {
        executed = executeevent(modifier);
        return;
    }
    executed = executeevent("announce", [modifier, stealthevent]);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x7fa7
// Size: 0x49
function function_2a14e530337dedc3() {
    radio = self.speaker function_52846cd9b5efeafe();
    radio.battlechatter.npcid = "l1r";
    radio.name = "Team Leader (Radio)";
    return radio;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x7ff9
// Size: 0x30f
function function_573b9ff9ed152518(guy, isleader) {
    if (!isdefined(guy)) {
        guy = self.speaker;
    }
    if (!isdefined(guy.voice) || !isdefined(guy.battlechatter)) {
        return;
    }
    radio = spawnstruct();
    radio.vo_parent = guy;
    radio.origin = guy.origin;
    radio.isradioemitter = 1;
    radio.battlechatterallowed = 1;
    radio.team = default_to(self.team, "allies");
    radio.battlechatter = spawnstruct();
    if (!isdefined(guy.battlechatter.countryid)) {
        guy.battlechatter.countryid = "AQS";
    }
    if (istrue(isleader)) {
        radio.battlechatter.isleader = 1;
        radio.battlechatter.lookupid = guy.battlechatter.countryid + "_L";
        radio.battlechatter.name = "actual";
        switch (guy.battlechatter.countryid) {
        case #"hash_782a246ccf672edf":
            npcids = ["pmcl"];
            break;
        case #"hash_8a9636c94e6076d":
            npcids = ["crtl"];
            break;
        case #"hash_fab89df6bdd4bc00":
            npcids = ["rusl"];
            break;
        case #"hash_4438aa6cb42c06a3":
            npcids = ["konl"];
            break;
        case #"hash_8d55d6c9508903d":
            npcids = ["kgfl"];
        case #"hash_f8933b6c8c234a3c":
        default:
            npcids = ["aqld"];
            break;
        }
    } else {
        npcids = [];
        foreach (usedid in anim.usedids[guy.voice]) {
            if (!is_equal(usedid.npcid, guy.battlechatter.npcid)) {
                npcids[npcids.size] = usedid.npcid;
            }
        }
    }
    radio.battlechatter.countryid = guy.battlechatter.countryid;
    radio.battlechatter.npcid = random(npcids);
    return radio;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x8311
// Size: 0x14
function function_592f13f1a0e078ff(guy) {
    return function_573b9ff9ed152518(guy, 1);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x832e
// Size: 0x105
function getname() {
    if (!isdefined(self.battlechatter) || !isdefined(self.battlechatter.countryid)) {
        return;
    }
    if (!isdefined(self.battlechatter.name)) {
        if (!isdefined(level.battlechatter.names[self.battlechatter.countryid])) {
            function_793f0c4da1ff138f(self.battlechatter.countryid);
            if (!isdefined(level.battlechatter.names[self.battlechatter.countryid])) {
                return;
            }
        }
        self.battlechatter.name = level.battlechatter.names[self.battlechatter.countryid] deck_draw();
    }
    return self.battlechatter.name;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x843c
// Size: 0x47
function getclosestplayer(origin) {
    if (!isdefined(level.players)) {
        return level.player;
    } else if (level.players.size == 0) {
        return undefined;
    }
    return sortbydistance(level.players, origin)[0];
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x848c
// Size: 0xa1
function function_b98b7a9053d0bcb6(origin) {
    if (!isdefined(origin)) {
        origin = self.origin;
    }
    region_trigs = getentarray("bcs_region", "script_noteworthy");
    foreach (trig in region_trigs) {
        if (ispointinvolume(origin, trig) && isdefined(trig.targetname)) {
            return trig.targetname;
        }
    }
    return "none";
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x8536
// Size: 0x125
function getcombatstate() {
    if (is_dead_or_dying(self)) {
        return "dead";
    }
    if (isdefined(self.battlechatter.stateoverride)) {
        result = self.battlechatter.stateoverride;
        if (isfunction(result)) {
            result = self [[ result ]]();
        }
        if (isdefined(result)) {
            return result;
        }
    }
    if (!isdefined(level.stealth)) {
        return ter_op(isai(self) && self iscurrentenemyvalid(), "combat", "idle");
    }
    if (isdefined(self.fnisinstealthidle) && [[ self.fnisinstealthidle ]]()) {
        return "idle";
    }
    if (isdefined(self.fnisinstealthinvestigate) && [[ self.fnisinstealthinvestigate ]]()) {
        return "investigate";
    }
    if (isdefined(self.fnisinstealthhunt) && [[ self.fnisinstealthhunt ]]()) {
        return "hunt";
    }
    if (isdefined(self.fnisinstealthcombat) && [[ self.fnisinstealthcombat ]]()) {
        return "combat";
    }
    return "unset";
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3
// Checksum 0x0, Offset: 0x8663
// Size: 0x1b
function addcustombc(array, states, random) {
    
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3
// Checksum 0x0, Offset: 0x8686
// Size: 0x1b
function setcurrentcustombcevent(event, states, looping) {
    
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x86a9
// Size: 0x57, Type: bool
function function_5eef3c6f7b003167(state) {
    if (!isdefined(level.battlechatter.customstealth) || !isdefined(level.battlechatter.customstealth[state])) {
        return false;
    }
    return level.battlechatter.customstealth[state].size > 0;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x8709
// Size: 0xa5
function function_37569a0bddd31694(state) {
    assertex(isdefined(level.battlechatter.customstealth), " level.battlechatter.customStealth not defined. Set some custom BC first!");
    index = level.battlechatter.var_6fe645021a23c52f[state];
    sequence = level.battlechatter.customstealth[state][index];
    index++;
    if (index >= level.battlechatter.customstealth[state].size) {
        level.battlechatter.customstealth[state] = [];
    }
    return sequence;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3
// Checksum 0x0, Offset: 0x87b7
// Size: 0x14c
function function_ac31838f9edde417(array, states, random) {
    if (!isdefined(level.battlechatter.customstealth)) {
        level.battlechatter.customstealth = [];
    }
    if (!isarray(states)) {
        states = [states];
    }
    foreach (state in states) {
        if (!isdefined(level.battlechatter.customstealth[state])) {
            level.battlechatter.customstealth[state] = [];
        }
        foreach (sequence in array) {
            size = level.battlechatter.customstealth[state].size;
            level.battlechatter.customstealth[state][size] = sequence;
        }
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x890b
// Size: 0x58
function getrelativeangles(ent) {
    assert(isdefined(ent));
    angles = ent.angles;
    if (!isplayer(ent)) {
        if (isdefined(self.node)) {
            angles = self.node.angles;
        }
    }
    return angles;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x896c
// Size: 0x1d, Type: bool
function sideisleftright(side) {
    return side == "left" || side == "right";
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3
// Checksum 0x0, Offset: 0x8992
// Size: 0xb4
function getdirectionfacingflank(vorigin, vpoint, vfacing) {
    var_7004ba7d94d78df6 = vectortoangles(vfacing);
    anglestopoint = vectortoangles(vpoint - vorigin);
    angle = var_7004ba7d94d78df6[1] - anglestopoint[1];
    angle += 360;
    angle = int(angle) % 360;
    if (angle > 315 || angle < 45) {
        direction = "front";
    } else if (angle < 135) {
        direction = "right";
    } else if (angle < 225) {
        direction = "rear";
    } else {
        direction = "left";
    }
    return direction;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x8a4f
// Size: 0x11a
function normalizecompassdirection(direction) {
    assert(isdefined(direction));
    new = undefined;
    switch (direction) {
    case #"hash_b9ff0a9f617355e4":
        new = "n";
        break;
    case #"hash_b66b59dcd06dfad3":
        new = "nw";
        break;
    case #"hash_a1e9b77432f55b0e":
        new = "w";
        break;
    case #"hash_abed5ad834825ff1":
        new = "sw";
        break;
    case #"hash_fbd39e4f5634905a":
        new = "s";
        break;
    case #"hash_8856b747c93e7793":
        new = "se";
        break;
    case #"hash_22ce3b03c1e51a9c":
        new = "e";
        break;
    case #"hash_493bfd7122639b31":
        new = "ne";
        break;
    case #"hash_c1ae739be788bf38":
        new = "impossible";
        break;
    default:
        assertmsg("Can't normalize compass direction " + direction);
        return;
    }
    assert(isdefined(new));
    return new;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x8b72
// Size: 0x125
function getdirectioncompass(vorigin, vpoint) {
    angles = vectortoangles(vpoint - vorigin);
    angle = angles[1];
    northyaw = getnorthyaw();
    angle -= northyaw;
    if (angle < 0) {
        angle += 360;
    } else if (angle > 360) {
        angle -= 360;
    }
    if (angle < 22.5 || angle > 337.5) {
        direction = "north";
    } else if (angle < 67.5) {
        direction = "northwest";
    } else if (angle < 112.5) {
        direction = "west";
    } else if (angle < 157.5) {
        direction = "southwest";
    } else if (angle < 202.5) {
        direction = "south";
    } else if (angle < 247.5) {
        direction = "southeast";
    } else if (angle < 292.5) {
        direction = "east";
    } else if (angle < 337.5) {
        direction = "northeast";
    } else {
        direction = "impossible";
    }
    return direction;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x8ca0
// Size: 0x38
function getdistancemeters(source, target) {
    distanceinches = distance2d(source, target);
    distancemeters = 0.0254 * distanceinches;
    return distancemeters;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x8ce1
// Size: 0xe6
function getdistancemetersnormalized(source, target) {
    distancemeters = getdistancemeters(source, target);
    if (distancemeters < 15) {
        return "10";
    }
    if (distancemeters < 25) {
        return "20";
    }
    if (distancemeters < 35) {
        return "30";
    }
    if (distancemeters < 45) {
        return "40";
    }
    if (distancemeters < 55) {
        return "50";
    }
    if (distancemeters < 65) {
        return "60";
    }
    if (distancemeters < 75) {
        return "70";
    }
    if (distancemeters < 85) {
        return "80";
    }
    if (distancemeters < 95) {
        return "90";
    }
    if (distancemeters < 125) {
        return "100";
    }
    return undefined;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x8dcf
// Size: 0x38
function getdistancemiles(source, target) {
    distanceinches = distance2d(source, target);
    distancemiles = 1.57828e-05 * distanceinches;
    return distancemiles;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x8e10
// Size: 0x78
function getdistancemilesnormalized(source, target) {
    distancemiles = getdistancemiles(source, target);
    if (distancemiles < 5) {
        return "4";
    }
    if (distancemiles < 6) {
        return "5";
    }
    if (distancemiles < 7) {
        return "6";
    }
    if (distancemiles < 15) {
        return "10";
    }
    return "15";
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x8e90
// Size: 0x72
function getfrontarcclockdirection(direction) {
    assertex(isdefined(direction));
    fadirection = "undefined";
    if (direction == "10" || direction == "11") {
        fadirection = "10";
    } else if (direction == "12") {
        fadirection = direction;
    } else if (direction == "1" || direction == "2") {
        fadirection = "2";
    }
    return fadirection;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 3
// Checksum 0x0, Offset: 0x8f0b
// Size: 0x162
function getdirectionfacingclock(var_c99a285cabf7ec7b, var_88daf353e30acf25, targetorigin) {
    forward = anglestoforward(var_c99a285cabf7ec7b);
    vfacing = vectornormalize(forward);
    var_7004ba7d94d78df6 = vectortoangles(vfacing);
    anglestopoint = vectortoangles(targetorigin - var_88daf353e30acf25);
    angle = var_7004ba7d94d78df6[1] - anglestopoint[1];
    angle += 360;
    angle = int(angle) % 360;
    if (angle > 345 || angle < 15) {
        direction = "12";
    } else if (angle < 45) {
        direction = "1";
    } else if (angle < 75) {
        direction = "2";
    } else if (angle < 105) {
        direction = "3";
    } else if (angle < 135) {
        direction = "4";
    } else if (angle < 165) {
        direction = "5";
    } else if (angle < 195) {
        direction = "6";
    } else if (angle < 225) {
        direction = "7";
    } else if (angle < 255) {
        direction = "8";
    } else if (angle < 285) {
        direction = "9";
    } else if (angle < 315) {
        direction = "10";
    } else {
        direction = "11";
    }
    return direction;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x9076
// Size: 0x9e
function getdegreeselevation(var_88daf353e30acf25, targetorigin) {
    ht = targetorigin[2] - var_88daf353e30acf25[2];
    dist = distance2d(var_88daf353e30acf25, targetorigin);
    angle = atan(ht / dist);
    if (angle < 15 || angle > 65) {
        return angle;
    }
    if (angle < 25) {
        return 20;
    }
    if (angle < 35) {
        return 30;
    }
    if (angle < 45) {
        return 40;
    }
    if (angle < 55) {
        return 50;
    }
    if (angle < 65) {
        return 60;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x911c
// Size: 0x19
function getvectorrightangle(vdir) {
    return (vdir[1], 0 - vdir[0], vdir[2]);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x913e
// Size: 0x58
function getvectorarrayaverage(avangles) {
    var_3ba2a35d76e9b9e0 = (0, 0, 0);
    for (i = 0; i < avangles.size; i++) {
        var_3ba2a35d76e9b9e0 += avangles[i];
    }
    return (var_3ba2a35d76e9b9e0[0] / avangles.size, var_3ba2a35d76e9b9e0[1] / avangles.size, var_3ba2a35d76e9b9e0[2] / avangles.size);
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x919f
// Size: 0x25, Type: bool
function function_a07abd440b7a33fe(otherent) {
    if (!isdefined(otherent)) {
        return false;
    }
    if (!istrue(otherent.disguised)) {
        return false;
    }
    return true;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x91cd
// Size: 0xb
function get_text(segment) {
    
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2
// Checksum 0x0, Offset: 0x91e0
// Size: 0x27
function set_battlechatter_variable(team, val) {
    level.battlechatter[team] = val;
    update_battlechatter_hud();
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x920f
// Size: 0x1cb
function update_battlechatter_hud() {
    /#
        if (getdvar(@"loc_warnings", 0) == "<dev string:x3fa>") {
            return;
        }
        if (getdvar(@"hash_2f6380dc3031a0fc") != "<dev string:xc2>") {
            return;
        }
        if (!isdefined(level.var_ce8915211d5a4041)) {
            x = -50;
            y = 460;
            x_offset = 22;
            hud = newhudelem();
            hud.x = x;
            hud.y = y;
            hud.color = (0.4, 0.55, 0.9);
            level.var_ce8915211d5a4041 = hud;
        }
        if (getdvar(@"debug_battlechatter") != "<dev string:x3fc>") {
            level.var_ce8915211d5a4041 settext("<dev string:xc2>");
            return;
        }
        msg = "<dev string:x3ff>";
        count = 0;
        if (isdefined(level.battlechatter)) {
            teams = [];
            teams["<dev string:x2bb>"] = level.battlechatter["<dev string:x2bb>"];
            teams["<dev string:x417>"] = level.battlechatter["<dev string:x417>"];
            foreach (val in teams) {
                if (val) {
                    msg = msg + team + "<dev string:xc0>";
                    count++;
                }
            }
        } else {
            msg += "<dev string:x41c>";
            count++;
        }
        if (count == 0) {
            msg += "<dev string:x43c>";
        }
        level.var_ce8915211d5a4041 settext(msg);
    #/
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x93e2
// Size: 0x150
function bcprint_info() {
    self endon("death");
    /#
        id = self.battlechatter.npcid;
        if (!isdefined(id)) {
            id = "<dev string:xc2>";
        }
        countryid = self.battlechatter.countryid;
        if (!isdefined(countryid)) {
            countryid = "<dev string:xc2>";
        }
        while (true) {
            if (battlechatter_canprint()) {
                if (!isdefined(self.battlechatterallowed) || istrue(self.battlechatter_removed)) {
                    print3d(self.origin + (0, 0, 24), "<dev string:x447>", (1, 0, 1), 1, 0.35, 1);
                } else if (self.battlechatterallowed) {
                    print3d(self.origin + (0, 0, 24), "<dev string:x453>" + countryid + id, (0, 1, 0), 1, 0.35, 1);
                } else {
                    print3d(self.origin + (0, 0, 24), "<dev string:x453>" + countryid + id, (1, 0, 0), 1, 0.35, 1);
                }
            }
            waitframe();
        }
    #/
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x953a
// Size: 0x3c, Type: bool
function battlechatter_canprint() {
    /#
        if (getdvar(@"hash_611f04c407c3f644") == self.team || getdvar(@"hash_611f04c407c3f644") == "<dev string:x458>") {
            return true;
        }
    #/
    return false;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0
// Checksum 0x0, Offset: 0x957f
// Size: 0x3c, Type: bool
function battlechatter_canprintdump() {
    /#
        if (getdvar(@"hash_9627c73338f91622") == self.team || getdvar(@"hash_9627c73338f91622") == "<dev string:x458>") {
            return true;
        }
    #/
    return false;
}

/#

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 2
    // Checksum 0x0, Offset: 0x95c4
    // Size: 0xb0, Type: dev
    function battlechatter_print(alias, color) {
        if (!battlechatter_canprint()) {
            return;
        }
        if (!isdefined(color)) {
            color = "<dev string:x45c>";
        }
        colorkey = "<dev string:x45c>";
        switch (color) {
        case #"hash_97430f6c58e61cbc":
            colorkey = "<dev string:x466>";
            break;
        case #"hash_2ac407c1cd5943a9":
            colorkey = "<dev string:x470>";
            break;
        case #"hash_6686d129776d649a":
            colorkey = "<dev string:x478>";
            break;
        }
        println(colorkey + self.origin + "<dev string:x47b>" + self.name + "<dev string:x47e>" + alias);
    }

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 1
    // Checksum 0x0, Offset: 0x967c
    // Size: 0x1d5, Type: dev
    function battlechatter_printdump(alias) {
        if (!battlechatter_canprintdump()) {
            return;
        }
        dumptype = getdvar(@"hash_3cb0b3f110a54cf2", "<dev string:x483>");
        if (dumptype != "<dev string:x483>" && dumptype != "<dev string:x487>") {
            return;
        }
        var_47f4bea7f4c50ad9 = -1;
        if (isdefined(level.var_529a83d403b4416)) {
            var_47f4bea7f4c50ad9 = (gettime() - level.var_529a83d403b4416) / 1000;
        }
        level.var_529a83d403b4416 = gettime();
        if (dumptype == "<dev string:x483>") {
            if (!flag_exist("<dev string:x48b>")) {
                flag_init("<dev string:x48b>");
            }
            if (!isdefined(level.var_b363a2868472ded1)) {
                filepath = "<dev string:x4a3>" + level.script + "<dev string:x4c4>";
                level.var_b363a2868472ded1 = openfile(filepath, "<dev string:x4c9>");
            }
            aliastype = getaliastypefromsoundalias(alias);
            dumpstring = level.script + "<dev string:x4cf>" + self.operatorcustomization.voice + "<dev string:x4cf>" + aliastype;
            battlechatter_printdumpline(level.var_b363a2868472ded1, dumpstring, "<dev string:x48b>");
            return;
        }
        if (dumptype == "<dev string:x487>") {
            if (!flag_exist("<dev string:x4d1>")) {
                flag_init("<dev string:x4d1>");
            }
            if (!isdefined(level.var_97ef0a827c8a39d1)) {
                filepath = "<dev string:x4a3>" + level.script + "<dev string:x4e9>";
                level.var_97ef0a827c8a39d1 = openfile(filepath, "<dev string:x4c9>");
            }
            dumpstring = "<dev string:x4ee>" + var_47f4bea7f4c50ad9 + "<dev string:x4f0>";
            dumpstring += alias;
            battlechatter_printdumpline(level.var_97ef0a827c8a39d1, dumpstring, "<dev string:x4d1>");
        }
    }

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 2
    // Checksum 0x0, Offset: 0x9859
    // Size: 0x28, Type: dev
    function battlechatter_debugprint(alias, color) {
        battlechatter_print(alias, color);
        thread battlechatter_printdump(alias);
    }

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 3
    // Checksum 0x0, Offset: 0x9889
    // Size: 0x48, Type: dev
    function battlechatter_printdumpline(file, str, controlflag) {
        if (flag(controlflag)) {
            flag_wait(controlflag);
        }
        flag_set(controlflag);
        fprintln(file, str);
        flag_clear(controlflag);
    }

#/

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x98d9
// Size: 0xc6
function getaliastypefromsoundalias(alias) {
    if (getsubstr(alias, 0, 6) == "dx_vom") {
        aliastype = getsubstr(alias, 7, alias.size);
    } else {
        if (self == anim.player) {
            prefix = self.battlechatter.countryid + "_";
        } else if (getsubstr(alias, 0, 6) == "dx_sbc") {
            prefix = bc_prefix("stealth");
        } else {
            prefix = bc_prefix();
        }
        assertex(issubstr(alias, prefix), "didn't find expected prefix info in alias '" + alias + "' with substr test of '" + prefix + "'.");
        aliastype = getsubstr(alias, prefix.size, alias.size);
    }
    return aliastype;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1
// Checksum 0x0, Offset: 0x99a8
// Size: 0x37
function function_2b9bf190120a5233(seconds) {
    if (isdefined(self.battlechatter)) {
        self.battlechatter.var_3c94d4874d436201 = gettime() + seconds * 1000;
    }
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x99e7
// Size: 0xbd, Type: bool
function function_8f59caa9212fcc56() {
    if (!canchatter("combat")) {
        return true;
    }
    if (utility::issp() && !isalive(level.player)) {
        return true;
    }
    if (!function_45f570789ff9a0fd(3)) {
        if (isdefined(self.battlechatter.var_20e68057b05a543) || !isdefined(self._blackboard)) {
            return true;
        }
        if (!shotrecently(3)) {
            self.battlechatter.var_20e68057b05a543 = gettime();
        }
        return true;
    }
    if (!isdefined(self.battlechatter.var_3c94d4874d436201)) {
        return false;
    }
    return self.battlechatter.var_3c94d4874d436201 > gettime();
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x9aad
// Size: 0xc6, Type: bool
function function_45f570789ff9a0fd(timeseconds, requiresight) {
    requiresight = default_to(requiresight, 0);
    if (istrue(self.pacifist) || istrue(self.ignoreall) || istrue(self.dontevershoot)) {
        return false;
    }
    if (!isdefined(self.enemy) || is_dead_or_dying(self.enemy)) {
        return false;
    }
    if (!ismp() && requiresight && !self seerecently(self.enemy, timeseconds)) {
        return false;
    }
    if (isdefined(self.var_a709fbd9fea148f6) && scripts\asm\asm::asm_currentstatehasflag(self.var_a709fbd9fea148f6, "aim")) {
        return true;
    }
    if (shotrecently(timeseconds)) {
        return true;
    }
    return false;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x9b7c
// Size: 0x2a, Type: bool
function shotrecently(timeseconds) {
    return self._blackboard.var_60dcaa3d3be97ab > gettime() - timeseconds * 1000;
}

// Namespace battlechatter / scripts\anim\battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x9baf
// Size: 0x6f
function function_ab7df904aa60d433(array, maxsize) {
    maxsize = default_to(maxsize, array.size - 1);
    foreach (item in array) {
        if (array.size <= maxsize) {
            return array;
        }
        array[key] = undefined;
    }
}

/#

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 0
    // Checksum 0x0, Offset: 0x9c26
    // Size: 0x2e, Type: dev
    function function_ecf957dba5b9cc50() {
        level endon("<dev string:x4f8>");
        level notify("<dev string:x503>");
        level endon("<dev string:x503>");
        while (true) {
            waittillframeend();
            function_c3b1c38b7230b341(1);
            waitframe();
        }
    }

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 1
    // Checksum 0x0, Offset: 0x9c5c
    // Size: 0x14b, Type: dev
    function function_c3b1c38b7230b341(var_9712576966b33c8b) {
        if (!getdvarint(@"hash_4b7858e66804e305")) {
            return;
        }
        offsety = 20;
        debugposx = 50;
        debugposy = 500;
        debugtextcolor = (0, 1, 0);
        debugtextscale = 1;
        debugtext = "<dev string:x527>";
        printtoscreen2d(debugposx, debugposy, debugtext, debugtextcolor, debugtextscale, var_9712576966b33c8b);
        debugposy += offsety;
        if (!isdefined(level.var_426f5978d3aea5c2) || function_45fad871d0bee0f2(level.var_426f5978d3aea5c2)) {
            return;
        }
        index = level.var_426f5978d3aea5c2.rear;
        while (index != level.var_426f5978d3aea5c2.front) {
            debug_string = level.var_426f5978d3aea5c2.array[index];
            if (!isdefined(debug_string)) {
                continue;
            }
            printtoscreen2d(debugposx, debugposy, debug_string, debugtextcolor, debugtextscale, var_9712576966b33c8b);
            debugposy += offsety;
            index--;
            if (index < 0) {
                index += level.var_426f5978d3aea5c2.capacity;
            }
        }
    }

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 2
    // Checksum 0x0, Offset: 0x9daf
    // Size: 0x120, Type: dev
    function function_fdb8454d071bcf5b(data, executed) {
        if (!isdefined(data) || !isdefined(data.category)) {
            return;
        }
        if (!isdefined(level.var_426f5978d3aea5c2)) {
            level.var_426f5978d3aea5c2 = queue_create(20);
            level thread function_ecf957dba5b9cc50();
        }
        debug_string = "<dev string:x53b>" + data.category;
        if (isdefined(data.subcategory)) {
            debug_string += "<dev string:x546>" + data.subcategory;
        }
        debug_string += "<dev string:x2ef>";
        debug_string += "<dev string:x548>" + istrue(executed) + "<dev string:x2ef>";
        debug_string += "<dev string:x553>" + gettime() + "<dev string:x2ef>";
        if (level.var_426f5978d3aea5c2.array.size == level.var_426f5978d3aea5c2.capacity) {
            level.var_426f5978d3aea5c2 = function_93def91a50927481(level.var_426f5978d3aea5c2);
        }
        level.var_426f5978d3aea5c2 = function_6cf786a6cf335cb9(level.var_426f5978d3aea5c2, debug_string);
    }

    // Namespace battlechatter / scripts\anim\battlechatter
    // Params 1
    // Checksum 0x0, Offset: 0x9ed7
    // Size: 0x52, Type: dev
    function function_55f43964ccdb5b95(var_d58ba359bfb14d3e) {
        if (isstruct(var_d58ba359bfb14d3e)) {
            if (isdefined(var_d58ba359bfb14d3e.vo_parent)) {
                return ("<dev string:x55c>" + function_600b37e8cf3f2de9(var_d58ba359bfb14d3e.vo_parent));
            } else {
                return "<dev string:x56e>";
            }
            return;
        }
        return function_600b37e8cf3f2de9(var_d58ba359bfb14d3e);
    }

#/
