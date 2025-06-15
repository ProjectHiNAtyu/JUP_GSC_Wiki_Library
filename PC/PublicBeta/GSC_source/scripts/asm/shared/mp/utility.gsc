// scripts\asm\shared\mp\utility.gsc  (669A259AF13C5E60.gscc) (size: 8881 Bytes / 0x22b1 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x9ff423d0 (2683577296)
// size ...... 8881 (0x22b1)
// includes .. 7   (offset: 0x150)
// strings ... 19  (offset: 0x2131)
// dev strs .. 0   (offset: 0x22b1)
// exports ... 36  (offset: 0x12a1)
// cseg ...... 0x188 + 0x1119 (0x12a1)
// imports ... 73  (offset: 0x1841)
// animtree1 . 0   (offset: 0x22b1)
// animtree2 . 0   (offset: 0x22b1)
#using scripts\asm\asm;
#using scripts\asm\asm_bb;
#using scripts\asm\asm_mp;
#using scripts\asm\shared\mp\utility;
#using scripts\asm\shared\utility;
#using scripts\common\callbacks;
#using scripts\engine\utility;

#namespace utility;

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0x190
// Size: 0x42
function dotraversal() {
    self endon("killanimscript");
    startnode = self getnegotiationstartnode();
    animscript = startnode.animscript;
    self notify("traverse_begin", animscript, startnode);
    self waittill("traverse_end");
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 3
// Checksum 0x0, Offset: 0x1da
// Size: 0x1c, Type: bool
function chooseanimwithoverride(asmname, statename, params) {
    return false;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 3
// Checksum 0x0, Offset: 0x1ff
// Size: 0x88
function loopanimfortime(asmname, statename, params) {
    self endon(statename + "_finished");
    self endon("terminate_ai_threads");
    endevent = "loop_end";
    t = 2;
    if (isarray(params)) {
        if (params.size > 0) {
            t = params[0];
        }
        if (params.size > 1) {
            endevent = params[1];
        }
    } else {
        t = params;
    }
    thread function_fb56c9527636713f(asmname, statename, 1);
    wait t;
    asm_fireevent(asmname, endevent);
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 2
// Checksum 0x0, Offset: 0x28f
// Size: 0x8f
function waitforpathchange(asmname, statename) {
    self endon(statename + "_finished");
    self waittill("path_set");
    var_2920e731907ba823 = self.lookaheaddir * self.lookaheaddist;
    turnparams = [0, var_2920e731907ba823, 0, self.origin, self.lookaheaddist];
    asm_fireevent(asmname, "sharp_turn", turnparams);
    thread waitforpathchange(asmname, statename);
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 3
// Checksum 0x0, Offset: 0x326
// Size: 0x86
function playmoveloop_mp(asmname, statename, params) {
    thread waitforpathchange(asmname, statename);
    rate = 1;
    if (isdefined(self.asm.moveplaybackrate)) {
        rate = self.asm.moveplaybackrate;
    } else if (isdefined(self.moveplaybackrate)) {
        rate = self.moveplaybackrate;
    }
    function_fb56c9527636713f(asmname, statename, rate);
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 1
// Checksum 0x0, Offset: 0x3b4
// Size: 0x79, Type: bool
function isfacingenemy(mindot) {
    if (!isdefined(mindot)) {
        mindot = 0.5;
    }
    forward = anglestoforward(self.angles);
    dirtoenemy = vectornormalize(self.enemy.origin - self.origin);
    dot = vectordot(forward, dirtoenemy);
    if (dot < mindot) {
        return false;
    }
    return true;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0x436
// Size: 0xf, Type: bool
function isweaponfacingenemy() {
    if (isaimedataimtarget()) {
        return true;
    }
    return false;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0x44e
// Size: 0x15, Type: bool
function wantstocrouch() {
    if (bb_getrequestedstance() == "crouch") {
        return true;
    }
    return false;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 1
// Checksum 0x0, Offset: 0x46c
// Size: 0xa5
function function_71eefa1c0da64a21(shootfrompos) {
    if (!istrue(self._blackboard.shootparams_valid)) {
        return undefined;
    } else if (isdefined(self._blackboard.shootparams_ent)) {
        return self._blackboard.shootparams_ent getshootatpos();
    } else if (isdefined(self._blackboard.shootparams_pos)) {
        return self._blackboard.shootparams_pos;
    } else if (isdefined(self.enemy)) {
        return self.enemy getshootatpos();
    }
    return undefined;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0x51a
// Size: 0xf1, Type: bool
function isaimedataimtarget() {
    if (!isdefined(self._blackboard.shootparams_pos) && !isdefined(self._blackboard.shootparams_ent)) {
        return true;
    }
    weaponangles = self getmuzzleangle();
    shootfrompos = self getshootfrompos();
    shootpos = function_71eefa1c0da64a21(shootfrompos);
    if (!isdefined(shootpos)) {
        return false;
    }
    var_17ffbc15989cd7cb = vectortoangles(shootpos - shootfrompos);
    absyawdiff = absangleclamp180(weaponangles[1] - var_17ffbc15989cd7cb[1]);
    if (absyawdiff > anim.aimyawdifffartolerance) {
        if (distancesquared(self geteye(), shootpos) > anim.aimyawdiffclosedistsq || absyawdiff > anim.aimyawdiffclosetolerance) {
        }
    }
    aimpitchdifftolerance = getaimpitchdifftolerance();
    return absangleclamp180(weaponangles[0] - var_17ffbc15989cd7cb[0]) <= aimpitchdifftolerance;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0x614
// Size: 0x26
function getaimpitchdifftolerance() {
    if (isdefined(self.aimpitchdifftolerance)) {
        return self.aimpitchdifftolerance;
    }
    return anim.aimpitchdifftolerance;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 4
// Checksum 0x0, Offset: 0x642
// Size: 0x23
function delayslowmotion(delay, start, end, time) {
    
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 3
// Checksum 0x0, Offset: 0x66d
// Size: 0x1b
function delaymodifybasefov(delay, fov, time) {
    
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 8
// Checksum 0x0, Offset: 0x690
// Size: 0x79
function animscriptmp(archetype, statename, aliasname, loop, playbackrate, customendon, scriptednode, tag) {
    if (isdefined(customendon)) {
        thread animscriptmp_watchcancel(customendon);
    }
    if (istrue(loop)) {
        thread animscriptmp_loop_internal(archetype, statename, aliasname, playbackrate, scriptednode, tag);
        return;
    }
    thread animscriptmp_single_internal(archetype, statename, aliasname, playbackrate, scriptednode, tag);
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0x711
// Size: 0x1c
function cancelanimscriptmp() {
    if (!scripts\asm\asm_bb::bb_isanimscripted()) {
        return 0;
    }
    cancelanimscriptmp_internal();
    self notify("CancelAnimscriptMP");
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 1
// Checksum 0x0, Offset: 0x735
// Size: 0x2b
function animscriptmp_watchcancel(customendon) {
    self endon("AnimscriptMP_Complete");
    self endon("death");
    self endon("CancelAnimscriptMP");
    self waittill(customendon);
    cancelanimscriptmp();
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 6
// Checksum 0x0, Offset: 0x768
// Size: 0x97
function animscriptmp_single_internal(archetype, statename, aliasname, playbackrate, scriptnode, tag) {
    animscriptmp_internal(archetype, statename, aliasname, playbackrate, scriptnode, tag);
    var_e1940c994503c932 = isdefined(playbackrate) && playbackrate == 0;
    if (!var_e1940c994503c932 && isdefined(self) && isalive(self)) {
        cancelanimscriptmp_internal();
        self notify("AnimscriptMP_Complete");
        self notify("single anim", "end");
        self notify("looping anim", "end");
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 6
// Checksum 0x0, Offset: 0x807
// Size: 0x56
function animscriptmp_loop_internal(archetype, statename, aliasname, playbackrate, scriptnode, tag) {
    self endon("CancelAnimscriptMP");
    self endon("death");
    while (true) {
        animscriptmp_internal(archetype, statename, aliasname, playbackrate, scriptnode, tag);
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 4, eflags: 0x4
// Checksum 0x0, Offset: 0x865
// Size: 0xb9
function private function_7618d8f3ba2fbcea(xanim, scriptnode, tag, animindex) {
    if (isdefined(tag)) {
        assert(isent(scriptnode));
        startpos = scriptnode gettagorigin(tag);
        startangles = scriptnode gettagangles(tag);
    } else {
        startpos = scriptnode.origin;
        startangles = scriptnode.angles;
    }
    animstartpos = getstartorigin(startpos, startangles, xanim);
    animstartangles = getstartangles(startpos, startangles, xanim);
    self dontinterpolate();
    self forceteleport(animstartpos, animstartangles, 9999999, 0);
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 6
// Checksum 0x0, Offset: 0x926
// Size: 0xed
function animscriptmp_internal(archetype, statename, aliasname, playbackrate, scriptnode, tag) {
    self endon("CancelAnimscriptMP");
    self endon("death");
    if (!isdefined(playbackrate)) {
        playbackrate = 1;
    }
    self setoverridearchetype("animscript", archetype, 1);
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = archetypegetrandomalias(archetype, statename, aliasname, asm_isfrantic());
    xanim = animsetgetanimfromindex(archetype, statename, animindex);
    if (isdefined(scriptnode)) {
        function_7618d8f3ba2fbcea(xanim, scriptnode, tag, animindex);
    }
    self aisetanim(statename, animindex, playbackrate);
    self aisetanimrate(statename, animindex, playbackrate);
    animlength = getanimlength(xanim);
    self.scripted_mode = 1;
    self.ignoreall = 1;
    if (playbackrate > 0) {
        wait animlength / playbackrate;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0xa1b
// Size: 0x2b
function cancelanimscriptmp_internal() {
    scripts\asm\asm_bb::bb_clearanimscripted();
    self clearoverridearchetype("animscript", 0, 0);
    self.scripted_mode = 0;
    self.ignoreall = 0;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 3
// Checksum 0x0, Offset: 0xa4e
// Size: 0x7c
function animscripted_single(aliasname, var_1a11aea0c900b403, statename) {
    scripts\asm\asm_mp::asm_setanimscripted();
    if (!isdefined(statename)) {
        statename = "animscripted";
    }
    animindex = asm_lookupanimfromalias(statename, aliasname);
    self aisetanim(statename, animindex);
    if (!isdefined(var_1a11aea0c900b403)) {
        var_1a11aea0c900b403 = 0;
    }
    if (!var_1a11aea0c900b403) {
        xanim = asm_getxanim(statename, animindex);
        animlength = getanimlength(xanim);
        wait animlength;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 2
// Checksum 0x0, Offset: 0xad2
// Size: 0x47
function function_dd94e74da0ad6ead(aliasname, statename) {
    scripts\asm\asm_mp::asm_setanimscripted();
    if (!isdefined(statename)) {
        statename = "animscripted";
    }
    animindex = asm_lookupanimfromalias(statename, aliasname);
    self aisetanim(statename, animindex, 0);
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 2
// Checksum 0x0, Offset: 0xb21
// Size: 0x7c
function animscripted_single_earlyend(aliasname, time) {
    assert(time > 0);
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias("animscripted", aliasname);
    self aisetanim("animscripted", animindex);
    xanim = asm_getxanim("animscripted", animindex);
    animlength = getanimlength(xanim);
    if (time < animlength) {
        wait animlength - time;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 1
// Checksum 0x0, Offset: 0xba5
// Size: 0x79
function animscripted_loop(aliasname) {
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias("animscripted", aliasname);
    xanim = asm_getxanim("animscripted", animindex);
    animlength = getanimlength(xanim);
    if (animlength < 0.05) {
        animlength = 0.05;
    }
    while (true) {
        self aisetanim("animscripted", animindex);
        wait animlength;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 2
// Checksum 0x0, Offset: 0xc26
// Size: 0x8c
function animscripted_loop_earlyend(aliasname, time) {
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias("animscripted", aliasname);
    xanim = asm_getxanim("animscripted", animindex);
    animlength = getanimlength(xanim);
    if (time < animlength) {
        animlength -= time;
    }
    if (animlength < 0.05) {
        animlength = 0.05;
    }
    while (true) {
        self aisetanim("animscripted", animindex);
        wait animlength;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 2
// Checksum 0x0, Offset: 0xcba
// Size: 0x9f
function animscripted_loop_for_time(aliasname, time) {
    assert(time > 0);
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias("animscripted", aliasname);
    xanim = asm_getxanim("animscripted", animindex);
    animlength = getanimlength(xanim);
    if (animlength < 0.05) {
        animlength = 0.05;
    }
    timeremaining = time;
    while (timeremaining >= 0) {
        self aisetanim("animscripted", animindex);
        wait animlength;
        timeremaining -= animlength;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 2
// Checksum 0x0, Offset: 0xd61
// Size: 0x8f
function animscripted_loop_n_times(aliasname, numloops) {
    assert(numloops);
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias("animscripted", aliasname);
    xanim = asm_getxanim("animscripted", animindex);
    animlength = getanimlength(xanim);
    if (animlength < 0.05) {
        animlength = 0.05;
    }
    while (numloops > 0) {
        self aisetanim("animscripted", animindex);
        wait animlength;
        numloops--;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 3
// Checksum 0x0, Offset: 0xdf8
// Size: 0xad
function animscripted_loop_relative(aliasname, ent, tag) {
    self endon("death");
    assert(isdefined(ent));
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias("animscripted", aliasname);
    xanim = asm_getxanim("animscripted", animindex);
    function_7618d8f3ba2fbcea(xanim, ent, tag, animindex);
    while (true) {
        if (!istrue(self._blackboard.animscriptedactive)) {
            return;
        }
        self aisetanim("animscripted", animindex);
        animlength = getanimlength(xanim);
        wait animlength;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 5
// Checksum 0x0, Offset: 0xead
// Size: 0xa5
function animscripted_single_relative(aliasname, ent, tag, var_1a11aea0c900b403, statename) {
    assert(isdefined(ent));
    if (!isdefined(statename)) {
        statename = "animscripted";
    }
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias(statename, aliasname);
    xanim = asm_getxanim(statename, animindex);
    function_7618d8f3ba2fbcea(xanim, ent, tag, animindex);
    self aisetanim(statename, animindex);
    if (!isdefined(var_1a11aea0c900b403)) {
        var_1a11aea0c900b403 = 0;
    }
    if (!var_1a11aea0c900b403) {
        animlength = getanimlength(xanim);
        wait animlength;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 4
// Checksum 0x0, Offset: 0xf5a
// Size: 0xee
function animscripted_single_arrive_at(aliasname, pos, angles, var_1a11aea0c900b403) {
    scripts\asm\asm_mp::asm_setanimscripted();
    animindex = asm_lookupanimfromalias("animscripted", aliasname);
    xanim = asm_getxanim("animscripted", animindex);
    animdelta = getmovedelta(xanim);
    animangles = getangledelta3d(xanim);
    startangles = combineangles(angles, invertangles(animangles));
    startpos = pos - rotatevector(animdelta, startangles);
    self dontinterpolate();
    self forceteleport(startpos, startangles, 9999999, 0);
    self aisetanim("animscripted", animindex);
    if (!isdefined(var_1a11aea0c900b403)) {
        var_1a11aea0c900b403 = 0;
    }
    if (!var_1a11aea0c900b403) {
        animlength = getanimlength(xanim);
        wait animlength;
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 0
// Checksum 0x0, Offset: 0x1050
// Size: 0x9
function animscripted_clear() {
    scripts\asm\asm_bb::bb_clearanimscripted();
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 1
// Checksum 0x0, Offset: 0x1061
// Size: 0x5d, Type: bool
function function_8fa69650e33c84ef(anime) {
    if (!isdefined(level.scr_anim) || !isdefined(self.animname) || !isdefined(level.scr_anim[self.animname]) || !isdefined(level.scr_anim[self.animname][anime])) {
        return false;
    }
    return true;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 5
// Checksum 0x0, Offset: 0x10c7
// Size: 0xe4
function animscriptedagent(anime, anim_string, org, animangles, anim_flag) {
    self endon("death");
    if (isstring(anim_flag)) {
        ent_flag_set(anim_flag);
    }
    aliasname = level.scr_anim[self.animname][anime];
    callback_name = anime + "_animscripted";
    callback::callback(callback_name);
    if (isdefined(org)) {
        anim_node = spawnstruct();
        anim_node.origin = org;
        anim_node.angles = animangles;
        scripts\asm\shared\mp\utility::animscripted_single_relative(aliasname, anim_node);
    } else {
        scripts\asm\shared\mp\utility::animscripted_single(aliasname);
    }
    scripts\asm\shared\mp\utility::animscripted_clear();
    self notify(anim_string, "end");
    if (isstring(anim_flag)) {
        ent_flag_clear(anim_flag);
    }
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 1
// Checksum 0x0, Offset: 0x11b3
// Size: 0x67
function function_8efc1cbdaa97f95e(anime) {
    spawn_anim = scripts\asm\asm::asm_lookupanimfromalias("animscripted", level.scr_anim[self.animname][anime]);
    spawn_xanim = animsetgetanimfromindex(scripts\asm\shared\utility::function_2285421dfc79c4d5(), "animscripted", spawn_anim);
    var_7d881d4e81293ae5 = getmovedelta(spawn_xanim, 0, 1);
    return var_7d881d4e81293ae5;
}

// Namespace utility / scripts\asm\shared\mp\utility
// Params 2
// Checksum 0x0, Offset: 0x1223
// Size: 0x7e
function ai_anim_first_frame(animation, animname) {
    level_archetype = "agent_scripted_" + getdvar(@"g_mapname");
    aliasname = getanimname(animation);
    if (archetypeassetloaded(level_archetype)) {
        thread scripts\asm\shared\mp\utility::animscriptmp(level_archetype, "animscripted", aliasname, undefined, 0);
        return;
    }
    statename = "animscripted";
    thread scripts\asm\shared\mp\utility::function_dd94e74da0ad6ead(aliasname, statename);
}

