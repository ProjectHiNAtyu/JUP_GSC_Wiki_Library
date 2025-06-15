// scripts\quaked\script_struct_mp_iw9_mrap.gsc  (432B72D7FC797EF4.gscc) (size: 15585 Bytes / 0x3ce1 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xbfa4d4c5 (3215250629)
// size ...... 15585 (0x3ce1)
// includes .. 13  (offset: 0x564)
// strings ... 66  (offset: 0x38a9)
// dev strs .. 0   (offset: 0x3ce1)
// exports ... 39  (offset: 0x2135)
// cseg ...... 0x5cc + 0x1b69 (0x2135)
// imports ... 148 (offset: 0x274d)
// animtree1 . 0   (offset: 0x3ce1)
// animtree2 . 0   (offset: 0x3ce1)
#using scripts\common\utility;
#using scripts\cp_mp\entityheadicons;
#using scripts\cp_mp\utility\damage_utility;
#using scripts\cp_mp\utility\game_utility;
#using scripts\cp_mp\utility\killstreak_utility;
#using scripts\cp_mp\utility\player_utility;
#using scripts\cp_mp\utility\vehicle_omnvar_utility;
#using scripts\cp_mp\vehicles\customization\battle_tracks;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\cp_mp\vehicles\vehicle_tracking;
#using scripts\engine\utility;

