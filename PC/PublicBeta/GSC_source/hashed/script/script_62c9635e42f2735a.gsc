// script_62c9635e42f2735a  (62C9635E42F2735A.gscc) (size: 20569 Bytes / 0x5059 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x9eba2b59 (2663000921)
// size ...... 20569 (0x5059)
// includes .. 7   (offset: 0x678)
// strings ... 98  (offset: 0x4a59)
// dev strs .. 8   (offset: 0x4fd1)
// exports ... 44  (offset: 0x319d)
// cseg ...... 0x6b0 + 0x2aed (0x319d)
// imports ... 144 (offset: 0x387d)
// animtree1 . 0   (offset: 0x5039)
// animtree2 . 2   (offset: 0x5039)
#using script_cbb0697de4c5728;
#using scripts\common\utility;
#using scripts\cp_mp\crossbow;
#using scripts\cp_mp\frontendutils;
#using scripts\engine\math;
#using scripts\engine\utility;
#using scripts\mp\utility\hitmarker;

#namespace namespace_a406dc37134c52b;

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x6b8
// Size: 0x6e
function function_2bef3a70387bed5() {
    if (getomnvar("ui_firing_range_has_started") == 1) {
        function_75723f405bab9463();
        currentweapon = self getcurrentweapon();
        if (isdefined(currentweapon) && isdefined(currentweapon.weaponblueprint)) {
            setomnvar("ui_firing_range_weapon_in_use_loot_index", currentweapon.weaponblueprint.lootid);
            return;
        }
        setomnvar("ui_firing_range_weapon_in_use_loot_index", -1);
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x72e
// Size: 0x160
function frontend_spawnplayer() {
    println("<dev string:x1c>");
    self.guid = 0;
    self.team = "allies";
    groundpos = utility::groundpos(level.var_aeb531c63a3266d6.basecam.origin);
    self spawn(groundpos, level.var_aeb531c63a3266d6.basecam.angles);
    waitframe();
    updateplayerweapon();
    self setclienttriggeraudiozone("frontend_firingrange", 0.25);
    setmusicstate("");
    if (isdefined(self.headmodel)) {
        self detach(self.headmodel);
    }
    bodymodelname = self getcustomizationbody();
    headmodelname = self getcustomizationhead();
    viewmodelname = self getcustomizationviewmodel();
    self setmodel(bodymodelname);
    self setviewmodel(viewmodelname);
    if (isdefined(headmodelname)) {
        self attach(headmodelname, "", 1);
        self.headmodel = headmodelname;
    }
    self setclothtype(#"vestlight");
    self function_8abe5a968cc3c220(#"millghtgr");
    level.playerviewowner.var_e7a9752e4f4c7d97 = undefined;
    level.playerviewowner namespace_46e942396566f2da::function_c72573fb42d0cdbc();
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x896
// Size: 0x54
function function_ad45f79e3a9b4d2(var_fe2109095a023ed7) {
    println("<dev string:x2c>");
    self.sessionstate = "playing";
    self.statusicon = "";
    if (istrue(self.settospectate)) {
        self.settospectate = 0;
        waitframe();
        frontend_spawnplayer();
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x8f2
// Size: 0x266
function updateplayerweapon() {
    if (isdefined(self.primaryweaponobj)) {
        self takeweapon(self.primaryweaponobj);
    }
    if (isdefined(self.secondaryweaponobj) && self.secondaryweaponobj.basename != "none") {
        self takeweapon(self.secondaryweaponobj);
    }
    self.primaryweaponobj = undefined;
    self.secondaryweaponobj = undefined;
    loadoutdata = self function_a91eac707383a642();
    self.primaryweaponobj = loadoutdata.primaryweaponentityindex;
    self giveweapon(self.primaryweaponobj);
    self setweaponammoclip(self.primaryweaponobj, weaponclipsize(self.primaryweaponobj));
    self setweaponammostock(self.primaryweaponobj, weaponmaxammo(self.primaryweaponobj));
    self setactionslot(3, "altmode");
    self.secondaryweaponobj = loadoutdata.secondaryweaponentityindex;
    self giveweapon(self.secondaryweaponobj);
    self setweaponammoclip(self.secondaryweaponobj, weaponclipsize(self.secondaryweaponobj));
    self setweaponammostock(self.secondaryweaponobj, weaponmaxammo(self.secondaryweaponobj));
    self switchtoweaponimmediate(self.primaryweaponobj);
    if (isdefined(self.primaryweaponobj) && isdefined(self.primaryweaponobj.weaponblueprint)) {
        setomnvar("ui_firing_range_weapon_in_use_loot_index", self.primaryweaponobj.weaponblueprint.lootid);
    } else {
        setomnvar("ui_firing_range_weapon_in_use_loot_index", -1);
    }
    if (!isdefined(level.playerviewowner.operatorcustomization)) {
        level.playerviewowner.operatorcustomization = spawnstruct();
    }
    level.playerviewowner.operatorcustomization.skinref = loadoutdata.skinref;
    var_3291e2cbec055766 = tablelookup("operatorskins.csv", 0, loadoutdata.skinindex, 36);
    if (isdefined(var_3291e2cbec055766) && var_3291e2cbec055766 != "") {
        level.playerviewowner function_602b3de054f2a81(var_3291e2cbec055766);
    }
    thread function_b74a4c79011e5adf(self.primaryweaponobj);
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xb60
// Size: 0x100
function updateweaponswitch() {
    self notify("updateWeaponSwitch");
    self endon("updateWeaponSwitch");
    while (true) {
        self waittill("weapon_change");
        level.var_37a55ecaf979d920 = 0;
        level.var_91d278fb245d797b = 0;
        level.var_febc1f5f6fc40f70 = 0;
        level.bulletshitsecondary = 0;
        setomnvar("ui_firing_range_accuracy", 0);
        setomnvar("ui_firing_range_target_kill_count", 0);
        weapon = self getcurrentweapon();
        rootname = getweaponrootname(weapon.basename);
        switch (rootname) {
        case #"hash_8d9ae5e5dd390b4b":
            thread scripts\cp_mp\crossbow::initcrossbowusage();
            thread scripts\cp_mp\crossbow::crossbowusageloop(weapon);
            break;
        }
        if (isdefined(weapon) && isdefined(weapon.weaponblueprint)) {
            setomnvar("ui_firing_range_weapon_in_use_loot_index", weapon.weaponblueprint.lootid);
            continue;
        }
        setomnvar("ui_firing_range_weapon_in_use_loot_index", -1);
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xc68
// Size: 0x12
function function_a0c6c9f9a16b236() {
    updateplayerweapon();
    function_ad45f79e3a9b4d2(1);
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xc82
// Size: 0x42
function loadout_giveperk(perkname) {
    if (!isdefined(self.loadoutperks)) {
        self.loadoutperks = [];
    }
    self setperk(perkname, 1);
    self.loadoutperks[self.loadoutperks.size] = perkname;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xccc
// Size: 0x288
function function_cb993ebadda105c7() {
    setomnvar("ui_firing_range_has_started", 1);
    function_daa1538470157756();
    foreach (trig in level.lanetriggers) {
        trig.var_27654d98d67bccc8 = 0;
    }
    if (function_914509f96205b92d()) {
        level.var_81756a36088f74a4 = gettime();
        level.var_ee0f9b1b1e7e1dce = 0;
        level.var_9f4cede9e6b31bf0 = 0;
        level.var_ce3c34eac4202086 = 0;
        level.var_50f8b730d8c5eae4 = 0;
    }
    level thread function_f00185b72cdb3b04();
    level.var_37a55ecaf979d920 = 0;
    level.var_91d278fb245d797b = 0;
    level.var_febc1f5f6fc40f70 = 0;
    level.bulletshitsecondary = 0;
    level.var_31b6d2832a330f45 = 0;
    level.var_4e5b1ceaad66b065 = 0;
    level.gamemodebundle = function_1e231fc15fdab31d();
    setomnvar("ui_firing_range_accuracy", 0);
    setomnvar("ui_firing_range_target_kill_count", 0);
    if (function_42c8b6ff9adfabfa()) {
        setdvar(@"hash_4033da1e021e6d5", 0);
        level.var_dd19f80de7b179be = gettime();
        level.var_b8494e78ab9bc23e = 0;
        level.var_6ba74ccd0535dfab = 0;
        level.var_e89e680520310188 = 0;
        level.var_a9a55beb5763b7d5 = 0;
    }
    println("<dev string:x4c>");
    suitname = default_to(level.gamemodebundle.var_576fc201a1d5b6dc, "jup_defaultsuit_mp");
    self setsuit(suitname);
    println("<dev string:x2c>");
    self.sessionstate = "playing";
    self.statusicon = "";
    waitframe();
    println("<dev string:x1c>");
    groundpos = utility::groundpos(level.var_aeb531c63a3266d6.basecam.origin);
    self spawn(groundpos, level.var_aeb531c63a3266d6.basecam.angles);
    waitframe();
    waitframe();
    self.settospectate = 0;
    frontend_spawnplayer();
    function_f9ef7bd954fb4194();
    loadout_giveperk("specialty_pistoldraw");
    thread function_ad11142812a6dc9f();
    thread infiniteammo();
    thread updateweaponswitch();
    /#
        thread function_1a2a24c0225bef64();
    #/
    thread function_bd002aab782c389e();
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xf5c
// Size: 0x2f
function function_ad11142812a6dc9f() {
    level endon("exit_firing_range");
    self notify("resetWeaponStats");
    self endon("resetWeaponStats");
    while (true) {
        level waittill("firing_range_weapon_stats_reset");
        function_f9ef7bd954fb4194();
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xf93
// Size: 0x7a
function function_f9ef7bd954fb4194() {
    self.var_e1dba856ddad901c = 0;
    self.var_a178e0e81678156e = 0;
    self.var_6d2bd0a2ed13ec40 = 0;
    self.var_606aa5ed269e77a2 = 0;
    self.var_48c21e566da576af = 0;
    self.var_7c9bab5e596fecef = 0;
    self.var_6efaff3e096450a4 = 0;
    self.var_f259c331aef28ae6 = 0;
    self.var_cce2e6acbfa28188 = 0;
    self.var_5a7d6d9abfe5d84a = 0;
    self.57edec18_1172_akid = 0;
    self.var_e3e14a52f2ad7e07 = 0;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1015
// Size: 0xa3
function function_a52f1e6528800c39() {
    self.settospectate = 1;
    if (isdefined(self.primaryweaponobj)) {
        if (self hasweapon(self.primaryweaponobj)) {
            self takeweapon(self.primaryweaponobj);
            self clearclienttriggeraudiozone(2);
            setmusicstate("music_mainmenu_mp");
        }
    }
    if (isdefined(self.secondaryweaponobj)) {
        if (self hasweapon(self.secondaryweaponobj)) {
            self takeweapon(self.secondaryweaponobj);
        }
    }
    self suicide();
    waitframe();
    self allowspectateteam("none", 1);
    self.sessionstate = "spectator";
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x10c0
// Size: 0x2b, Type: bool
function function_42c8b6ff9adfabfa() {
    return getdvarint(@"hash_e46b4b4f19be660b", 0) == 1 && getdvarint(@"hash_c006752ec3578568", -1) > -1;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x10f4
// Size: 0xae
function function_847107a04c7fc7fb() {
    var_40f233f0d24307d6 = ["bundle_id", getdvarint(@"hash_c006752ec3578568"), "nb_bullet_fired", level.var_b8494e78ab9bc23e, "nb_inspection", getdvarint(@"hash_4033da1e021e6d5"), "nb_target_killed", level.var_a9a55beb5763b7d5, "accuracy", level.var_e89e680520310188, "time_spent_in_firing_range", gettime() - level.var_dd19f80de7b179be];
    dlog_recordevent("dlog_event_try_a_gun_stats", var_40f233f0d24307d6);
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x11aa
// Size: 0x15, Type: bool
function function_914509f96205b92d() {
    return getdvarint(@"hash_3e7f94c85db5827a", 1) == 1;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x11c8
// Size: 0x14a
function function_a3931d4b9b90f0e1() {
    if (!function_914509f96205b92d()) {
        return;
    }
    var_7e45a75e369b0163 = ["time_spent_in_firing_range", gettime() - level.var_81756a36088f74a4, "last_primary_weapon", self.primaryweaponobj.basename, "last_primary_type", "todo", "last_seconday_weapon", self.secondaryweaponobj.basename, "last_secondary_type", "todo", "last_bullets_fired", level.var_37a55ecaf979d920 + level.var_febc1f5f6fc40f70, "last_targets_killed", getomnvar("ui_firing_range_target_kill_count"), "last_accuracy", getomnvar("ui_firing_range_accuracy"), "num_plates_zero", level.var_ee0f9b1b1e7e1dce, "num_plates_one", level.var_9f4cede9e6b31bf0, "num_plates_two", level.var_ce3c34eac4202086, "num_plates_three", level.var_50f8b730d8c5eae4];
    dlog_recordevent("dlog_event_firing_range_stats", var_7e45a75e369b0163);
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x131a
// Size: 0x81
function function_3ec902beadbe5e8d() {
    if (!function_914509f96205b92d()) {
        return;
    }
    switch (level.var_37e9d3ecafdb61dc) {
    case 0:
        level.var_ee0f9b1b1e7e1dce++;
        break;
    case 1:
        level.var_9f4cede9e6b31bf0++;
        break;
    case 2:
        level.var_ce3c34eac4202086++;
        break;
    case 3:
        level.var_50f8b730d8c5eae4++;
        break;
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x13a3
// Size: 0x14a
function function_6ddbfa779dce4b5d() {
    function_a3931d4b9b90f0e1();
    function_a52f1e6528800c39();
    self setspectatedefaults(level.camera_loadout_showcase_overview.basecam.origin, level.camera_loadout_showcase_overview.basecam.angles);
    setomnvar("ui_firing_range_has_started", 0);
    setomnvar("ui_firing_range_lane", -1);
    function_4738968c0cd77b51();
    if (function_42c8b6ff9adfabfa()) {
        function_847107a04c7fc7fb();
        setdvar(@"hash_c006752ec3578568", -1);
    }
    level.var_37a55ecaf979d920 = 0;
    level.var_91d278fb245d797b = 0;
    level.var_febc1f5f6fc40f70 = 0;
    level.bulletshitsecondary = 0;
    level.var_31b6d2832a330f45 = 0;
    level.var_4e5b1ceaad66b065 = 0;
    function_f9ef7bd954fb4194();
    setomnvar("ui_firing_range_accuracy", 0);
    setomnvar("ui_firing_range_target_kill_count", 0);
    level notify("exit_firing_range");
    foreach (target in level.var_e0fd2fccbeadef41) {
        target thread respawntarget();
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x14f5
// Size: 0x1f
function function_31c28009668de7ec() {
    if (getomnvar("ui_firing_range_has_started") == 1) {
        function_75723f405bab9463();
        function_6ddbfa779dce4b5d();
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x151c
// Size: 0x89
function infiniteammo() {
    level endon("exit_firing_range");
    self notify("infiniteAmmo");
    self endon("infiniteAmmo");
    while (true) {
        weapons = self getweaponslistprimaries();
        foreach (weapon in weapons) {
            self givemaxammo(weapon);
            self setweaponammostock(weapon, weaponmaxammo(weapon));
        }
        waitframe();
    }
}

/#

    // Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
    // Params 0
    // Checksum 0x0, Offset: 0x15ad
    // Size: 0x56, Type: dev
    function function_1a2a24c0225bef64() {
        level endon("<dev string:x59>");
        while (true) {
            var_a0743e8d0d19bed8 = getdvarint(@"hash_ba7afa4a670ade73", -1);
            if (var_a0743e8d0d19bed8 != -1) {
                setdvar(@"hash_ba7afa4a670ade73", -1);
                self notify("<dev string:x6b>", "<dev string:x7b>", var_a0743e8d0d19bed8);
            }
            waitframe();
        }
    }

#/

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x160b
// Size: 0xc2
function function_7086103bdf1f2c05(var_10fd8ed3fed0e0ae) {
    var_9a4a482cac1b5c20 = level.var_37e9d3ecafdb61dc;
    level.var_37e9d3ecafdb61dc = int(max(0, var_10fd8ed3fed0e0ae));
    setomnvar("ui_firing_range_num_dummy_plates", level.var_37e9d3ecafdb61dc);
    foreach (ent in level.var_e0fd2fccbeadef41) {
        ent.var_c284c09ef7780e64.health = function_314b6888c85326db();
    }
    if (var_9a4a482cac1b5c20 != level.var_37e9d3ecafdb61dc) {
        function_3ec902beadbe5e8d();
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x16d5
// Size: 0x4f
function function_bd002aab782c389e() {
    self endon("disconnect");
    level endon("game_ended");
    level endon("exit_firing_range");
    while (true) {
        self waittill("luinotifyserver", channel, val);
        if (channel == "ui_set_dummy_num_plates") {
            function_7086103bdf1f2c05(val);
        }
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x172c
// Size: 0x15
function function_314b6888c85326db() {
    return function_c0ebb986ef34456d() + level.var_37e9d3ecafdb61dc * 50;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x174a
// Size: 0x45
function function_c0ebb986ef34456d() {
    defaultmaxhealth = getdvarint(@"hash_b1d561f9a9241e09", 100);
    if (getdvarint(@"hash_b5d05c0cbfa8bdc1", 0) == 1) {
        defaultmaxhealth = getdvarint(@"hash_cb5458a36c2b39d9", 150);
    }
    return defaultmaxhealth;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1798
// Size: 0x1e9
function function_f00185b72cdb3b04() {
    if (!isdefined(level.var_e0fd2fccbeadef41)) {
        if (!isdefined(level.var_37e9d3ecafdb61dc)) {
            level.var_37e9d3ecafdb61dc = 0;
        }
        level.var_e0fd2fccbeadef41 = function_abdba932e247d9c2("enemyTarget");
        foreach (ent in level.var_e0fd2fccbeadef41) {
            ent.var_c284c09ef7780e64 = spawn("script_origin", ent.origin);
            ent.var_c284c09ef7780e64.owner = ent;
            ent.var_c284c09ef7780e64.health = function_314b6888c85326db();
            ent.brushes = getentarray(ent.target, "targetname");
            foreach (brush in ent.brushes) {
                brush.owner = ent;
                brush thread function_66cdac98ac1a8a6a();
            }
            ent.var_c284c09ef7780e64 thread function_487345ce6a43a653();
            ent thread function_66cdac98ac1a8a6a(1);
            ent namespace_46e942396566f2da::function_c72573fb42d0cdbc();
        }
    } else {
        foreach (ent in level.var_e0fd2fccbeadef41) {
            ent.var_c284c09ef7780e64.health = function_314b6888c85326db();
        }
    }
    function_3ec902beadbe5e8d();
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1989
// Size: 0x2ea
function function_66cdac98ac1a8a6a(ismodel) {
    self setcandamage(1);
    data = spawnstruct();
    data.damage = 0;
    while (true) {
        self waittill("damage", damage, attacker, direction_vec, point, meansofdeath, modelname, tagname, partname, idflags, weapon, origin, angles, normal, var_13ea67fc910045ad);
        attacker = level.playerviewowner;
        victim = self.owner;
        if (istrue(ismodel)) {
            victim = self;
            if (isbulletdamage(meansofdeath)) {
                continue;
            }
        }
        hitloc = "torso_upper";
        if (isdefined(self.script_noteworthy)) {
            switch (self.script_noteworthy) {
            case #"hash_fc2fdaa21f480e36":
                hitloc = "torso_upper";
                break;
            case #"hash_b107b5547c755d23":
                hitloc = "head";
                break;
            case #"hash_c9b61a3a17a5fc6c":
                hitloc = "left_leg_upper";
                break;
            case #"hash_ca6516c10db2c95":
            case #"hash_7f9c384a34cc392f":
                hitloc = "left_arm_upper";
                break;
            }
        }
        currenttime = gettime();
        data.origin = self.origin;
        data.attacker = attacker;
        data.meansofdeath = meansofdeath;
        data.weapon = attacker getcurrentweapon();
        data.hitloc = hitloc;
        data.idflags = idflags;
        scaleddamage = int(floor(damage * function_77011f86063f18b4(attacker getcurrentweapon(), hitloc)));
        data.damage = scaleddamage;
        if (isspreadweapon(data.weapon)) {
            data.damage = spreadshotdamagemod(victim, data.attacker, data.weapon, data.damage, data.idflags);
        }
        if (data.damage > 0) {
            /#
                print3d(self.origin, data.damage, (1, 0, 0), 1, 0.75, 100, 1);
            #/
            victim thread processdamagethisframe(data);
        }
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1c7b
// Size: 0x75d
function processdamagethisframe(instance) {
    var_c284c09ef7780e64 = self.var_c284c09ef7780e64;
    if (var_c284c09ef7780e64.health <= 0) {
        return;
    }
    if (!isdefined(level.var_daf783f0070eccb5) || level.var_daf783f0070eccb5.damage < instance.damage) {
        level.var_daf783f0070eccb5 = instance;
    }
    level notify("processDamageThisFrame");
    level endon("processDamageThisFrame");
    waittillframeend();
    instance = level.var_daf783f0070eccb5;
    level.var_daf783f0070eccb5 = undefined;
    var_c284c09ef7780e64 dodamage(instance.damage, instance.origin, instance.attacker, instance.attacker, instance.meansofdeath, instance.weapon, instance.hitloc);
    level notify("damage_done");
    isheadshot = instance.hitloc == "head";
    hitdist = math::round_float(distance(instance.attacker.origin, var_c284c09ef7780e64.origin) / 39.37, 2);
    bulletsfired = 1;
    bulletshit = 1;
    if (instance.attacker getcurrentweapon() == instance.attacker.primaryweaponobj) {
        level.var_91d278fb245d797b = min(level.var_91d278fb245d797b + 1, level.var_37a55ecaf979d920);
        bulletshit = level.var_91d278fb245d797b;
        bulletsfired = level.var_37a55ecaf979d920;
        if (function_42c8b6ff9adfabfa()) {
            level.var_6ba74ccd0535dfab++;
            var_b8494e78ab9bc23e = max(1, level.var_b8494e78ab9bc23e);
            level.var_e89e680520310188 = clamp(level.var_6ba74ccd0535dfab / var_b8494e78ab9bc23e, 0, 1);
        }
        if (isheadshot) {
            level.var_31b6d2832a330f45++;
        }
        instance.attacker.var_a178e0e81678156e = clamp(level.var_31b6d2832a330f45 / bulletsfired, 0, 1);
        instance.attacker.var_6d2bd0a2ed13ec40 = clamp(bulletshit / bulletsfired, 0, 1);
        instance.attacker.var_606aa5ed269e77a2 += instance.damage;
        instance.attacker.var_48c21e566da576af = instance.damage;
        instance.attacker.var_7c9bab5e596fecef = clamp(hitdist, 0, 100);
    } else {
        level.bulletshitsecondary = min(level.bulletshitsecondary + 1, level.var_febc1f5f6fc40f70);
        bulletshit = level.bulletshitsecondary;
        bulletsfired = level.var_febc1f5f6fc40f70;
        if (isheadshot) {
            level.var_4e5b1ceaad66b065++;
        }
        instance.attacker.var_f259c331aef28ae6 = clamp(level.var_4e5b1ceaad66b065 / bulletsfired, 0, 1);
        instance.attacker.var_cce2e6acbfa28188 = clamp(bulletshit / bulletsfired, 0, 1);
        instance.attacker.var_5a7d6d9abfe5d84a += instance.damage;
        instance.attacker.57edec18_1172_akid = instance.damage;
        instance.attacker.var_e3e14a52f2ad7e07 = clamp(hitdist, 0, 100);
    }
    bulletsfired = max(1, bulletsfired);
    accuracy = clamp(bulletshit / bulletsfired, 0, 1);
    setomnvar("ui_firing_range_accuracy", accuracy);
    println("<dev string:x93>" + accuracy);
    var_a9acac74f8733ef9 = getdvarint(@"hash_c0bf29e81b3a5eec", 1);
    var_e97d8200c5b56592 = getdvarint(@"hash_d1eeda3bc1bfb41b", 1);
    icontype = undefined;
    hitsound = getdvar(@"hash_d6875627fd8914de");
    if (var_a9acac74f8733ef9 || var_e97d8200c5b56592) {
        var_3b42c59f79c3f077 = function_c0ebb986ef34456d();
        hasarmor = var_c284c09ef7780e64.health > var_3b42c59f79c3f077;
        hadarmor = var_c284c09ef7780e64.health + instance.damage > var_3b42c59f79c3f077;
        if (hadarmor && !hasarmor) {
            if (var_a9acac74f8733ef9) {
                icontype = "hitarmormaxplatebreak";
            }
            if (var_e97d8200c5b56592) {
                hitsound = "hit_marker_3d_armor_break";
            }
        } else if (hasarmor) {
            if (var_a9acac74f8733ef9) {
                icontype = "hitarmorlightmaxlevel";
            }
        }
    }
    if (var_c284c09ef7780e64.health <= 0) {
        prevvalue = getomnvar("ui_firing_range_target_kill_count");
        if (prevvalue <= 500) {
            setomnvar("ui_firing_range_target_kill_count", prevvalue + 1);
        }
        if (function_42c8b6ff9adfabfa()) {
            level.var_a9a55beb5763b7d5++;
        }
        if (instance.attacker getcurrentweapon() == instance.attacker.primaryweaponobj) {
            if (instance.attacker.var_e1dba856ddad901c <= 500) {
                instance.attacker.var_e1dba856ddad901c++;
            }
        } else if (instance.attacker.var_6efaff3e096450a4 <= 500) {
            instance.attacker.var_6efaff3e096450a4++;
        }
        if (isheadshot) {
            self playsoundtoplayer("mp_headshot_alert", instance.attacker);
        } else {
            self playsoundtoplayer("mp_kill_alert", instance.attacker);
        }
        instance.attacker scripts\mp\utility\hitmarker::function_2a968ddf3c277ce("standard", 1, isheadshot, 0, icontype);
        thread function_76ec949f11311da1(var_c284c09ef7780e64);
        deathdata = spawnstruct();
        deathdata.attacker = instance.attacker;
        deathdata.objweapon = instance.weapon;
        deathdata.meansofdeath = instance.meansofdeath;
        deathdata.hitloc = instance.hitloc;
        self.body = self;
        namespace_46e942396566f2da::function_1dd3a521ea9ecf27(deathdata.attacker, deathdata.objweapon, deathdata.meansofdeath, deathdata.hitloc);
        namespace_46e942396566f2da::function_eceb462b367e4b04(deathdata);
        return;
    }
    playsoundatpos(instance.origin, hitsound);
    instance.attacker scripts\mp\utility\hitmarker::function_2a968ddf3c277ce("standard", 0, isheadshot, 0, icontype);
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x23e0
// Size: 0x9e
function function_76ec949f11311da1(var_c284c09ef7780e64) {
    level endon("exit_firing_range");
    if (istrue(self.var_9a74c6fbe0cf64eb)) {
        return;
    }
    self.var_9a74c6fbe0cf64eb = 1;
    var_c284c09ef7780e64 setcandamage(0);
    self disableaimassist();
    self notsolid();
    self notify("entitydeleted");
    self scriptmodelplayanimdeltamotion("iw9_mp_firingrange_dummy_death");
    self playsound("uin_firingrange_target_fall");
    wait getanimlength(script_model#iw9_mp_firingrange_dummy_death);
    self scriptmodelplayanimdeltamotion("iw9_mp_firingrange_dummy_deathidle");
    wait 3;
    playsoundatpos(self.origin, "uin_firingrange_target_rise");
    thread respawntarget();
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2486
// Size: 0x87
function respawntarget() {
    if (!istrue(self.var_9a74c6fbe0cf64eb)) {
        return;
    }
    self scriptmodelplayanimdeltamotion("iw9_mp_firingrange_dummy_respawn");
    self.var_9a74c6fbe0cf64eb = 1;
    wait getanimlength(script_model#iw9_mp_firingrange_dummy_respawn);
    self scriptmodelclearanim();
    self.var_9a74c6fbe0cf64eb = 0;
    self solid();
    self enableaimassist();
    self.var_c284c09ef7780e64.health = function_314b6888c85326db();
    self.var_c284c09ef7780e64 setcandamage(1);
    namespace_46e942396566f2da::function_c72573fb42d0cdbc();
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2515
// Size: 0xa0
function function_487345ce6a43a653() {
    self setcandamage(1);
    self.owner enableaimassist();
    thread function_64289d610b532582();
    while (true) {
        self waittill("damage", damage, attacker, direction_vec, point, meansofdeath, modelname, tagname, partname, idflags, weapon);
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x25bd
// Size: 0x8e
function function_64289d610b532582() {
    while (true) {
        color = ter_op(self.health > 0, (0, 1, 0), (1, 0, 0));
        /#
            print3d(self.owner.origin + (0, 0, 100), int(max(self.health, 0)), color, 1, 0.75, 1, 1);
        #/
        waitframe();
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2653
// Size: 0xbd
function function_b74a4c79011e5adf(primary) {
    level notify("frontend_watch_bullets");
    level endon("exit_firing_range");
    level endon("frontend_watch_bullets");
    while (true) {
        self waittill("weapon_fired", objweapon);
        bulletsfired = 0;
        hitnum = 0;
        if (objweapon == primary) {
            level.var_37a55ecaf979d920++;
            bulletsfired = level.var_37a55ecaf979d920;
            hitnum = level.var_91d278fb245d797b;
            if (function_42c8b6ff9adfabfa()) {
                level.var_b8494e78ab9bc23e++;
            }
        } else {
            level.var_febc1f5f6fc40f70++;
            bulletsfired = level.var_febc1f5f6fc40f70;
            hitnum = level.bulletshitsecondary;
        }
        thread function_af1e66cd09d0fa6f(hitnum, bulletsfired, objweapon == primary);
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2718
// Size: 0x15b
function function_af1e66cd09d0fa6f(hitnum, bulletsfired, isprimary) {
    level notify("wait_for_bullet_result");
    level endon("exit_firing_range");
    level endon("wait_for_bullet_result");
    thread waitfordamage();
    level waittill_any_2("timeout_damage", "damage_done");
    if (isprimary && hitnum == level.var_91d278fb245d797b || !isprimary && hitnum == level.bulletshitsecondary) {
        bulletsfired = max(1, bulletsfired);
        accuracy = clamp(hitnum / bulletsfired, 0, 1);
        setomnvar("ui_firing_range_accuracy", accuracy);
        println("<dev string:xb1>" + accuracy);
        if (isprimary) {
            self.var_6d2bd0a2ed13ec40 = accuracy;
            self.var_a178e0e81678156e = clamp(level.var_31b6d2832a330f45 / bulletsfired, 0, 1);
        } else {
            self.var_cce2e6acbfa28188 = accuracy;
            self.var_f259c331aef28ae6 = clamp(level.var_4e5b1ceaad66b065 / bulletsfired, 0, 1);
        }
        if (isprimary && function_42c8b6ff9adfabfa()) {
            var_b8494e78ab9bc23e = max(1, level.var_b8494e78ab9bc23e);
            level.var_e89e680520310188 = clamp(level.var_6ba74ccd0535dfab / var_b8494e78ab9bc23e, 0, 1);
        }
    }
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x287b
// Size: 0x25
function waitfordamage() {
    level endon("damage_done");
    level endon("exit_firing_range");
    level endon("wait_for_bullet_result");
    wait 0.1;
    level notify("timeout_damage");
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x28a8
// Size: 0x28, Type: bool
function isspreadweapon(objweapon) {
    return isdefined(objweapon) && isdefined(weaponclass(objweapon)) && weaponclass(objweapon) == "spread";
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 5, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x28d9
// Size: 0x360
function spreadshotdamagemod(victim, eattacker, objweapon, idamage, idflags) {
    if (isdefined(eattacker) && isdefined(victim)) {
        hand = function_88e9e2299bd29fd1(idflags);
        victimentnum = function_d77e6b2580f74622(victim);
        time = gettime();
        if (!isdefined(eattacker.pelletweaponvictimids)) {
            eattacker.pelletweaponvictimids = [];
        }
        foreach (ihand, var_25762ef6bb7ced23 in eattacker.pelletweaponvictimids) {
            foreach (victimstruct in var_25762ef6bb7ced23) {
                if ((time - victimstruct.time) / 1000 > 0.1) {
                    eattacker.pelletweaponvictimids[ihand] = array_remove_key(eattacker.pelletweaponvictimids[ihand], victimid);
                    if (eattacker.pelletweaponvictimids[ihand].size == 0) {
                        eattacker.pelletweaponvictimids = array_remove_key(eattacker.pelletweaponvictimids, ihand);
                    }
                }
            }
        }
        if (!isdefined(eattacker.pelletweaponvictimids[hand])) {
            eattacker.pelletweaponvictimids[hand] = [];
        }
        if (!isdefined(eattacker.pelletweaponvictimids[hand][victimentnum])) {
            eattacker.pelletweaponvictimids[hand][victimentnum] = function_c415d83582aad1e4(eattacker, objweapon, time);
        }
        eattacker.pelletweaponvictimids[hand][victimentnum].var_7981f7d372990a2b = 0;
        eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed = array_sort_with_func(eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed, &is_lower);
        if (eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed.size >= eattacker.pelletweaponvictimids[hand][victimentnum].var_33ac4c9665be6910) {
            if (idamage > eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed[0]) {
                damagedelta = idamage - eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed[0];
                eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed[0] = idamage;
                eattacker.pelletweaponvictimids[hand][victimentnum].var_7981f7d372990a2b = 1;
                idamage = damagedelta;
            } else {
                return 0;
            }
        } else {
            eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed = array_insert(eattacker.pelletweaponvictimids[hand][victimentnum].pelletdmgpassed, idamage, 0);
        }
        idamage = function_1113fc99a0327d7d(eattacker, victim, idflags, idamage);
    }
    return idamage;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2c42
// Size: 0x22
function function_88e9e2299bd29fd1(idflags) {
    if (idflags & 2048) {
        return "lHandWeap";
    }
    return "rHandWeap";
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2c6c
// Size: 0x17
function function_d77e6b2580f74622(victim) {
    return "" + victim getentitynumber();
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2c8c
// Size: 0x9a
function function_c415d83582aad1e4(eattacker, objweapon, time) {
    struct = spawnstruct();
    struct.time = time;
    struct.pelletdmgpassed = [];
    struct.var_9bb59738d095536e = 0;
    struct.var_33ac4c9665be6910 = getspreadpelletspershot(eattacker, objweapon);
    if (function_a062727999a72d2f(objweapon.basename)) {
        struct.var_52f16f4c9cdbf165 = 120;
    } else {
        struct.var_52f16f4c9cdbf165 = 200;
    }
    return struct;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2d2f
// Size: 0x7d, Type: bool
function function_a062727999a72d2f(weaponname) {
    var_f8c0529126c5fb04 = ["iw9_sh_mike1014_mp", "iw9_sh_vecho_mp", "iw9_pi_swhiskey_mp"];
    foreach (i in var_f8c0529126c5fb04) {
        if (i == weaponname) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2db5
// Size: 0x11e
function function_1113fc99a0327d7d(eattacker, victim, idflags, idamage) {
    hand = function_88e9e2299bd29fd1(idflags);
    victimentnum = function_d77e6b2580f74622(victim);
    if (!isdefined(eattacker.pelletweaponvictimids[hand]) || !isdefined(eattacker.pelletweaponvictimids[hand][victimentnum])) {
        return idamage;
    }
    var_52f16f4c9cdbf165 = eattacker.pelletweaponvictimids[hand][victimentnum].var_52f16f4c9cdbf165;
    var_9bb59738d095536e = eattacker.pelletweaponvictimids[hand][victimentnum].var_9bb59738d095536e;
    if (var_9bb59738d095536e < var_52f16f4c9cdbf165) {
        idamage = clamp(idamage, 0, var_52f16f4c9cdbf165 - eattacker.pelletweaponvictimids[hand][victimentnum].var_9bb59738d095536e);
        eattacker.pelletweaponvictimids[hand][victimentnum].var_9bb59738d095536e += idamage;
        return idamage;
    }
    return 0;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2edb
// Size: 0x16, Type: bool
function is_lower(a, b) {
    return a < b;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2efa
// Size: 0x8b
function getspreadpelletspershot(eattacker, objweapon) {
    rootname = getweaponrootname(objweapon.basename);
    if (rootname == "iw9_sh_charlie725" || rootname == "iw9_pi_swhiskey") {
        if (eattacker isdualwielding()) {
            return 2;
        }
        if (objweapon hasattachment("bar_sh_short_p14")) {
            return 3;
        }
        ads = eattacker playerads() > 0.5;
        if (ads) {
            return 4;
        } else {
            return 3;
        }
        return;
    }
    return 4;
}

// Namespace namespace_a406dc37134c52b / namespace_6e3b4d9612ec510e
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2f8d
// Size: 0x20f
function getweaponrootname(weapon) {
    if (!isdefined(level.weaponrootcache)) {
        level.weaponrootcache = [];
    }
    weaponname = undefined;
    if (isweapon(weapon)) {
        weaponname = weapon.basename;
    } else {
        assert(isstring(weapon));
        weaponname = weapon;
    }
    cachedvalue = level.weaponrootcache[weaponname];
    if (isdefined(cachedvalue)) {
        return cachedvalue;
    }
    originalname = weaponname;
    tokens = strtok(weaponname, "_");
    index = 0;
    if (tokens[0] == "alt") {
        index++;
    }
    if (tokens[index] == "iw8" || tokens[index] == "iw9" || tokens[index] == "t10" || tokens[index] == "jup") {
        classtokens = ["ar", "sm", "lm", "sh", "sn", "dm", "pi", "la", "me", "br"];
        if (isdefined(tokens[index + 1]) && array_contains(classtokens, tokens[index + 1])) {
            if (tokens.size >= index + 4 && tokens[index] == "t10" || tokens[index] == "jup") {
                weaponname = tokens[index] + "_" + tokens[index + 1] + "_" + tokens[index + 2] + "_" + tokens[index + 3];
            } else {
                weaponname = tokens[index] + "_" + tokens[index + 1] + "_" + tokens[index + 2];
            }
        } else {
            weaponname = tokens[index] + "_" + tokens[index + 1];
        }
    }
    if (level.weaponrootcache.size < 100) {
        level.weaponrootcache[originalname] = weaponname;
    }
    return weaponname;
}

