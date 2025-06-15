// scripts\mp\agents\agent_common.gsc  (39F58EA1AAEC2704.gscc) (size: 2389 Bytes / 0x955 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x3023f1b8 (807662008)
// size ...... 2389 (0x955)
// includes .. 4   (offset: 0x10e)
// strings ... 10  (offset: 0x8c1)
// dev strs .. 2   (offset: 0x93d)
// exports ... 11  (offset: 0x5d5)
// cseg ...... 0x12e + 0x4a7 (0x5d5)
// imports ... 11  (offset: 0x78d)
// animtree1 . 0   (offset: 0x955)
// animtree2 . 0   (offset: 0x955)
#using scripts\anim\notetracks_mp;
#using scripts\asm\asm;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace agent_common;

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 0
// Checksum 0x0, Offset: 0x136
// Size: 0x75
function codecallback_agentadded() {
    self [[ level.initagentscriptvariables ]]();
    agentteam = "axis";
    if (level.numagents % 2 == 0) {
        agentteam = "allies";
    }
    level.numagents++;
    self sethitlocdamagetable(%"hash_635afa6edffbf00b");
    self [[ level.setagentteam ]](agentteam);
    level.agentarray[level.agentarray.size] = self;
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 12
// Checksum 0x0, Offset: 0x1b3
// Size: 0xd8
function codecallback_agentdamaged(einflictor, eattacker, idamage, idflags, smeansofdeath, objweapon, vpoint, vdir, shitloc, timeoffset, modelindex, partname) {
    sweapon = objweapon;
    if (isdefined(level.weaponmapfunc)) {
        objweapon = [[ level.weaponmapfunc ]](objweapon, einflictor);
    }
    eattacker = [[ level.agentvalidateattacker ]](eattacker);
    agent_func = self [[ level.agentfunc ]]("on_damaged");
    if (isdefined(agent_func)) {
        self [[ agent_func ]](einflictor, eattacker, idamage, idflags, smeansofdeath, sweapon, vpoint, vdir, shitloc, timeoffset, modelindex, partname, objweapon);
    }
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 8
// Checksum 0x0, Offset: 0x293
// Size: 0x66
function codecallback_agentimpaled(eattacker, objweapon, vpointclient, vpoint, vdir, shitloc, spartname, var_19f6f25777706f34) {
    if (isdefined(level.callbackplayerimpaled)) {
        [[ level.callbackplayerimpaled ]](eattacker, objweapon, vpointclient, vpoint, vdir, shitloc, spartname, var_19f6f25777706f34);
    }
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 10
// Checksum 0x0, Offset: 0x301
// Size: 0xb3
function codecallback_agentkilled(einflictor, eattacker, idamage, idflags, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration) {
    if (isdefined(level.weaponmapfunc)) {
        objweapon = [[ level.weaponmapfunc ]](objweapon, einflictor);
    }
    eattacker = [[ level.agentvalidateattacker ]](eattacker);
    agent_func = self [[ level.agentfunc ]]("on_killed");
    if (isdefined(agent_func)) {
        self thread [[ agent_func ]](einflictor, eattacker, idamage, smeansofdeath, objweapon, vdir, shitloc, timeoffset, deathanimduration);
    }
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 2
// Checksum 0x0, Offset: 0x3bc
// Size: 0x13
function codecallback_agentfinishweaponchange(objoldweapon, objnewweapon) {
    
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 0
// Checksum 0x0, Offset: 0x3d7
// Size: 0x20
function init() {
    initagentlevelvariables();
    scripts\anim\notetracks_mp::registernotetracks();
    scripts\asm\asm::setup_level_ents();
    level thread add_agents_to_game();
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 3
// Checksum 0x0, Offset: 0x3ff
// Size: 0xdf
function connectnewagent(agent_type, team, class) {
    agent = [[ level.getfreeagent ]](agent_type);
    if (isdefined(agent)) {
        agent.connecttime = gettime();
        if (isdefined(team)) {
            agent [[ level.setagentteam ]](team);
        } else {
            agent [[ level.setagentteam ]](agent.team);
        }
        if (isdefined(class)) {
            agent.class_override = class;
        }
        if (isdefined(level.agent_funcs[agent_type]["onAIConnect"])) {
            agent [[ agent [[ level.agentfunc ]]("onAIConnect") ]]();
        }
        agent [[ level.addtocharactersarray ]]();
        assertex(agent.connecttime == gettime(), "Agent spawn took too long - there should be no waits in connectNewAgent");
    }
    return agent;
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 0
// Checksum 0x0, Offset: 0x4e7
// Size: 0x2d
function initagentlevelvariables() {
    level.agentarray = [];
    level.numagents = 0;
    if (!isdefined(level.var_e58efb25be1ee016)) {
        level.var_e58efb25be1ee016 = 0;
    }
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 0
// Checksum 0x0, Offset: 0x51c
// Size: 0x78
function add_agents_to_game() {
    level endon("game_ended");
    level waittill("connected", player);
    maxagents = getmaxagents();
    println("<dev string:x1c>" + maxagents + "<dev string:x3a>");
    while (level.agentarray.size < maxagents) {
        agent = addagent();
        if (!isdefined(agent)) {
            waitframe();
            continue;
        }
    }
    level.var_61198536443ad7ec = 1;
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 1
// Checksum 0x0, Offset: 0x59c
// Size: 0x1f
function set_agent_health(health) {
    self.health = health;
    self.maxhealth = health;
}

// Namespace agent_common / scripts\mp\agents\agent_common
// Params 0
// Checksum 0x0, Offset: 0x5c3
// Size: 0x12
function ondeactivate() {
    self notify("killanimscript");
    self notify("terminate_ai_threads");
}