#namespace namespace_69b5676020104b55;

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0
// Checksum 0x0, Offset: 0x5d4
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_mil_lnd_mrap", &function_8385e33cb3e5e39e);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x5ef
// Size: 0x115
function private function_8385e33cb3e5e39e() {
    if (!function_9697379150687859("veh9_mil_lnd_mrap")) {
        return;
    }
    if (utility::iscp()) {
        return;
    }
    assertex(isdefined(level.vehicle), "mrap_init() called before vehicle_init().");
    assertex(!isdefined(level.vehicle.mrap), "mrap_init() should only be called once.");
    callbacks = [];
    callbacks["spawn"] = &function_c02dd63d8657cf38;
    callbacks["enterEnd"] = &function_edfacde58cb56417;
    callbacks["exitEnd"] = &function_ccd9db63cabe6ff1;
    callbacks["reenter"] = &function_a4d7a7606411e415;
    callbacks["createGrenadeTurret"] = &function_fcacbcc0004574a0;
    function_8497e7e46b5e397("veh9_mil_lnd_mrap", callbacks);
    leveldataforvehicle = vehomn_getleveldataforvehicle("veh9_mil_lnd_mrap", 1);
    leveldataforvehicle.ammoids["popsmoke"] = 1;
    level.vehicle.mrap = spawnstruct();
    level.vehicle.mrap.canautodestruct = 1;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x70c
// Size: 0x17b
function private function_c02dd63d8657cf38(spawndata, faildata) {
    vehicle = function_bba34cf920370ff4("veh9_mil_lnd_mrap", spawndata, faildata);
    var_42691f43db8e6783 = function_4c0a67070435b7be();
    mgturret = function_994f2f7fd7a2bbdb(vehicle, "iw9_mg_mrap_mp", "veh9_mil_lnd_mrap_turret_gun", var_42691f43db8e6783.tag, var_42691f43db8e6783.tagoffset, var_42691f43db8e6783.exitoffset);
    vehicle_registerturret(vehicle, mgturret, makeweapon("iw9_mg_mrap_mp"));
    if (!istrue(spawndata.var_427538f5a2ad4f8b)) {
        turret = function_fcacbcc0004574a0(vehicle, spawndata);
        vehicle_registerturret(vehicle, turret, makeweapon("iw9_tur_mrap_mp"));
    } else if (isdefined(spawndata.var_14cde247ac3313a4)) {
        vehicle.var_fadc8ce0c904abda = spawndata.var_14cde247ac3313a4;
    }
    if (istrue(spawndata.var_65da0a245b653cc)) {
        vehicle.occupantsreserving["gunner"] = vehicle;
    }
    vehicle.var_ec76ffdbe2f37c5b = istrue(spawndata.var_ec76ffdbe2f37c5b);
    vehicle.var_b3c822af793d474f = [];
    vehicle.var_9cd07317ba52df4 = !vehicle.var_ec76ffdbe2f37c5b;
    if (scripts\cp_mp\utility\game_utility::isbrstylegametype()) {
        vehicle.var_c2594ac36ee74a08 = 35;
    } else {
        vehicle.var_c2594ac36ee74a08 = 10;
    }
    vehicle thread function_9c0fbc8660be15b7();
    return vehicle;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 2
// Checksum 0x0, Offset: 0x890
// Size: 0xf9
function function_fcacbcc0004574a0(vehicle, spawndata) {
    weaponname = "iw9_tur_mrap_mp";
    turret = spawnturret("misc_turret", vehicle gettagorigin("tag_turret_front"), weaponname, 0);
    turret linkto(vehicle, "tag_turret_front", (0, 0, 0), (0, 0, 0));
    model = "veh9_mil_lnd_mrap_turret_grenade";
    if (isdefined(spawndata.var_14cde247ac3313a4)) {
        model = spawndata.var_14cde247ac3313a4 + "::" + model;
    }
    turret setmodel(model);
    turret setmode("sentry_offline");
    turret setsentryowner(undefined);
    turret makeunusable();
    turret setdefaultdroppitch(0);
    turret setturretmodechangewait(1);
    turret.angles = vehicle.angles;
    turret.vehicle = vehicle;
    return turret;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x992
// Size: 0x56
function private function_4c0a67070435b7be() {
    var_42691f43db8e6783 = spawnstruct();
    var_42691f43db8e6783.tag = "tag_turret";
    var_42691f43db8e6783.tagoffset = (0, 0, 0);
    var_42691f43db8e6783.exitoffset = (-40, 0, 16);
    return var_42691f43db8e6783;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 6, eflags: 0x4
// Checksum 0x0, Offset: 0x9f1
// Size: 0x185
function private function_994f2f7fd7a2bbdb(vehicle, turret_weapon, turret_model, turret_tag, var_f7c8fc384585fa86, var_721f077d971e21d5) {
    turret = spawnturret("misc_turret", vehicle gettagorigin(turret_tag), turret_weapon, 0);
    turret linkto(vehicle, turret_tag, var_f7c8fc384585fa86, (0, 0, 0));
    turret setmodel(turret_model);
    turret makeunusable();
    turret setmode("sentry_offline");
    turret setdefaultdroppitch(30);
    turret setturretmodechangewait(1);
    hintpos = turret gettagorigin("tag_origin");
    if (scripts\engine\utility::issharedfuncdefined("vehicle", "createHint")) {
        turret.useobject = [[ scripts\engine\utility::getsharedfunc("vehicle", "createHint") ]](hintpos, "HINT_BUTTON", undefined, %VEHICLES_HINTS/USE_TURRET, -1, "duration_none", "show", 150, undefined, 150);
    }
    turret.useobject linkto(turret, "tag_origin");
    turret thread function_5c1dbb360748154d(turret.useobject, vehicle, turret_weapon, turret_tag);
    turret.angles = vehicle.angles;
    turret.vehicle = vehicle;
    turret.maxhealth = 400;
    turret.health = turret.maxhealth;
    turret.exit = var_721f077d971e21d5;
    return turret;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 4, eflags: 0x4
// Checksum 0x0, Offset: 0xb7f
// Size: 0x23b
function private function_5c1dbb360748154d(triggerobject, vehicle, turretweapon, turret_tag) {
    self endon("kill_turret");
    level endon("game_ended");
    foreach (player in level.players) {
        triggerobject enableplayeruse(player);
    }
    thread function_eedbab7faf413258(triggerobject);
    while (true) {
        triggerobject waittill("trigger", player);
        if (istrue(self.inuse)) {
            continue;
        }
        if (player isonladder() || !player isonground() || player ismantling() || istrue(player.isjuggernaut)) {
            if (scripts\engine\utility::issharedfuncdefined("hud", "showErrorMessage")) {
                player [[ scripts\engine\utility::getsharedfunc("hud", "showErrorMessage") ]]("VEHICLES/CANNOT_ENTER_TURRET");
            }
            continue;
        }
        self.inuse = 1;
        triggerobject function_dfb78b3e724ad620(0);
        if (!isdefined(vehicle.turretoccupants)) {
            vehicle.turretoccupants = [];
        }
        vehicle.turretoccupants[vehicle.turretoccupants.size] = player;
        vehicle vehicle_spawn_stopwatchingabandoned();
        scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_hidecashbag(vehicle, undefined, player);
        player function_5847240c0f9900f2(0);
        weapon = "iw9_mg_mrap_mp";
        scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_deleteseatcorpse(vehicle, turret_tag, 1);
        scripts\cp_mp\utility\vehicle_omnvar_utility::function_d2d9c09551d91164(vehicle, player);
        turret = vehicle_getturretbyweapon(vehicle, weapon);
        level thread scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_disablefirefortime(player, ter_op(istrue(turret.var_ecc491f42aaceaf4), 850, 2200));
        turret.var_ecc491f42aaceaf4 = 1;
        player.var_e9a71c27fef1b65a = turret_tag;
        player.externalvehicle = vehicle;
        thread scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_giveturret(player, vehicle, weapon);
        scripts\cp_mp\vehicles\customization\battle_tracks::battle_tracks_onentervehicle(vehicle, player);
        turret thread function_9bf55f5544386843(player);
        turret thread function_ed8363986249e9a4(player, vehicle);
        turret thread function_47f1f11faa1e0bfc(player, vehicle);
        turret thread function_870a09b029f348e(player, vehicle);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0xdc2
// Size: 0x41
function private function_eedbab7faf413258(useobj) {
    if (isdefined(self)) {
        self endon("kill_turret");
    }
    level endon("game_ended");
    while (true) {
        level waittill("connected", player);
        useobj enableplayeruse(player);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0xe0b
// Size: 0x8d
function private function_ed8363986249e9a4(player, vehicle) {
    self endon("kill_turret");
    player endon("end_turret_use");
    player endon("disconnect");
    level endon("game_ended");
    detachdistancesq = 20000;
    if (isdefined(self.moving_platform)) {
        detachdistancesq = 20000;
    }
    while (true) {
        if (player isinexecutionvictim() || distancesquared(self.origin, player.origin) >= detachdistancesq) {
            thread function_1346cdf1abb57e5b(player, vehicle);
            break;
        }
        waitframe();
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0xea0
// Size: 0x5b
function private function_47f1f11faa1e0bfc(player, vehicle) {
    self endon("kill_turret");
    player endon("end_turret_use");
    player endon("disconnect");
    level endon("game_ended");
    while (player usebuttonpressed()) {
        waitframe();
    }
    while (true) {
        if (player usebuttonpressed()) {
            thread function_1346cdf1abb57e5b(player, vehicle);
            break;
        }
        waitframe();
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0xf03
// Size: 0x44
function private function_870a09b029f348e(player, vehicle) {
    self endon("kill_turret");
    player endon("end_turret_use");
    level endon("game_ended");
    player waittill_any_2("death_or_disconnect", "last_stand_start");
    thread function_1346cdf1abb57e5b(player, vehicle);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0xf4f
// Size: 0x3f
function private function_9bf55f5544386843(player) {
    self endon("kill_turret");
    player endon("end_turret_use");
    player endon("death_or_disconnect");
    level endon("game_ended");
    while (true) {
        self.lastuserangles = player getplayerangles();
        waitframe();
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0xf96
// Size: 0x145
function private function_1346cdf1abb57e5b(player, vehicle) {
    self.inuse = 0;
    if (isdefined(player)) {
        player notify("end_turret_use");
        scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_showcashbag(vehicle, undefined, player);
        player function_5847240c0f9900f2(1);
    }
    scripts\cp_mp\vehicles\customization\battle_tracks::battle_tracks_onexitvehicle(vehicle, player);
    vehicle.turretoccupants = array_remove(vehicle.turretoccupants, player);
    vehicle thread vehicle_spawn_watchabandoned();
    self.useobject function_dfb78b3e724ad620(1);
    if (isdefined(player)) {
        player enableturretdismount();
        player controlturretoff(self);
        player.var_e9a71c27fef1b65a = undefined;
        player.externalvehicle = undefined;
        thread scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_taketurret(player, vehicle, self.objweapon.basename, spawnstruct(), 0);
        scripts\cp_mp\utility\vehicle_omnvar_utility::function_5211953231a09ed5(vehicle, player);
    }
    self.owner = undefined;
    self setotherent(undefined);
    self setentityowner(undefined);
    if (isdefined(player) && player scripts\cp_mp\utility\player_utility::_isalive()) {
        player function_a055801da45d769(rotatevector(self.exit, vehicle.angles) + vehicle.origin, vehicle);
        player setplayerangles(self.lastuserangles);
        thread vehicle_preventplayercollisiondamagefortimeafterexit(vehicle, player);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x10e3
// Size: 0xa0
function private function_90db51cdf784778d() {
    foreach (turret in vehicle_getturrets(self)) {
        turret notify("kill_turret");
        if (isdefined(turret.owner)) {
            turret thread function_1346cdf1abb57e5b(turret.owner, self);
        }
        vehicle_deregisterturret(self, turret.objweapon);
        turret.useobject delete();
        turret delete();
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x118b
// Size: 0x12
function private function_72b740c96f213c47(vehicle) {
    function_90db51cdf784778d();
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x11a5
// Size: 0x47
function private function_edfacde58cb56417(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (istrue(data.success)) {
        thread function_9c320c91ab9708ee(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x11f4
// Size: 0xcf
function private function_9c320c91ab9708ee(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (seatid == "driver") {
        vehicle thread function_d6b5ad0707b3539e(player);
        thread vehicle_occupancy_disablefirefortime(player, 250);
        thread function_50f0644ffd3cd614(player);
    } else if (seatid == "gunner") {
        level thread vehicle_occupancy_disablefirefortime(player, 100);
        player thread scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_giveturret(player, vehicle, "iw9_tur_mrap_mp");
        player playerlinkto(vehicle, "tag_seat_1");
        function_e13dfe8ce29194bb(player);
        player visionsetkillstreakforplayer("aviCougarGunner", 0);
        thread function_bc35436299b4b69d(player);
    }
    if (!isdefined(var_fc7c7a874b43a31a)) {
        vehicle function_63f3c4df75521924(player);
    }
    vehomn_updateomnvarsonseatenter(vehicle, var_fc7c7a874b43a31a, seatid, player);
    function_48658d8851154485(vehicle, var_fc7c7a874b43a31a, seatid, player);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x12cb
// Size: 0x47
function private function_ccd9db63cabe6ff1(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (istrue(data.success)) {
        thread function_ccf255acab209214(vehicle, seatid, var_7558f98f3236963d, player, data);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x131a
// Size: 0x177
function private function_ccf255acab209214(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (seatid == "driver") {
        vehicle notify("mrap_driver_exit");
        if (istrue(data.playerdisconnect)) {
        }
    } else if (seatid == "gunner") {
        turret = vehicle_getturretbyweapon(vehicle, "iw9_tur_mrap_mp");
        thread function_50f0644ffd3cd614(player);
        if (!istrue(data.playerdisconnect)) {
            thread vehicle_occupancy_taketurret(player, vehicle, "iw9_tur_mrap_mp", spawnstruct());
            player enableturretdismount();
            if (player islinked()) {
                player unlink();
            }
            player visionsetkillstreakforplayer("");
            thread vehicle_occupancy_cleardisablefirefortime(player, data.playerdeath);
        }
        turret.owner = undefined;
        turret setotherent(undefined);
        turret setentityowner(undefined);
        turret setsentryowner(undefined);
        function_6c43fbfc4c4772b2(player);
    }
    if (!istrue(data.playerdisconnect)) {
        if (!isdefined(var_7558f98f3236963d)) {
            vehicle function_63f3c4df75521924(player);
        }
        success = vehicle_occupancy_moveplayertoexit(vehicle, seatid, var_7558f98f3236963d, player, data);
        if (!success) {
            if (scripts\engine\utility::issharedfuncdefined("vehicle_occupancy", "handleSuicideFromVehicles")) {
                [[ scripts\engine\utility::getsharedfunc("vehicle_occupancy", "handleSuicideFromVehicles") ]](player);
            } else {
                player suicide();
            }
        }
    }
    scripts\cp_mp\utility\vehicle_omnvar_utility::vehomn_updateomnvarsonseatexit(vehicle, seatid, var_7558f98f3236963d, player);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x1499
// Size: 0x4d
function private function_a4d7a7606411e415(vehicle, var_9de41f2ee77c33ba, var_3f68c37bafd38606, player, data) {
    if (isdefined(var_3f68c37bafd38606) && var_3f68c37bafd38606 == "gunner") {
        thread vehicle_occupancy_taketurret(player, vehicle, "iw9_tur_mrap_mp", data, 1);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x14ee
// Size: 0x1c
function private function_bc35436299b4b69d(player) {
    player setclienttriggeraudiozone("veh_mrap_turret", 0.2);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1512
// Size: 0x17
function private function_50f0644ffd3cd614(player) {
    player clearclienttriggeraudiozone(0.2);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1531
// Size: 0x33
function private function_e13dfe8ce29194bb(player) {
    if (isdefined(player.gunnerdamagemodifier)) {
        return;
    }
    player scripts\cp_mp\utility\damage_utility::adddamagemodifier("ltGunnerMissileRedux", 0.4, 0, &function_cda65dc0eb19e782);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x156c
// Size: 0x34
function private function_6c43fbfc4c4772b2(player) {
    if (!isdefined(player.gunnerdamagemodifier)) {
        return;
    }
    player.gunnerdamagemodifier = undefined;
    player scripts\cp_mp\utility\damage_utility::removedamagemodifier("ltGunnerMissileRedux", 0);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 7, eflags: 0x4
// Checksum 0x0, Offset: 0x15a8
// Size: 0xf7
function private function_cda65dc0eb19e782(inflictor, attacker, victim, damage, meansofdeath, objweapon, hitloc) {
    if (meansofdeath != "MOD_PROJECTILE_SPLASH" && meansofdeath != "MOD_GRENADE_SPLASH") {
        return 1;
    }
    if (!isdefined(objweapon)) {
        return 1;
    }
    switch (objweapon.basename) {
    case #"hash_3e782fd775b72022":
    case #"hash_5c272c0617caebf0":
    case #"hash_5cbb3a1a84d47f1d":
    case #"hash_6b9700922cc910a9":
    case #"hash_708fb6e22f87a3a4":
    case #"hash_a9e31b8ffd42a67b":
    case #"hash_b5e9f2d6fac1a505":
    case #"hash_e704ecf8710c6f57":
    case #"hash_f55c20924061bd15":
    case #"hash_fd9c279f85990dad":
        return 0;
    default:
        return 1;
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x16a7
// Size: 0xee
function private function_ce4c02d228c5b367(var_45c9b66826527876) {
    icon = self.headicon;
    if (!isdefined(icon)) {
        icon = scripts\cp_mp\entityheadicons::setheadicon_createnewicon();
        if (!isdefined(icon)) {
            return 0;
        }
        self.headicon = icon;
        setheadiconzoffset(icon, 110);
    }
    self.headiconforcapture = istrue(var_45c9b66826527876);
    naturaldist = ter_op(istrue(var_45c9b66826527876), 0, 0);
    maxdist = ter_op(istrue(var_45c9b66826527876), 2250, 2250);
    var_94dc5deab609fdc9 = ter_op(istrue(var_45c9b66826527876), 1, 0);
    var_c18f8868bd35fee2 = ter_op(istrue(var_45c9b66826527876), 1, 0);
    setheadiconnaturaldistance(icon, naturaldist);
    setheadiconmaxdistance(icon, maxdist);
    setheadicondrawthroughgeo(icon, var_94dc5deab609fdc9);
    setheadiconsnaptoedges(icon, var_c18f8868bd35fee2);
    if (istrue(level.var_32fe21b3c5052471) && level.teambased) {
        function_ce9d0299637c2c24(icon, 1);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x179d
// Size: 0x30
function private function_a9df40a21cd98d19() {
    scripts\cp_mp\entityheadicons::setheadicon_deleteicon(self.headicon);
    self.headicon = undefined;
    self.headiconowneroverride = undefined;
    self.headiconteamoverride = undefined;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x17d5
// Size: 0xdd
function private function_6457b39281a7f9ca(owneroverride, teamoverride) {
    if (!isdefined(self.headicon)) {
        return;
    }
    if (isdefined(owneroverride)) {
        if (isstring(owneroverride) && owneroverride == "none") {
            self.headiconowneroverride = undefined;
        } else {
            self.headiconowneroverride = owneroverride;
        }
    }
    if (isdefined(teamoverride)) {
        if (teamoverride == "none") {
            self.headiconteamoverride = undefined;
        } else {
            self.headiconteamoverride = teamoverride;
        }
    }
    function_ab60ec681ca9af95();
    function_ecb6f9099a4e8f6b();
    function_4cd40b506a2f07ff();
    foreach (player in level.players) {
        function_63f3c4df75521924(player);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x18ba
// Size: 0x1f0
function private function_63f3c4df75521924(player) {
    if (!isdefined(self.headicon)) {
        return;
    }
    vehicle = player scripts\cp_mp\utility\player_utility::getvehicle();
    if (isdefined(vehicle) && vehicle == self) {
        scripts\cp_mp\entityheadicons::setheadicon_removeclientfrommask(self.headicon, player);
        return;
    }
    owner = undefined;
    if (isdefined(self.headiconowneroverride)) {
        owner = self.headiconowneroverride;
    } else {
        owner = self.owner;
    }
    team = undefined;
    if (isdefined(self.headiconteamoverride)) {
        team = self.headiconteamoverride;
    } else {
        team = self.team;
    }
    leveldata = function_c38a5128f25cfbee();
    if (level.teambased) {
        if (team == "neutral") {
            if (!isdefined(owner)) {
                if (true) {
                    scripts\cp_mp\entityheadicons::setheadicon_addclienttomask(self.headicon, player);
                    return;
                }
                scripts\cp_mp\entityheadicons::setheadicon_removeclientfrommask(self.headicon, player);
                return;
            } else {
                team = owner.team;
            }
        }
        if (isenemyteam(team, player.team)) {
            if (istrue(leveldata.showheadicontoenemy)) {
                scripts\cp_mp\entityheadicons::setheadicon_addclienttomask(self.headicon, player);
            } else {
                scripts\cp_mp\entityheadicons::setheadicon_removeclientfrommask(self.headicon, player);
            }
        } else {
            scripts\cp_mp\entityheadicons::setheadicon_addclienttomask(self.headicon, player);
        }
        return;
    }
    if (!isdefined(owner)) {
        if (true) {
            scripts\cp_mp\entityheadicons::setheadicon_addclienttomask(self.headicon, player);
            return;
        }
        scripts\cp_mp\entityheadicons::setheadicon_removeclientfrommask(self.headicon, player);
        return;
    }
    if (player != owner) {
        if (leveldata.showheadicontoenemy) {
            scripts\cp_mp\entityheadicons::setheadicon_addclienttomask(self.headicon, player);
        } else {
            scripts\cp_mp\entityheadicons::setheadicon_removeclientfrommask(self.headicon, player);
        }
        return;
    }
    scripts\cp_mp\entityheadicons::setheadicon_addclienttomask(self.headicon, player);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1ab2
// Size: 0x6b
function private function_fa5fbaf4803f160(player) {
    lighttanks = scripts\cp_mp\vehicles\vehicle_tracking::vehicle_tracking_getgameinstances("veh9_mil_lnd_mrap");
    foreach (lighttank in lighttanks) {
        lighttank function_63f3c4df75521924(player);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1b25
// Size: 0x6c, Type: bool
function private function_ab60ec681ca9af95() {
    if (level.teambased) {
        return false;
    }
    owner = undefined;
    if (isdefined(self.headiconowneroverride)) {
        owner = self.headiconowneroverride;
    } else {
        owner = self.owner;
    }
    if (isdefined(owner)) {
        setheadiconowner(self.headicon, owner);
    } else {
        setheadiconowner(self.headicon, undefined);
    }
    return true;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1b9a
// Size: 0x53
function private function_ecb6f9099a4e8f6b() {
    if (!level.teambased) {
        return;
    }
    team = function_a52340952557c2b6();
    if (isdefined(team) && team != "neutral") {
        setheadiconteam(self.headicon, team);
        return;
    }
    setheadiconteam(self.headicon, undefined);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1bf5
// Size: 0x181
function private function_4cd40b506a2f07ff() {
    leveldata = function_c38a5128f25cfbee();
    var_9318d957cb71a518 = ter_op(istrue(self.headiconforcapture), 1, 1);
    if (var_9318d957cb71a518) {
        setheadiconfriendlyimage(self.headicon, level.factionfriendlyheadicon);
        if (true) {
            setheadiconneutralimage(self.headicon, level.factionenemyheadicon);
        }
        if (leveldata.showheadicontoenemy) {
            setheadiconenemyimage(self.headicon, level.factionenemyheadicon);
        }
        return;
    }
    var_c3e202acf77e4dd4 = ter_op(istrue(self.headiconforcapture), 1, 1);
    var_f1a0dcc04676e92f = ter_op(istrue(self.headiconforcapture), 0, leveldata.showheadicontoenemy);
    friendlyimage = ter_op(istrue(self.headiconforcapture), "hud_icon_killstreak_bradley_friendly", "hud_icon_killstreak_bradley_friendly");
    neutralimage = ter_op(istrue(self.headiconforcapture), "hud_icon_killstreak_bradley", "hud_icon_killstreak_bradley");
    enemyimage = ter_op(istrue(self.headiconforcapture), "hud_icon_killstreak_bradley_enemy", "hud_icon_killstreak_bradley_enemy");
    setheadiconfriendlyimage(self.headicon, friendlyimage);
    if (var_c3e202acf77e4dd4) {
        setheadiconneutralimage(self.headicon, neutralimage);
    }
    if (var_f1a0dcc04676e92f) {
        setheadiconenemyimage(self.headicon, enemyimage);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1d7e
// Size: 0x96
function private function_a52340952557c2b6() {
    owner = undefined;
    if (isdefined(self.headiconowneroverride)) {
        owner = self.headiconowneroverride;
    } else {
        owner = self.owner;
    }
    team = undefined;
    if (isdefined(self.headiconteamoverride)) {
        team = self.headiconteamoverride;
    } else {
        team = self.team;
    }
    var_9a6fccc729b4650a = team;
    if (!isdefined(var_9a6fccc729b4650a) || team == "neutral") {
        if (isdefined(owner)) {
            var_9a6fccc729b4650a = owner.team;
        }
    }
    return var_9a6fccc729b4650a;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1e1d
// Size: 0xff
function private function_9c0fbc8660be15b7() {
    self endon("death");
    while (true) {
        driver = vehicle_occupancy_getdriver(self);
        if (istrue(self.var_ec76ffdbe2f37c5b)) {
            if (isdefined(driver)) {
                driver setclientomnvar("ui_veh_flares_charge_perc", 0);
            }
            waitframe();
            continue;
        } else if (self.var_9cd07317ba52df4) {
            if (isdefined(driver)) {
                if (driver getclientomnvar("ui_veh_flares_charge_perc") < 1.05) {
                    driver setclientomnvar("ui_veh_flares_charge_perc", 1.05);
                    vehomn_setammo("veh9_mil_lnd_mrap", "popsmoke", 1, driver);
                }
            }
        } else {
            var_77151e8d83f062cb = 0;
            while (var_77151e8d83f062cb < self.var_c2594ac36ee74a08) {
                wait 0.05;
                var_77151e8d83f062cb += 0.05;
                var_e9227a816ed1d671 = var_77151e8d83f062cb / self.var_c2594ac36ee74a08;
                driver = vehicle_occupancy_getdriver(self);
                if (isdefined(driver)) {
                    driver setclientomnvar("ui_veh_flares_charge_perc", var_e9227a816ed1d671);
                }
            }
            self.var_9cd07317ba52df4 = 1;
        }
        waitframe();
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1f24
// Size: 0x10a
function private function_d6b5ad0707b3539e(player) {
    self endon("death");
    self endon("mrap_driver_exit");
    player endon("death_or_disconnect");
    player endon("vehicle_exit");
    player notifyonplayercommand("pop_smoke", "+attack");
    vehomn_setammo("veh9_mil_lnd_mrap", "popsmoke", ter_op(self.var_9cd07317ba52df4, 1, 0), player);
    while (true) {
        player waittill("pop_smoke");
        if (istrue(self.var_ec76ffdbe2f37c5b)) {
            continue;
        }
        if (!self.var_9cd07317ba52df4) {
            self playsoundtoplayer("lbravo_noflares_warning", player);
            continue;
        }
        if (issharedfuncdefined("popsmoke", "deploy")) {
            self thread [[ getsharedfunc("popsmoke", "deploy") ]](["tag_smoke_grenade_front_left", "tag_smoke_grenade_front_right", "tag_smoke_grenade_back_left", "tag_smoke_grenade_back_right"]);
        }
        self.var_9cd07317ba52df4 = 0;
        vehomn_setammo("veh9_mil_lnd_mrap", "popsmoke", 0, player);
        vehicle_occupancy_fadeoutcontrols(player);
    }
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x2036
// Size: 0x4f
function private function_c38a5128f25cfbee() {
    assertex(isdefined(level.vehicle), "mrap_init() called before vehicle_init().");
    assertex(isdefined(level.vehicle.mrap), "mrap_init() called before mrap_init().");
    return level.vehicle.mrap;
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 4, eflags: 0x4
// Checksum 0x0, Offset: 0x208e
// Size: 0x2c
function private function_48658d8851154485(vehicle, var_fc7c7a874b43a31a, var_7558f98f3236963d, player) {
    vehicle function_e9e5cd0650ee3e3e(player);
}

// Namespace namespace_69b5676020104b55 / scripts\quaked\script_struct_mp_iw9_mrap
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x20c2
// Size: 0x73
function private function_e9e5cd0650ee3e3e(player) {
    leveldata = function_c38a5128f25cfbee();
    if (leveldata.canautodestruct) {
        if (istrue(self.autodestructactivated)) {
            vehomn_showwarning("burningDown", player, "veh9_mil_lnd_mrap");
        } else {
            vehomn_hidewarning("burningDown", player, "veh9_mil_lnd_mrap");
        }
        return;
    }
    vehomn_hidewarning("burningDown", player, "veh9_mil_lnd_mrap");
}

