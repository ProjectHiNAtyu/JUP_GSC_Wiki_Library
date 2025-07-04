// scripts\mp\mp_agent.gsc  (4DB5D44A376C1C35.gscc) (size: 13869 Bytes / 0x362d / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x903b5b2e (2419809070)
// size ...... 13869 (0x362d)
// includes .. 15  (offset: 0x44f)
// strings ... 51  (offset: 0x330d)
// dev strs .. 3   (offset: 0x3609)
// exports ... 29  (offset: 0x233d)
// cseg ...... 0x4c7 + 0x1e76 (0x233d)
// imports ... 95  (offset: 0x27c5)
// animtree1 . 0   (offset: 0x362d)
// animtree2 . 0   (offset: 0x362d)
#using script_cbb0697de4c5728;
#using scripts\anim\animselector;
#using scripts\asm\asm;
#using scripts\asm\asm_mp;
#using scripts\asm\shared\mp\utility;
#using scripts\common\callbacks;
#using scripts\common\utility;
#using scripts\common\values;
#using scripts\common\vehicle_code;
#using scripts\cp_mp\agents\agent_utils;
#using scripts\cp_mp\utility\game_utility;
#using scripts\cp_mp\utility\weapon_utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_occupancy;
#using scripts\engine\utility;

#namespace mp_agent;

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x4cf
// Size: 0x8a
function setupweapon(primaryweaponobject) {
    assertex(isweapon(primaryweaponobject), "weapon param for SetupWeapon needs to be a weapon object");
    self.weapon = primaryweaponobject;
    self giveweapon(self.weapon);
    self setspawnweapon(self.weapon);
    self.bulletsinclip = weaponclipsize(self.weapon);
    self.primaryweapon = self.weapon;
    self.grenadeweapon = nullweapon();
    self.grenadeammo = 0;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 5
// Checksum 0x0, Offset: 0x561
// Size: 0xa2
function spawnnewagentaitype(aitype, position, angles, team, var_42e5c77b1d7fe6e7) {
    /#
    #/
    if (!string_starts_with(aitype, "actor_")) {
        aitype = "actor_" + aitype;
    }
    if (!isdefined(level.agent_definition[aitype]) || !isdefined(level.agent_definition[aitype]["setup_func"])) {
        assertmsg("'" + aitype + "' is not defined in level.agent_definition, please add aitype to level csv, and ensure it is properly marked for mp/cp.");
        /#
        #/
        return undefined;
    }
    agent = spawnnewagent(aitype, team, position, angles, undefined, var_42e5c77b1d7fe6e7);
    /#
    #/
    return agent;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 6
// Checksum 0x0, Offset: 0x60c
// Size: 0x55
function spawnnewagent(agent_type, spawn_team, spawn_position, spawn_angles, var_f9e7dc261e07162e, var_42e5c77b1d7fe6e7) {
    /#
    #/
    agent = dospawnaitype(agent_type, spawn_position, spawn_angles, 0, 0, 1, 0, spawn_team, var_42e5c77b1d7fe6e7);
    /#
    #/
    return agent;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 4
// Checksum 0x0, Offset: 0x66a
// Size: 0xeb
function function_391ec48831a02c13(agent, agent_type, spawn_team, var_f9e7dc261e07162e) {
    scripts\cp_mp\agents\agent_utils::function_51de6da7b0dcf26f(agent);
    agent.connecttime = gettime();
    agent.spawntime = agent.connecttime;
    agent function_d99212ec742486d0(agent_type, spawn_team);
    agent function_af0713caaf6c21c5();
    agent scripts\cp_mp\utility\game_utility::addtocharactersarray();
    agent function_c4f5a500340fe6c2(agent.agent_type);
    if (isdefined(var_f9e7dc261e07162e)) {
        if (isweapon(var_f9e7dc261e07162e)) {
            agent setupweapon(var_f9e7dc261e07162e);
        } else {
            assertmsg("Optional weapon param for spawnNewAgent must be a weapon object. Consider instead adding a weapon to the aitype (or at least use the appropriate MP/CP version of buildWeapon first)");
            return undefined;
        }
    }
    agent activateagent();
    agent set_ai_number();
    agent function_82581894f5a1c71c();
    params = spawnstruct();
    params.agent = agent;
    callback::callback("on_agent_spawned", params);
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 0
// Checksum 0x0, Offset: 0x75d
// Size: 0x61
function function_af0713caaf6c21c5() {
    if (!isdefined(level.agent_funcs[self.agent_type])) {
        level.agent_funcs[self.agent_type] = [];
        assign_agent_func("on_damaged", &default_on_damage);
        assign_agent_func("on_damaged_finished", &default_on_damage_finished);
        assign_agent_func("on_killed", &default_on_killed);
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 2
// Checksum 0x0, Offset: 0x7c6
// Size: 0x4a
function assign_agent_func(var_ad662d6a990f6fcc, default_func) {
    assert(!isdefined(level.agent_funcs[self.agent_type][var_ad662d6a990f6fcc]));
    level.agent_funcs[self.agent_type][var_ad662d6a990f6fcc] = default_func;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x818
// Size: 0x95
function function_b4a6a1a854015dfc(agent_type) {
    self.agent_type = agent_type;
    if (isdefined(level.var_92b4162e3c890dc0) && isdefined(level.agent_definition[agent_type]["subclass"]) && isdefined(level.var_92b4162e3c890dc0[level.agent_definition[agent_type]["subclass"].name])) {
        self [[ level.var_92b4162e3c890dc0[level.agent_definition[agent_type]["subclass"].name] ]]();
        return;
    }
    initagentscriptvariables();
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x8b5
// Size: 0xdf
function getfreeagent(agent_type) {
    if (!isdefined(level.agentarray)) {
        println("<dev string:x3e>");
        return undefined;
    }
    freeagent = function_76b285b4bae7356c();
    if (isdefined(freeagent)) {
        freeagent.agent_type = agent_type;
        if (isdefined(level.var_92b4162e3c890dc0) && isdefined(level.agent_definition[agent_type]["subclass"]) && isdefined(level.var_92b4162e3c890dc0[level.agent_definition[agent_type]["subclass"].name])) {
            freeagent [[ level.var_92b4162e3c890dc0[level.agent_definition[agent_type]["subclass"].name] ]]();
        } else {
            freeagent initagentscriptvariables();
        }
    }
    /#
        if (!isdefined(freeagent)) {
            println("<dev string:x7e>");
        }
    #/
    return freeagent;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 0
// Checksum 0x0, Offset: 0x99d
// Size: 0x57
function initagentscriptvariables() {
    self.pers = [];
    self.hasdied = 0;
    self.isactive = 0;
    self.isagent = 1;
    self.agent_teamparticipant = 0;
    self.agent_gameparticipant = 0;
    self.agentname = undefined;
    self detachall();
    initplayerscriptvariables();
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 0
// Checksum 0x0, Offset: 0x9fc
// Size: 0xf5
function initplayerscriptvariables() {
    self.class = undefined;
    self.movespeedscaler = undefined;
    self.avoidkillstreakonspawntimer = undefined;
    self.guid = undefined;
    self.name = undefined;
    self.perks = undefined;
    self.weaponlist = undefined;
    self.objectivescaler = undefined;
    self.sessionteam = undefined;
    self.sessionstate = undefined;
    val::nuke("weapon");
    val::nuke("weapon_switch");
    val::nuke("offhand_weapons");
    val::nuke("usability");
    self.nocorpse = undefined;
    self.ignoreme = 0;
    self.ignoreall = istrue(level.var_bdb4d0cd41b1c39d);
    self.command_given = undefined;
    self.current_icon = undefined;
    self.do_immediate_ragdoll = undefined;
    if (isdefined(level.gametype_agent_init)) {
        self [[ level.gametype_agent_init ]]();
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 2
// Checksum 0x0, Offset: 0xaf9
// Size: 0x48
function function_d99212ec742486d0(agent_type, spawn_team) {
    if (!isdefined(spawn_team)) {
        spawn_team = level.agent_definition[agent_type]["team"];
        if (!isdefined(spawn_team)) {
            spawn_team = "axis";
        }
    }
    self.pers["team"] = spawn_team;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0xb49
// Size: 0x1f
function set_agent_health(health) {
    self.health = health;
    self.maxhealth = health;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 2
// Checksum 0x0, Offset: 0xb70
// Size: 0x10e, Type: bool
function is_friendly_damage(agent, attacker) {
    if (isdefined(attacker) && isdefined(agent) && isdefined(agent.team) && !istrue(attacker.allowfriendlyfire)) {
        if (isdefined(attacker.team) && attacker.team == agent.team) {
            return true;
        }
        if (isdefined(attacker.owner) && isdefined(attacker.owner.team) && attacker.owner.team == agent.team) {
            return true;
        }
        if (isdefined(attacker.vehicle) && isdefined(attacker.vehicle.team) && attacker.vehicle.team == agent.team) {
            return true;
        }
    }
    return false;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 13
// Checksum 0x0, Offset: 0xc87
// Size: 0x318
function default_on_damage(einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, modelindex, partname, objweapon) {
    victim = self;
    func = undefined;
    self.modifiedidflags = idflags;
    if (isdefined(self.var_970170ffd4b081ac)) {
        idamage = self [[ self.var_970170ffd4b081ac ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, modelindex, partname, objweapon);
    }
    if (isdefined(self.unittype) && isdefined(level.agent_funcs[self.unittype])) {
        func = level.agent_funcs[self.unittype]["gametype_on_damaged"];
    }
    if (isdefined(func)) {
        [[ func ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, modelindex, partname);
    } else if (isdefined(self.agent_type)) {
        func = level.agent_funcs[self.agent_type]["gametype_on_damaged"];
        if (isdefined(func)) {
            [[ func ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, modelindex, partname);
        }
    }
    if (is_friendly_damage(victim, einflictor)) {
        return;
    }
    /#
        scripts\cp_mp\utility\weapon_utility::function_c9e5c511b923a42f(idamage, eattacker, victim, smeansofdeath, shitloc, einflictor, vpoint);
    #/
    if (istrue(victim.agentdamagefeedback)) {
        biskillstreakweapon = 0;
        if (scripts\engine\utility::issharedfuncdefined("killstreak", "isKillstreakWeapon")) {
            biskillstreakweapon = isdefined(objweapon) && [[ scripts\engine\utility::getsharedfunc("killstreak", "isKillstreakWeapon") ]](objweapon.basename);
            if (scripts\engine\utility::issharedfuncdefined("damage", "handleDamageFeedback")) {
                eattacker [[ scripts\engine\utility::getsharedfunc("damage", "handleDamageFeedback") ]](einflictor, eattacker, victim, idamage, smeansofdeath, objweapon, shitloc, idflags, 0, 0, biskillstreakweapon);
            }
        }
    }
    idflags = self.modifiedidflags;
    if (isdefined(victim.unittype) && isdefined(level.agent_funcs[victim.unittype]) && isdefined(level.agent_funcs[victim.unittype]["on_damaged_finished"])) {
        victim [[ level.agent_funcs[victim.unittype]["on_damaged_finished"] ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, 0, modelindex, partname);
        return;
    }
    if (isdefined(victim.agent_type)) {
        assert(isdefined(level.agent_funcs[victim.agent_type]["on_damaged_finished"]));
        victim [[ level.agent_funcs[victim.agent_type]["on_damaged_finished"] ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, 0, modelindex, partname);
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 14
// Checksum 0x0, Offset: 0xfa7
// Size: 0x269
function default_on_damage_finished(einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, stun_fraction, modelindex, partname, armorhit) {
    prevhealth = self.health;
    objweapon = sweapon;
    self.damagedby = eattacker;
    self.damagetime = gettime();
    self.damagepoint = vpoint;
    assert(istrue(self.isactive));
    self finishagentdamage(einflictor, eattacker, idamage, idflags, smeansofdeath, objweapon, vpoint, vdir, shitloc, timeoffset, 0, modelindex, partname, istrue(armorhit));
    if (self.health > 0 && self.health < prevhealth) {
        self notify("pain");
        scripts\asm\asm_mp::runpain();
    }
    if (isalive(self)) {
        if (isdefined(self.var_1ec812b92a31cdd3)) {
            foreach (func in self.var_1ec812b92a31cdd3) {
                self [[ func ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, stun_fraction, modelindex, partname);
            }
        }
        if (isdefined(self.unittype) && isdefined(level.agent_funcs[self.unittype]) && isdefined(level.agent_funcs[self.unittype]["gametype_on_damage_finished"])) {
            func = level.agent_funcs[self.unittype]["gametype_on_damage_finished"];
            if (isdefined(func)) {
                [[ func ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, stun_fraction, modelindex, partname);
            }
            return;
        }
        if (isdefined(self.agent_type)) {
            func = level.agent_funcs[self.agent_type]["gametype_on_damage_finished"];
            if (isdefined(func)) {
                [[ func ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, stun_fraction, modelindex, partname);
            }
        }
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 9
// Checksum 0x0, Offset: 0x1218
// Size: 0x255
function default_on_killed(einflictor, eattacker, idamage, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration) {
    if (isdefined(self.on_zombie_agent_killed_common)) {
        self [[ self.on_zombie_agent_killed_common ]](einflictor, eattacker, idamage, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration, 0);
    } else {
        on_humanoid_agent_killed_common(einflictor, eattacker, idamage, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration, 0);
    }
    if (isdefined(self.unittype) && isdefined(level.agent_funcs[self.unittype]) && isdefined(level.agent_funcs[self.unittype]["gametype_on_killed"])) {
        func = level.agent_funcs[self.unittype]["gametype_on_killed"];
        if (isdefined(func)) {
            self [[ func ]](einflictor, eattacker, idamage, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration);
        }
    } else {
        func = level.agent_funcs[self.agent_type]["gametype_on_killed"];
        if (isdefined(func)) {
            self [[ func ]](einflictor, eattacker, idamage, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration);
        }
    }
    params_struct = spawnstruct();
    params_struct.einflictor = einflictor;
    params_struct.eattacker = eattacker;
    params_struct.idamage = idamage;
    params_struct.smeansofdeath = smeansofdeath;
    params_struct.sweapon = objweapon;
    params_struct.vdir = vdir;
    params_struct.shitloc = shitloc;
    params_struct.timeoffset = timeoffset;
    params_struct.deathanimduration = deathanimduration;
    callback::callback("on_ai_killed", params_struct);
    if (isdefined(eattacker.vehicle) && isdefined(eattacker.vehicle.var_74633b25289a1962)) {
        [[ eattacker.vehicle.var_74633b25289a1962 ]](eattacker.vehicle, self);
        return;
    }
    if (isdefined(einflictor.var_74633b25289a1962) && smeansofdeath == "MOD_CRUSH") {
        [[ einflictor.var_74633b25289a1962 ]](einflictor, self);
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x1475
// Size: 0x2b
function getnumactiveagents(type) {
    if (!isdefined(type)) {
        type = "all";
    }
    agents = getactiveagentsoftype(type);
    return agents.size;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x14a9
// Size: 0xab
function getactiveagentsoftype(type) {
    assert(isdefined(type));
    if (!isdefined(level.agentarray)) {
        return [];
    }
    agents = [];
    foreach (agent in level.agentarray) {
        if (istrue(agent.isactive)) {
            if (type == "all" || agent.agent_type == type) {
                agents[agents.size] = agent;
            }
        }
    }
    return agents;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x155d
// Size: 0x91
function getaliveagentsofteam(team) {
    var_c5c35cc6c0816de1 = [];
    foreach (agent in level.agentarray) {
        if (isalive(agent) && isdefined(agent.team) && agent.team == team) {
            var_c5c35cc6c0816de1[var_c5c35cc6c0816de1.size] = agent;
        }
    }
    return var_c5c35cc6c0816de1;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 0
// Checksum 0x0, Offset: 0x15f7
// Size: 0x39
function activateagent() {
    /#
        if (!self.isactive) {
            assertex(self.connecttime == gettime(), "<dev string:xd2>");
        }
    #/
    self.isactive = 1;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 2
// Checksum 0x0, Offset: 0x1638
// Size: 0x34, Type: bool
function ai_washitbyvehicle(meansofdeath, attacker) {
    if (meansofdeath != "MOD_CRUSH") {
        return false;
    }
    if (!isdefined(attacker)) {
        return false;
    }
    if (!attacker scripts\cp_mp\vehicles\vehicle::isvehicle()) {
        return false;
    }
    return true;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 10
// Checksum 0x0, Offset: 0x1675
// Size: 0x63e
function on_humanoid_agent_killed_common(einflictor, eattacker, idamage, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration, dropweapons) {
    var_37a99e672a1ecc0e = ai_washitbyvehicle(smeansofdeath, einflictor);
    self asmdodeathtransition(self.asmname);
    if (isdefined(self.deathanimduration)) {
        deathanimduration = self.deathanimduration;
    } else if (deathanimduration == 0) {
        deathanimduration = 500;
    }
    if (isdefined(self.fncleanupbt)) {
        self [[ self.fncleanupbt ]]();
    }
    if (isdefined(self.nocorpse)) {
        return;
    }
    victim = self;
    callback::callback("pre_killed_body_cloned");
    self.body = self cloneagent(deathanimduration);
    if (!isdefined(self.body.team)) {
        self.body.team = self.team;
    }
    if (namespace_46e942396566f2da::function_bbee2e46ab15a720(eattacker, objweapon, smeansofdeath, shitloc)) {
        return;
    }
    var_8fd538cbeeacdfa8 = spawnstruct();
    var_8fd538cbeeacdfa8.body = self.body;
    var_8fd538cbeeacdfa8.eattacker = eattacker;
    var_8fd538cbeeacdfa8.script_parameters = self.script_parameters;
    callback::callback("killed_body_cloned", var_8fd538cbeeacdfa8);
    if (issharedfuncdefined("ai_mp_controller", "agentPers_setAgentPersData", 1)) {
        [[ getsharedfunc("ai_mp_controller", "agentPers_setAgentPersData") ]](self, "weaponDropOrigin", self gettagorigin("tag_weapon_right", 1));
        [[ getsharedfunc("ai_mp_controller", "agentPers_setAgentPersData") ]](self, "weaponDropAngles", self gettagangles("tag_weapon_right", 1));
    }
    if (isdefined(self._blackboard.currentvehicle)) {
        if (isdefined(smeansofdeath) && smeansofdeath == "MOD_FIRE") {
            self.ragdoll_directionscale = 0;
        }
        if (istrue(self.burningtodeath)) {
            if (self isscriptable() && self.body isscriptable()) {
                currentstate = self getscriptablepartstate("burn_to_death_by_molotov", 1);
                if (isdefined(currentstate) && currentstate == "active") {
                    self.body setscriptablepartstate("burn_to_death_by_molotov", "active", 1);
                    thread updateburningtodeath(self.body);
                }
            }
        }
        if (!self._blackboard.invehicle || istrue(self._blackboard.var_80912ec8ade08716)) {
            if (var_37a99e672a1ecc0e) {
                assert(isdefined(self.lastattacker));
                self.body startragdollfromvehicleimpact(einflictor);
            } else if (should_do_immediate_ragdoll(self)) {
                if (isdefined(self.ragdollhitloc) && isdefined(self.ragdollimpactvector)) {
                    self.body startragdollfromimpact(self.ragdollhitloc, self.ragdollimpactvector);
                } else {
                    do_immediate_ragdoll(self.body);
                }
            } else {
                thread delaystartragdoll(self.body, shitloc, vdir, objweapon, einflictor, smeansofdeath);
            }
        } else {
            self.body enablelinkto();
            deathanim = self.body getcorpseanim();
            ragdollnotetracks = getnotetracktimes(deathanim, "start_ragdoll");
            shouldragdoll = isdefined(ragdollnotetracks) && ragdollnotetracks.size > 0;
            if (istrue(self._blackboard.var_f6d06d1e68f4f4e5)) {
                self.body linktoblendtotag(self._blackboard.currentvehicle, self._blackboard.var_1745d2b69c72c627, 0);
            } else {
                self.body linktomoveoffset(self._blackboard.currentvehicle, self._blackboard.var_1745d2b69c72c627);
            }
            if (isdefined(self._blackboard.vehicledeathwait) || shouldragdoll) {
                thread delaystartragdoll(self.body, shitloc, objweapon, einflictor, smeansofdeath);
            } else {
                self.body thread ragdoll_on_vehicle_death(self._blackboard.currentvehicle);
                seatid = function_7687424c385de94(self._blackboard.currentvehicle, self._blackboard.var_9176cae5619d7fba);
                if (isdefined(seatid)) {
                    thread function_89fcc8d16c4fd558(self.body, self._blackboard.currentvehicle, seatid, 1);
                }
            }
        }
        return;
    }
    if (istrue(self.burningtodeath)) {
        if (self isscriptable() && self.body isscriptable()) {
            currentstate = self getscriptablepartstate("burn_to_death_by_molotov", 1);
            if (isdefined(currentstate) && currentstate == "active") {
                self.body setscriptablepartstate("burn_to_death_by_molotov", "active", 1);
                thread updateburningtodeath(self.body);
                thread delaystartragdoll(self.body, shitloc, vdir, objweapon, einflictor, smeansofdeath);
            }
        }
        return;
    }
    if (var_37a99e672a1ecc0e) {
        assert(isdefined(self.lastattacker));
        self.body startragdollfromvehicleimpact(einflictor);
        return;
    }
    if (should_do_immediate_ragdoll(self)) {
        if (isdefined(self.ragdollhitloc) && isdefined(self.ragdollimpactvector)) {
            self.body startragdollfromimpact(self.ragdollhitloc, self.ragdollimpactvector);
        } else {
            do_immediate_ragdoll(self.body);
        }
        return;
    }
    thread delaystartragdoll(self.body, shitloc, vdir, objweapon, einflictor, smeansofdeath);
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 4
// Checksum 0x0, Offset: 0x1cbb
// Size: 0x5f
function function_89fcc8d16c4fd558(corpse, vehicle, seatid, deleteonseatenter) {
    corpse endon("death");
    corpse endon("cancel_delete_corpse");
    if (!istrue(vehicle.isdestroyed)) {
        scripts\cp_mp\vehicles\vehicle_occupancy::vehicle_occupancy_assignseatcorpse(corpse, vehicle, seatid, deleteonseatenter);
    }
    vehicle waittill("death");
    if (isdefined(corpse)) {
        corpse delete();
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 2
// Checksum 0x0, Offset: 0x1d22
// Size: 0x7c
function function_7687424c385de94(vehicle, seatindex) {
    foreach (var_5539341a688c012f in scripts\cp_mp\vehicles\vehicle::function_29b4292c92443328(vehicle scripts\cp_mp\vehicles\vehicle::function_d93ec4635290febd()).occupancy.seatids) {
        if (var_5539341a688c012f == seatindex) {
            return seatid;
        }
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x1da6
// Size: 0x50
function ragdoll_on_vehicle_death(vehicle) {
    self endon("entitydeleted");
    if (self isragdoll()) {
        return;
    }
    if (isdefined(vehicle)) {
        while (true) {
            if (!isdefined(self)) {
                return;
            }
            if (!isdefined(vehicle) || vehicle scripts\common\vehicle_code::vehicle_iscorpse()) {
                self unlink();
                self startragdoll();
                return;
            }
            waitframe();
        }
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x1dfe
// Size: 0x4e, Type: bool
function should_do_immediate_ragdoll(agent) {
    if (istrue(agent.do_immediate_ragdoll)) {
        return true;
    }
    if (istrue(agent.forceragdollimmediate)) {
        return true;
    }
    if (istrue(self.var_aa0214e1292a7b3) && !isdefined(self.vehicledeathwait)) {
        return true;
    }
    return false;
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x1e55
// Size: 0x1e2
function do_immediate_ragdoll(agent_body) {
    if (!isdefined(agent_body)) {
        return;
    }
    if (isdefined(agent_body.ragdollhitloc) && isdefined(agent_body.ragdollimpactvector)) {
        agent_body startragdollfromimpact(agent_body.ragdollhitloc, agent_body.ragdollimpactvector);
        return;
    }
    initialimpulse = 10;
    damagetype = utility::getdamagetype(self.damagemod);
    if (isdefined(self.attacker) && isplayer(self.attacker) && damagetype == "melee") {
        initialimpulse = 5;
    }
    damagetaken = self.damagetaken;
    if (damagetype == "bullet" || isdefined(self.damagemod) && self.damagemod == "MOD_FIRE") {
        damagetaken = min(damagetaken, 300);
    }
    directionscale = initialimpulse * damagetaken;
    directionup = max(0.3, self.damagedir[2]);
    direction = (self.damagedir[0], self.damagedir[1], directionup);
    if (isdefined(self.ragdoll_directionscale)) {
        direction *= self.ragdoll_directionscale;
    } else {
        direction *= directionscale;
    }
    if (self.forceragdollimmediate) {
        direction += self.prevanimdelta * 20 * 10;
    }
    if (isdefined(self.ragdoll_start_vel)) {
        direction += self.ragdoll_start_vel * 10;
    }
    damagelocation = self.damagelocation;
    if (isdefined(self.ragdoll_damagelocation_none) && damagelocation == "none") {
        damagelocation = self.ragdoll_damagelocation_none;
    }
    agent_body startragdollfromimpact(damagelocation, direction);
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 6
// Checksum 0x0, Offset: 0x203f
// Size: 0x2ad
function delaystartragdoll(ent, shitloc, vdir, objweapon, einflictor, smeansofdeath) {
    if (isdefined(ent)) {
        deathanim = ent getcorpseanim();
        if (animhasnotetrack(deathanim, "ignore_ragdoll")) {
            return;
        }
        if (animhasnotetrack(deathanim, "annihilate")) {
            times = getnotetracktimes(deathanim, "annihilate");
            waittime = times[0] * getanimlength(deathanim);
            params = spawnstruct();
            params.corpse = ent;
            params.annihilate_time = waittime;
            callback::callback("on_corpse_annihilated", params);
            if (waittime > 0) {
                wait waittime;
            }
            if (isdefined(ent)) {
                ent delete();
            }
            return;
        }
    }
    if (isdefined(level.noragdollents) && level.noragdollents.size) {
        foreach (norag in level.noragdollents) {
            if (distancesquared(ent.origin, norag.origin) < 65536) {
                return;
            }
        }
    }
    var_f0b2847d70267f37 = undefined;
    if (isdefined(self._blackboard.vehicledeathwait)) {
        var_f0b2847d70267f37 = self._blackboard.vehicledeathwait;
    }
    waitframe();
    if (!isdefined(ent)) {
        return;
    }
    if (ent isragdoll()) {
        return;
    }
    deathanim = ent getcorpseanim();
    if (animisleaf(deathanim)) {
        startfrac = 0.35;
        waittime = 0;
        if (isdefined(var_f0b2847d70267f37)) {
            waittime = var_f0b2847d70267f37;
        } else {
            times = getnotetracktimes(deathanim, "start_ragdoll");
            if (isdefined(times) && times.size > 0) {
                startfrac = times[0];
            } else {
                times = getnotetracktimes(deathanim, "vehicle_death_ragdoll");
                if (isdefined(times) && times.size > 0) {
                    startfrac = times[0];
                }
            }
            waittime = startfrac * getanimlength(deathanim) - level.frameduration / 1000;
        }
        if (waittime > 0) {
            wait waittime;
        }
    }
    self unlink();
    if (isdefined(ent)) {
        if (isdefined(ent.ragdollhitloc) && isdefined(ent.ragdollimpactvector)) {
            ent startragdollfromimpact(ent.ragdollhitloc, ent.ragdollimpactvector);
            return;
        }
        ent startragdoll();
    }
}

// Namespace mp_agent / scripts\mp\mp_agent
// Params 1
// Checksum 0x0, Offset: 0x22f4
// Size: 0x49
function updateburningtodeath(corpse) {
    wait 0.7;
    if (!isdefined(corpse)) {
        return;
    }
    corpse setcorpsemodel("burntbody_male_cp", 1);
    corpse dontinterpolate();
    wait 0.95;
    if (!isdefined(corpse)) {
        return;
    }
    corpse setscriptablepartstate("burn_to_death_by_molotov", "inactive");
}

