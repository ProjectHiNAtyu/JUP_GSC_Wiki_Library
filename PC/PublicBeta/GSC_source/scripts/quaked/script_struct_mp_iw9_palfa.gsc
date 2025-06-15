// scripts\quaked\script_struct_mp_iw9_palfa.gsc  (255133686F2D76C0.gscc) (size: 10683 Bytes / 0x29bb / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x7d7bbfd6 (2105262038)
// size ...... 10683 (0x29bb)
// includes .. 20  (offset: 0x32f)
// strings ... 53  (offset: 0x267b)
// dev strs .. 1   (offset: 0x29af)
// exports ... 29  (offset: 0x16f7)
// cseg ...... 0x3cf + 0x1328 (0x16f7)
// imports ... 93  (offset: 0x1b7f)
// animtree1 . 0   (offset: 0x29bb)
// animtree2 . 0   (offset: 0x29bb)
#using script_53aac5ae7d2ac1b4;
#using scripts\common\utility;
#using scripts\cp_mp\parachute;
#using scripts\cp_mp\utility\game_utility;
#using scripts\cp_mp\utility\inventory_utility;
#using scripts\cp_mp\utility\player_utility;
#using scripts\cp_mp\utility\vehicle_omnvar_utility;
#using scripts\cp_mp\utility\weapon_utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_compass;
#using scripts\cp_mp\vehicles\vehicle_damage;
#using scripts\cp_mp\vehicles\vehicle_dlog;
#using scripts\cp_mp\vehicles\vehicle_interact;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\cp_mp\vehicles\vehicle_tracking;
#using scripts\engine\math;
#using scripts\engine\trace;
#using scripts\engine\utility;
#using scripts\mp\objidpoolmanager;

