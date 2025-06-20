// script_608c50392df8c7d1  (608C50392DF8C7D1.gscc) (size: 7370 Bytes / 0x1cca / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xd92e62e0 (3643695840)
// size ...... 7370 (0x1cca)
// includes .. 3   (offset: 0x234)
// strings ... 31  (offset: 0x1a8e)
// dev strs .. 6   (offset: 0x1c7e)
// exports ... 16  (offset: 0x12e2)
// cseg ...... 0x24c + 0x1096 (0x12e2)
// imports ... 40  (offset: 0x1562)
// animtree1 . 0   (offset: 0x1cca)
// animtree2 . 0   (offset: 0x1cca)
#using scripts\common\callbacks;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace namespace_8894a0caa4c34dc6;

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 4
// Checksum 0x0, Offset: 0x254
// Size: 0x4b
function function_9469d528dd1ee44d(streakname, scorepopup, vodestroyed, destroyedsplash) {
    self.streakname = streakname;
    self.scorepopup = scorepopup;
    self.vodestroyed = vodestroyed;
    self.destroyedsplash = destroyedsplash;
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 1
// Checksum 0x0, Offset: 0x2a7
// Size: 0x11b
function function_66a7440055d386c3(data) {
    attacker = data.attacker;
    objweapon = data.objweapon;
    meansofdeath = data.meansofdeath;
    damage = data.damage;
    idflags = data.idflags;
    notifyattacker = 0;
    if (issharedfuncdefined("damage", "onKillstreakKilled") && isdefined(self.streakname)) {
        notifyattacker = self [[ getsharedfunc("damage", "onKillstreakKilled") ]](self.streakname, attacker, objweapon, meansofdeath, damage, self.scorepopup, self.vodestroyed, self.destroyedsplash);
    }
    if (notifyattacker) {
        attacker notify("destroyed_equipment");
    }
    params = spawnstruct();
    params.meansofdeath = meansofdeath;
    callback::callback("on_functional_death", params);
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 1
// Checksum 0x0, Offset: 0x3ca
// Size: 0xd2
function function_7bdb3610d602438d(data) {
    attacker = data.attacker;
    objweapon = data.objweapon;
    type = data.meansofdeath;
    damage = data.damage;
    modifieddamage = damage;
    if (!isdefined(self.weapon_object) || !function_f3bb4f4911a1beb2("killstreak", "isKillstreakWeapon", self.weapon_object)) {
        modifieddamage = utility::handlemeleedamage(objweapon, type, modifieddamage);
    }
    if (issharedfuncdefined("damage", "handleAPDamage")) {
        modifieddamage = self [[ getsharedfunc("damage", "handleAPDamage") ]](objweapon, type, modifieddamage, attacker);
    }
    return modifieddamage;
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 4
// Checksum 0x0, Offset: 0x4a5
// Size: 0x1de
function function_90663ca0d2564cb(data, var_b2c38c8cc8672f83, var_8097775071dc6820, meleehitcount) {
    attacker = data.attacker;
    objweapon = data.objweapon;
    type = data.meansofdeath;
    damage = data.damage;
    if (type == "MOD_IMPACT") {
        return 0;
    }
    if (!istrue(self.bundle.var_b66f1c97537f8793)) {
        return damage;
    }
    isenemydamage = 1;
    if (isdefined(self.owner) && issharedfuncdefined("player", "isEnemy")) {
        isenemydamage = self.owner [[ getsharedfunc("player", "isEnemy") ]](attacker);
    }
    if (isenemydamage) {
        hitstokill = var_b2c38c8cc8672f83;
    } else {
        hitstokill = var_8097775071dc6820;
    }
    hits = undefined;
    if (isexplosivedamagemod(type) && istrue(self.bundle.explosivedamagetohits)) {
        hits = function_f9dbf2d9862d62ab(data, isenemydamage);
    } else if (isbulletdamage(type) && istrue(self.bundle.bulletdamagetohits)) {
        hits = function_d2c1bb18b26d0a9c(data, isenemydamage);
    } else if (type == "MOD_MELEE") {
        if (isdefined(meleehitcount) && meleehitcount < 0) {
            return damage;
        } else if (meleehitcount > 0) {
            hits = meleehitcount;
        } else {
            hits = hitstokill;
        }
    }
    if (isdefined(hits)) {
        damage = int(ceil(min(1, hits / hitstokill) * self.maxhealth));
    }
    if (isdefined(self.damagecallback)) {
        [[ self.damagecallback ]](damage);
    }
    return damage;
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 1
// Checksum 0x0, Offset: 0x68c
// Size: 0x63
function function_79a97ee01dc267d3(data) {
    assertex(isdefined(self.bundle), "The super entity must have the .bundle variable defined.");
    return function_90663ca0d2564cb(data, self.bundle.var_a59b12cf4b995b32, self.bundle.var_67246a26271ee81, self.bundle.meleehitcount);
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x6f8
// Size: 0xc3
function private function_d2c1bb18b26d0a9c(data, isenemydamage) {
    isfmjdamage = 0;
    if (issharedfuncdefined("damage", "isFMJDamage")) {
        isfmjdamage = [[ getsharedfunc("damage", "isFMJDamage") ]](data.objweapon, data.meansofdeath);
    }
    basehits = ter_op(isfmjdamage && isenemydamage, 2, 0);
    if (data.damage > 150) {
        return (basehits + 10);
    }
    if (data.damage >= 80) {
        return (basehits + 5);
    }
    if (data.damage >= 30) {
        return (basehits + 2);
    }
    return basehits + 1;
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x7c3
// Size: 0x58
function private function_f9dbf2d9862d62ab(data, isenemydamage) {
    if (data.damage > 200) {
        return 20;
    }
    if (data.damage > 70) {
        return 10;
    }
    if (data.damage > 30) {
        return 7;
    }
    return 2;
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 2
// Checksum 0x0, Offset: 0x823
// Size: 0x1c8
function function_62c1c6833c19817c(maxrolldegrees, maxyawdiff) {
    self notify("stop_adjust_tilt_thread");
    self endon("death");
    level endon("game_ended");
    self endon("stop_adjust_tilt_thread");
    var_cf4febe91831ea56 = (1, 0, 0);
    var_773133c39e93a51d = (0, 1, 0);
    var_d2f1914cf518b7e0 = (0, 0, -1);
    waitframe();
    self.previousorigin = self.origin;
    self.targetangles = self.angles;
    while (true) {
        stepvector = self.origin - self.previousorigin;
        stepunit = vectornormalize(stepvector);
        pitch = asin(vectordot(stepunit, var_d2f1914cf518b7e0));
        stepunit = (stepunit[0], stepunit[1], 0);
        stepunit = vectornormalize(stepunit);
        yaw = acos(vectordot(stepunit, var_cf4febe91831ea56));
        if (vectordot(stepunit, var_773133c39e93a51d) < 0) {
            yaw = 360 - yaw;
        }
        yawdiff = yaw - self.targetangles[1];
        if (abs(yawdiff) > 300) {
            yawdiff -= 360;
        }
        var_a0ce54bdf5ecefa3 = clamp(yawdiff, maxyawdiff * -1, maxyawdiff);
        var_a747f74b413e1808 = var_a0ce54bdf5ecefa3 / maxyawdiff;
        roll = maxrolldegrees * var_a747f74b413e1808 * -1;
        self.previousorigin = self.origin;
        newangles = (pitch, yaw, roll);
        self.targetangles = newangles;
        wait 0.05;
    }
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 3
// Checksum 0x0, Offset: 0x9f3
// Size: 0x2dd
function function_74f5ba869b257143(var_38a541b4d6af30a9, var_9d60d851a7af2d4e, var_2a86c82583ac927b) {
    self notify("stop_functionals_step_thread");
    self endon("death");
    level endon("game_ended");
    self endon("stop_functionals_step_thread");
    self.previousangles = self.angles;
    lastsign = 1;
    while (true) {
        if (isdefined(self.targetangles)) {
            var_fd4ec85a2030035e = angleclamp(self.targetangles[0]);
            fixedcurrentpitch = angleclamp(self.angles[0]);
            fixedtargetyaw = angleclamp(self.targetangles[1]);
            fixedcurrentyaw = angleclamp(self.angles[1]);
            var_9f3eda8daa0eda03 = angleclamp(self.targetangles[2]);
            var_641a388819ce1d85 = angleclamp(self.angles[2]);
            pitcherror = var_fd4ec85a2030035e - fixedcurrentpitch;
            yawerror = fixedtargetyaw - fixedcurrentyaw;
            rollerror = var_9f3eda8daa0eda03 - var_641a388819ce1d85;
            var_a5a7ce89b43ee10c = var_fd4ec85a2030035e - fixedcurrentpitch + 360;
            var_3ef2bd1018948fcc = var_fd4ec85a2030035e - fixedcurrentpitch - 360;
            if (abs(var_a5a7ce89b43ee10c) < abs(pitcherror)) {
                pitcherror = var_a5a7ce89b43ee10c;
            } else if (abs(var_3ef2bd1018948fcc) < abs(pitcherror)) {
                pitcherror = var_3ef2bd1018948fcc;
            }
            var_cd314f4801f94ceb = fixedtargetyaw - fixedcurrentyaw + 360;
            var_8a83d2c73960daab = fixedtargetyaw - fixedcurrentyaw - 360;
            if (abs(var_cd314f4801f94ceb) < abs(yawerror)) {
                yawerror = var_cd314f4801f94ceb;
            } else if (abs(var_8a83d2c73960daab) < abs(yawerror)) {
                yawerror = var_8a83d2c73960daab;
            }
            var_fe6c7708be15720b = var_9f3eda8daa0eda03 - var_641a388819ce1d85 + 360;
            var_26e224b6a576bacb = var_9f3eda8daa0eda03 - var_641a388819ce1d85 - 360;
            if (abs(var_fe6c7708be15720b) < abs(rollerror)) {
                rollerror = var_fe6c7708be15720b;
            } else if (abs(var_26e224b6a576bacb) < abs(rollerror)) {
                rollerror = var_26e224b6a576bacb;
            }
            pitchstep = self.angles[0] + clamp(pitcherror, var_9d60d851a7af2d4e * -1, var_9d60d851a7af2d4e);
            yawstep = self.angles[1] + clamp(yawerror, var_38a541b4d6af30a9 * -1, var_38a541b4d6af30a9);
            rollstep = self.angles[2] + clamp(rollerror, var_2a86c82583ac927b * -1, var_2a86c82583ac927b);
            newangles = (pitchstep, yawstep, rollstep);
            self.angles = newangles;
            lastsign = sign(yawerror);
        }
        wait 0.05;
    }
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 3
// Checksum 0x0, Offset: 0xcd8
// Size: 0x64
function function_63d1a11f8b22244(streakinfo, var_c09f3239d7caa490, destroyfunc) {
    params = spawnstruct();
    params.streakinfo = streakinfo;
    params.var_c09f3239d7caa490 = var_c09f3239d7caa490;
    params.destroyfunc = destroyfunc;
    callback::add("on_functional_death", &onfunctionaldeath, params);
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 2
// Checksum 0x0, Offset: 0xd44
// Size: 0xb6
function onfunctionaldeath(callbackparams, initparams) {
    streakinfo = initparams.streakinfo;
    var_c09f3239d7caa490 = initparams.var_c09f3239d7caa490;
    destroyfunc = initparams.destroyfunc;
    self endon("isCarried");
    self playsound("mp_equip_destroyed");
    if (isdefined(streakinfo)) {
        level callback::callback("killstreak_finish_use", {#streakinfo:streakinfo});
    }
    if (isdefined(var_c09f3239d7caa490)) {
        self [[ var_c09f3239d7caa490 ]](callbackparams);
    }
    function_2eff4cd94c3243e8();
    wait 0.2;
    if (isdefined(destroyfunc)) {
        self [[ destroyfunc ]]();
        return;
    }
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 0
// Checksum 0x0, Offset: 0xe02
// Size: 0x48
function function_2eff4cd94c3243e8() {
    if (isdefined(self.minimapid)) {
        if (issharedfuncdefined("game", "returnObjectiveID")) {
            [[ getsharedfunc("game", "returnObjectiveID") ]](self.minimapid);
        }
        self.minimapid = undefined;
    }
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 4
// Checksum 0x0, Offset: 0xe52
// Size: 0x153
function function_47b5394a301d8c5(maxlifetime, var_bb3f35f040f4f38b, var_70a1d6b89907db6b, var_b0dfff7cb4b7be34) {
    level endon("game_ended");
    self endon("death");
    self.owner endon("disconnected");
    self endon("isCarried");
    if (!isdefined(self.lifetime)) {
        self.lifetime = maxlifetime * 1000;
    }
    previoustime = gettime();
    while (self.lifetime > 0) {
        currenttime = gettime();
        timeelapsed = currenttime - previoustime;
        self.lifetime -= timeelapsed;
        previoustime = currenttime;
        /#
            debugactive = getdvarint(var_bb3f35f040f4f38b);
            if (debugactive > 0) {
                var_f09362cfe2d75614 = ter_op(isdefined(self.weapon_name), self.weapon_name, "<dev string:x1c>");
                print3d(self.origin, var_f09362cfe2d75614 + "<dev string:x1d>" + self.lifetime + "<dev string:x29>", (0, 0, 1), 1, 0.5, 1);
            }
        #/
        waitframe();
    }
    if (isdefined(var_70a1d6b89907db6b)) {
        self [[ var_70a1d6b89907db6b ]](var_b0dfff7cb4b7be34);
    }
    callback::callback("on_functional_death");
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 2
// Checksum 0x0, Offset: 0xfad
// Size: 0x90
function function_708fc89de0e3cd1(direction, velocity) {
    self endon("death");
    self endon("timeout");
    level endon("game_ended");
    self.owner endon("disconnect");
    newposition = self.origin;
    previoustime = gettime();
    while (true) {
        deltatime = gettime() - previoustime;
        previoustime = gettime();
        newposition += direction * velocity * deltatime;
        self.origin = newposition;
        waitframe();
    }
}

// Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
// Params 4
// Checksum 0x0, Offset: 0x1045
// Size: 0x14b
function function_888f3a0124b03ddc(newowner, challengeeventid, outlineasset, onhackedcallback) {
    self.ishacked = 1;
    oldowner = self.owner;
    self.owner = newowner;
    self.team = newowner.team;
    self setentityowner(newowner);
    self setotherent(newowner);
    if (level.teambased) {
        self filteroutplayermarks(newowner.team);
    } else {
        self filteroutplayermarks(newowner);
    }
    if (issharedfuncdefined("challenges", "onHack")) {
        newowner [[ getsharedfunc("challenges", "onHack") ]](challengeeventid);
    }
    if (issharedfuncdefined("killstreak", "giveScoreForHack")) {
        newowner [[ getsharedfunc("killstreak", "giveScoreForHack") ]]();
    }
    if (isdefined(outlineasset) && issharedfuncdefined("outline", "outlineEnableForPlayer")) {
        if (isdefined(self.streakname)) {
            priority = "killstreak";
        } else {
            priority = "equipment";
        }
        [[ getsharedfunc("outline", "outlineEnableForPlayer") ]](self, newowner, outlineasset, priority);
    }
    if (isdefined(onhackedcallback)) {
        self [[ onhackedcallback ]](newowner, oldowner);
    }
}

/#

    // Namespace namespace_8894a0caa4c34dc6 / namespace_37987c2865e1a627
    // Params 3
    // Checksum 0x0, Offset: 0x1198
    // Size: 0x14a, Type: dev
    function function_36c55ae71072bd03(aabbmin, aabbmax, duration) {
        self notify("<dev string:x2c>");
        level endon("<dev string:x42>");
        self endon("<dev string:x4d>");
        self endon("<dev string:x2c>");
        drawcolor = (0, 255, 0);
        var_eb404bf9ac5040f0 = (aabbmax[0] - aabbmin[0], 0, 0);
        var_a6c378e90c169b15 = (0, aabbmax[1] - aabbmin[1], 0);
        var_5b9a5467ae4bf353 = (0, 0, aabbmax[2] - aabbmin[2]);
        line(aabbmin, aabbmin + (aabbmax - aabbmin) / 2, drawcolor, 1, 0, duration);
        line(aabbmin, aabbmin + var_eb404bf9ac5040f0, drawcolor, 1, 0, duration);
        line(aabbmin, aabbmin + var_a6c378e90c169b15, drawcolor, 1, 0, duration);
        line(aabbmin, aabbmin + var_5b9a5467ae4bf353, drawcolor, 1, 0, duration);
        sphere(aabbmin, 5, drawcolor, 0, duration);
        drawcolor = (255, 0, 0);
        line(aabbmax, aabbmax + (aabbmin - aabbmax) / 2, drawcolor, 1, 0, duration);
        line(aabbmax, aabbmax - var_eb404bf9ac5040f0, drawcolor, 1, 0, duration);
        line(aabbmax, aabbmax - var_a6c378e90c169b15, drawcolor, 1, 0, duration);
        line(aabbmax, aabbmax - var_5b9a5467ae4bf353, drawcolor, 1, 0, duration);
        sphere(aabbmax, 5, drawcolor, 0, duration);
    }

#/