#namespace script_struct_mp_iw9_palfa;

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x1
// Checksum 0x0, Offset: 0x3d7
// Size: 0x13
function autoexec main() {
    function_c0b3ddc9a6bdcc46("veh9_palfa", &function_3ef5f926204cbd9e);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x3f2
// Size: 0x22c
function private function_3ef5f926204cbd9e() {
    if (!function_9697379150687859("veh9_palfa")) {
        return;
    }
    level.var_48e4bd8587968f9 = getdvarfloat(@"hash_63997342447b8b87", 1);
    level.var_6d2d9d6d9a73cc7 = getdvarfloat(@"hash_90e419f6d32eba39", 1);
    level.var_3e1c52fb7c3f1bc9 = getdvarfloat(@"hash_e2da3b6e24619503", 1.2);
    level.var_6f19dd2299ccde22 = getdvarfloat(@"hash_b0aeaf5f49bc9880", 1);
    level.var_c7432004084941b0 = getdvarfloat(@"hash_14a693e48ce554c2", 0.5);
    level.var_45a061f49e1c9a50 = getdvarfloat(@"hash_6ca40904bced7f47", 0.9);
    level.var_c5a60af4413f9fa9 = getdvarfloat(@"hash_48d77161e444423f", 0.5);
    level.var_d2ec30f44a87286d = getdvarfloat(@"hash_5514bb61ec6780cb", 0.2);
    level.var_7b0c541baa0443ef = getdvarfloat(@"hash_cfa87dc67c8884dd", 0.05);
    level.var_5b4e83373390b0be = getdvarfloat(@"hash_be17ad18edc41a8", 0.2);
    level.var_bab8ebdbb45d860 = getdvarfloat(@"hash_6ee8bc7a35a3cdaa", 0.4);
    callbacks = [];
    callbacks["spawn"] = &function_31f42ad9450cb938;
    callbacks["enterStart"] = &function_c92daf0d2d3b4c32;
    callbacks["enterEnd"] = &function_1238715fb4ade17;
    callbacks["exitEnd"] = &function_b8efede8329d0df1;
    callbacks["reenter"] = &function_90edb9e4cbf08215;
    callbacks["outOfFuel"] = &function_c2ae8b4f4def3709;
    callbacks["beginBurnDown"] = &function_d35260397fd3eba0;
    callbacks["interactsWithOOBTrigger"] = &function_f7f993d241e44b19;
    callbacks["onStartRiding"] = &function_153a6accf001dff6;
    callbacks["onEndRiding"] = &function_71adb8f84c3df6bb;
    callbacks["isInInterior"] = &function_3d25af3a88ad31c3;
    callbacks["onEnterInterior"] = &function_3ffe455e5ea6d0f5;
    callbacks["onExitInterior"] = &function_b2cc563ed7324a8d;
    callbacks["forceOOBEnable"] = &function_dec1987f9ee988c6;
    function_8497e7e46b5e397("veh9_palfa", callbacks);
    function_92b52877803f326a();
    vehicle_damage_setpremoddamagecallback("veh9_palfa", &function_1062a7fd4b6d46a5);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x626
// Size: 0x2e
function private function_92b52877803f326a() {
    leveldataforvehicle = vehomn_getleveldataforvehicle("veh9_palfa", 1);
    leveldataforvehicle.ammoids["flares"] = 1;
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x65c
// Size: 0x88, Type: bool
function private function_1062a7fd4b6d46a5(data) {
    return !isdefined(data) || !isdefined(data.inflictor) || !isdefined(data.inflictor.classname) || data.inflictor.classname != "trigger_hurt" || !isdefined(self) || !isdefined(self.origin) || ispointinvolume(self.origin, data.inflictor);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x6ed
// Size: 0x24
function private function_f7f993d241e44b19(trigger, vehicle) {
    return ispointinvolume(vehicle.origin, trigger);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x71a
// Size: 0xcf
function private function_31f42ad9450cb938(spawndata, faildata) {
    vehicle = function_bba34cf920370ff4("veh9_palfa", spawndata, faildata);
    if (!isdefined(vehicle)) {
        return undefined;
    }
    vehicle.borntime = gettime();
    vehicle.flareslive = [];
    vehicle.flareready = 1;
    if (scripts\cp_mp\utility\game_utility::isbrstylegametype()) {
        vehicle.flarecooldown = 35;
    } else {
        vehicle.flarecooldown = 10;
    }
    vehicle.entstouching = [];
    vehicle thread vehicle_handleflarerecharge();
    vehicle thread collision_damage_watcher();
    if (istrue(spawndata.var_cae20238ee346e02)) {
        vehicle.ishovering = 1;
        vehicle addcomponent("p2p");
    }
    return vehicle;
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x7f2
// Size: 0x25
function private function_c2ae8b4f4def3709() {
    if (istrue(self.ishovering)) {
        self.ishovering = 0;
        self removecomponent("p2p");
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x81f
// Size: 0x30
function private function_d35260397fd3eba0() {
    if (istrue(self.ishovering)) {
        self.ishovering = 0;
        self removecomponent("p2p");
    }
    self.var_e114008648967bfb = 1;
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x857
// Size: 0x239
function private collision_damage_watcher() {
    self endon("death");
    self vehphys_enablecollisioncallback(1);
    while (true) {
        self waittill("collision", body0, body1, flag0, flag1, position, normal, normalspeed, ent, partenum);
        if (gettime() - self.borntime < 5000) {
            continue;
        }
        if (isdefined(ent) && istrue(ent.iscrossbowbolt)) {
            continue;
        }
        if (isdefined(ent) && isdefined(ent.helperdronetype) && ent.helperdronetype == "radar_drone_recon") {
            continue;
        }
        damagefactor = normalspeed;
        dmgval = 0;
        if (damagefactor > level.var_c5a60af4413f9fa9) {
            range = level.var_45a061f49e1c9a50 - level.var_c5a60af4413f9fa9;
            factorscale = (damagefactor - level.var_c5a60af4413f9fa9) / range;
            mindmg = self.maxhealth * level.var_5b4e83373390b0be;
            maxdmg = self.maxhealth * level.var_bab8ebdbb45d860;
            dmgval = math::lerp(mindmg, maxdmg, factorscale);
        } else if (damagefactor > level.var_d2ec30f44a87286d) {
            dmgval = self.maxhealth * level.var_7b0c541baa0443ef;
        } else {
            continue;
        }
        if (istrue(self.var_e114008648967bfb) && (length(self vehicle_getvelocity()) > 264 || isdefined(ent) && ent isvehicle() && length(ent vehicle_getvelocity()) > 264)) {
            dmgval = self.maxhealth;
        }
        if (dmgval > 0) {
            vehicle_damage_disablestatedamagefloor(1);
            self dodamage(dmgval, position, undefined, undefined, "MOD_CRUSH");
            vehicle_damage_disablestatedamagefloor(0);
        }
        wait 0.5;
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0xa98
// Size: 0x2e
function private function_e654f2c9ee8ea94a(oldstateref, data) {
    self setscriptablepartstate("alarm", "engineFailure", 0);
    scripts\cp_mp\vehicles\vehicle_damage::vehicle_damage_onenterstateheavy(oldstateref, data);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0xace
// Size: 0x2e
function private function_fb5146a15cb434d2(oldstateref, data) {
    self setscriptablepartstate("alarm", "off", 0);
    scripts\cp_mp\vehicles\vehicle_damage::vehicle_damage_onexitstateheavy(oldstateref, data);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0xb04
// Size: 0x155
function private function_c92daf0d2d3b4c32(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (istrue(vehicle.israllypointvehicle)) {
        foreach (plr in level.players) {
            if (istrue(vehicle.revealed) || is_equal(plr.team, vehicle.team)) {
                scripts\mp\objidpoolmanager::objective_playermask_addshowplayer(vehicle.marker.objidnum, plr);
            }
        }
        foreach (occupant in vehicle.occupants) {
            scripts\mp\objidpoolmanager::objective_playermask_hidefrom(vehicle.marker.objidnum, occupant);
        }
        scripts\mp\objidpoolmanager::objective_playermask_hidefrom(vehicle.marker.objidnum, player);
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0xc61
// Size: 0x4e
function private function_1238715fb4ade17(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (istrue(data.success)) {
        player scripts\cp_mp\parachute::parachutecleanup();
        function_cb229daefb97c2ee(vehicle, seatid, var_fc7c7a874b43a31a, player, data);
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0xcb7
// Size: 0x89
function private function_cb229daefb97c2ee(vehicle, seatid, var_fc7c7a874b43a31a, player, data) {
    if (seatid == "driver") {
        vehicle thread vehicle_handleflarefire(player);
        vehicle notify("palfa_driver_enter");
        vehicle.ishovering = 0;
        vehicle removecomponent("p2p");
    }
    vehomn_updateomnvarsonseatenter(vehicle, var_fc7c7a874b43a31a, seatid, player);
    if (isdefined(level.var_9215e3a9dfe8a262)) {
        [[ level.var_9215e3a9dfe8a262 ]](vehicle, seatid, var_fc7c7a874b43a31a, player, data);
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0xd48
// Size: 0x46
function private function_b8efede8329d0df1(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (istrue(data.success)) {
        function_d2053cec6126f014(vehicle, seatid, var_7558f98f3236963d, player, data);
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0xd96
// Size: 0xdb
function private function_d2053cec6126f014(vehicle, seatid, var_7558f98f3236963d, player, data) {
    if (seatid == "driver") {
        vehicle notify("palfa_driver_exit");
        vehicle thread function_619d5050126cbfae(player);
    }
    if (!istrue(data.playerdisconnect)) {
        success = vehicle_occupancy_moveplayertoexit(vehicle, seatid, var_7558f98f3236963d, player, data);
        if (!success) {
            if (issharedfuncdefined("vehicle_occupancy", "handleSuicideFromVehicles")) {
                [[ getsharedfunc("vehicle_occupancy", "handleSuicideFromVehicles") ]](player);
            } else {
                player suicide();
            }
        } else if (istrue(vehicle.israllypointvehicle)) {
            scripts\mp\objidpoolmanager::objective_playermask_addshowplayer(vehicle.marker.objidnum, player);
        }
    }
    vehomn_updateomnvarsonseatexit(vehicle, seatid, var_7558f98f3236963d, player);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0xe79
// Size: 0x81
function private function_619d5050126cbfae(player) {
    if (!isalive(player)) {
        self endon("death");
        self endon("palfa_driver_enter");
        wait 0.5;
    }
    if (!self vehicle_isonground() && distance(self.origin, function_653b91b3edf76c93()) > 350 && !istrue(self.ishovering) && !istrue(self.var_e114008648967bfb)) {
        self.ishovering = 1;
        self addcomponent("p2p");
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xf02
// Size: 0x142
function private function_653b91b3edf76c93() {
    contents = scripts\engine\trace::create_solid_ai_contents(1);
    finalpos = self.origin - anglestoup(self.angles) * 400;
    /#
        if (getdvarint(@"hash_bedb65b7141dd04e", 0)) {
            sphere(self.origin, 100, (0, 0, 1), 0, 10000);
            sphere(finalpos, 100, (0, 0, 1), 0, 10000);
        }
    #/
    pos = scripts\engine\trace::sphere_trace(self.origin, finalpos, 100, [self], contents)["position"];
    /#
        if (getdvarint(@"hash_bedb65b7141dd04e", 0)) {
            sphere(pos, 100, (1, 0, 0), 0, 10000);
            line(self.origin, pos, (1, 0, 0), 1, 0, 10000);
            print3d(pos, "<dev string:x1c>" + distance(self.origin, pos), (1, 0, 0), 1, 1, 10000, 1);
        }
    #/
    return pos;
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 5, eflags: 0x4
// Checksum 0x0, Offset: 0x104d
// Size: 0x2b
function private function_90edb9e4cbf08215(vehicle, var_9de41f2ee77c33ba, var_3f68c37bafd38606, player, data) {
    
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1080
// Size: 0xd9
function private vehicle_handleflarerecharge() {
    self endon("death");
    while (true) {
        driver = vehicle_occupancy_getdriver(self);
        if (self.flareready) {
            if (isdefined(driver)) {
                if (driver getclientomnvar("ui_veh_flares_charge_perc") < 1.05) {
                    driver setclientomnvar("ui_veh_flares_charge_perc", 1.05);
                    vehomn_setammo("veh9_palfa", "flares", 1, driver);
                }
            }
        } else {
            var_c770d2ae1cc0b405 = 0;
            while (var_c770d2ae1cc0b405 < self.flarecooldown) {
                wait 0.05;
                var_c770d2ae1cc0b405 += 0.05;
                var_e9227a816ed1d671 = var_c770d2ae1cc0b405 / self.flarecooldown;
                driver = vehicle_occupancy_getdriver(self);
                if (isdefined(driver)) {
                    driver setclientomnvar("ui_veh_flares_charge_perc", var_e9227a816ed1d671);
                }
            }
            self.flareready = 1;
        }
        waitframe();
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1161
// Size: 0x20a
function private vehicle_handleflarefire(player) {
    self endon("death");
    self endon("palfa_driver_exit");
    player endon("death_or_disconnect");
    player endon("vehicle_exit");
    player notifyonplayercommand("shoot_flare", "+attack");
    vehomn_setammo("veh9_palfa", "flares", ter_op(self.flareready, 1, 0), player);
    while (true) {
        player waittill("shoot_flare");
        if (!self.flareready) {
            self playsoundtoplayer("lbravo_noflares_warning", player);
            continue;
        }
        if (issharedfuncdefined("flares", "playFx")) {
            self thread [[ getsharedfunc("flares", "playFx") ]](undefined, "tag_deathfx");
        }
        newtarget = undefined;
        if (issharedfuncdefined("flares", "deploy")) {
            newtarget = self [[ getsharedfunc("flares", "deploy") ]]();
        }
        if (isdefined(level.missiles)) {
            foreach (missile in level.missiles) {
                if (!isdefined(missile.origin) || !isdefined(missile.lockontarget) || missile.lockontarget != self) {
                    continue;
                }
                curdist = distance(self.origin, missile.origin);
                if (curdist < 4000) {
                    if (issharedfuncdefined("player", "doScoreEvent")) {
                        player thread [[ getsharedfunc("player", "doScoreEvent") ]]("manual_flare_missile_redirect");
                    }
                    clearprojectilelockedon(missile);
                    missile missile_settargetent(newtarget);
                    missile notify("missile_pairedWithFlare");
                }
            }
        }
        self.flareready = 0;
        vehomn_setammo("veh9_palfa", "flares", 0, player);
        vehicle_occupancy_fadeoutcontrols(player);
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x1373
// Size: 0x5e
function private function_dec1987f9ee988c6() {
    self.forceoobenable = 1;
    foreach (player in self.ridingplayers) {
        function_6ff4f91590d55df6(player);
    }
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x13d9
// Size: 0x12c
function private function_153a6accf001dff6(player) {
    if (isdefined(self.onstartriding)) {
        self [[ self.onstartriding ]](player);
    }
    if (!istrue(self.var_c547488f80d3eb28)) {
        scripts\cp_mp\utility\vehicle_omnvar_utility::function_d2d9c09551d91164(self, player);
    }
    if (!isdefined(level.var_b531611b8d662db7)) {
        level.var_b531611b8d662db7 = getdvarint(@"hash_dee18061c0d4dfe", ter_op(scripts\cp_mp\utility\game_utility::isbrstylegametype(), 0, 1)) == 1;
    }
    if (level.var_b531611b8d662db7 || istrue(self.forceoobenable)) {
        vehicleteam = vehicle_occupancy_getteamfriendlyto(self);
        if (istrue(self.forceoobenable) && issharedfuncdefined("game", "onEnterOOBTrigger")) {
            function_6ff4f91590d55df6(player);
        } else if (isdefined(vehicleteam) && isdefined(player.team) && vehicleteam != "neutral" && vehicleteam != player.team && issharedfuncdefined("game", "onEnterOOBTrigger")) {
            function_6ff4f91590d55df6(player);
        } else {
            player.var_1f34845fdd0a6631 = undefined;
        }
    }
    vehicle_spawn_stopwatchingabandoned();
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x150d
// Size: 0xa6
function private function_71adb8f84c3df6bb(player) {
    if (isdefined(player)) {
        if (!isdefined(player.vehicle) && !istrue(self.var_c547488f80d3eb28)) {
            scripts\cp_mp\utility\vehicle_omnvar_utility::function_5211953231a09ed5(self, player);
        }
        if (isdefined(self.onendriding)) {
            self [[ self.onendriding ]](player);
        }
        if (istrue(player.var_1f34845fdd0a6631) && isdefined(player.oob) && player.oob > 0 && issharedfuncdefined("game", "onExitOOBTrigger")) {
            function_6307ffe7f40fc2d0(player);
        }
    }
    thread vehicle_spawn_watchabandoned();
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x15bb
// Size: 0x45
function private function_6ff4f91590d55df6(player) {
    assertex(issharedfuncdefined("game", "onEnterOOBTrigger"));
    player.var_1f34845fdd0a6631 = 1;
    function_f3bb4f4911a1beb2("game", "onEnterOOBTrigger", self, player);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1608
// Size: 0x37
function private function_6307ffe7f40fc2d0(player) {
    assertex(issharedfuncdefined("game", "onExitOOBTrigger"));
    function_f3bb4f4911a1beb2("game", "onExitOOBTrigger", self, player);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1647
// Size: 0x52
function private function_3d25af3a88ad31c3(player) {
    if (!isdefined(self) || !isalive(self) || !isdefined(self.origin) || !isdefined(player) || !isdefined(player.origin)) {
        return 0;
    }
    return function_773691f1a617f7d9(player.origin);
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x16a2
// Size: 0x29
function private function_3ffe455e5ea6d0f5(player) {
    player setclienttriggeraudiozonepartial("iw9_palfa_interior", "reverb", "weapon_reflection");
    player notify("entered_vehicle_interior");
}

// Namespace script_struct_mp_iw9_palfa / scripts\quaked\script_struct_mp_iw9_palfa
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x16d3
// Size: 0x24
function private function_b2cc563ed7324a8d(player) {
    if (isdefined(player)) {
        player clearclienttriggeraudiozone(0.5);
        player notify("exited_vehicle_interior");
    }
}

