// scripts\mp\anim.gsc  (73B60289C107FA07.gscc) (size: 5109 Bytes / 0x13f5 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x3ce5bc27 (1021688871)
// size ...... 5109 (0x13f5)
// includes .. 8   (offset: 0x1f0)
// strings ... 26  (offset: 0x1271)
// dev strs .. 2   (offset: 0x13dd)
// exports ... 14  (offset: 0xaf9)
// cseg ...... 0x230 + 0x8c9 (0xaf9)
// imports ... 47  (offset: 0xd29)
// animtree1 . 0   (offset: 0x13f5)
// animtree2 . 0   (offset: 0x13f5)
#using scripts\anim\face;
#using scripts\anim\notetracks;
#using scripts\anim\notetracks_mp;
#using scripts\asm\shared\mp\utility;
#using scripts\common\anim;
#using scripts\common\notetrack;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace anim_mp;

// Namespace anim_mp / scripts\mp\anim
// Params 0
// Checksum 0x0, Offset: 0x238
// Size: 0x109
function init() {
    initanim();
    if (!isdefined(level.scr_viewmodelanim)) {
        level.scr_viewmodelanim = [];
    }
    if (!isdefined(level.scr_eventanim)) {
        level.scr_eventanim = [];
    }
    anim.callbacks["PlaySoundAtViewHeight"] = &play_sound_at_viewheight;
    anim.callbacks["TeleportEnt"] = &teleport_entity;
    anim.callbacks["ShouldDoAnim"] = &should_do_anim;
    anim.callbacks["DoAnimation"] = &do_animation;
    anim.callbacks["DoFacialAnim"] = &do_facial_anim;
    anim.callbacks["AnimHandleNotetrack"] = &mp_anim_handle_notetrack;
    anim.callbacks["EntityHandleNotetrack"] = &mp_entity_handle_notetrack;
    anim.callbacks["EntityHandleNotetrackAnimEnd"] = &scripts\anim\notetracks::function_8b5c774e7238fec5;
    anim.callbacks["AIAnimFirstFrame"] = &scripts\asm\shared\mp\utility::ai_anim_first_frame;
    anim.callbacks["playXcam"] = &play_xcam;
}

// Namespace anim_mp / scripts\mp\anim
// Params 3
// Checksum 0x0, Offset: 0x349
// Size: 0x23
function play_sound_at_viewheight(aliasname, notification_string, var_a68adbd3eefe9282) {
    self playsound(aliasname);
}

// Namespace anim_mp / scripts\mp\anim
// Params 0
// Checksum 0x0, Offset: 0x374
// Size: 0x4, Type: bool
function should_do_anim() {
    return true;
}

// Namespace anim_mp / scripts\mp\anim
// Params 2
// Checksum 0x0, Offset: 0x381
// Size: 0x96
function teleport_entity(origin, angles) {
    if (self.code_classname == "script_vehicle") {
        if (!function_c606ca98a77e09ca()) {
            self.origin = origin;
            self.angles = angles;
            self dontinterpolate();
        } else {
            self vehicle_teleport(origin, angles);
            self dontinterpolate();
        }
        return;
    }
    if (isplayer(self)) {
        self setorigin(origin);
        self setplayerangles(angles);
        return;
    }
    self.origin = origin;
    self.angles = angles;
    self dontinterpolate();
}

// Namespace anim_mp / scripts\mp\anim
// Params 0
// Checksum 0x0, Offset: 0x41f
// Size: 0x55
function function_c606ca98a77e09ca() {
    canteleport = 1;
    if (isdefined(self.vehiclename)) {
        switch (self.vehiclename) {
        case #"hash_2289ec11d77bce8f":
        case #"hash_56979e0566996b2e":
        case #"hash_d849f9d4eaa9ed93":
            canteleport = 0;
            break;
        }
    }
    return canteleport;
}

// Namespace anim_mp / scripts\mp\anim
// Params 6
// Checksum 0x0, Offset: 0x47d
// Size: 0x34, Type: bool
function do_facial_anim(dofacialanim, var_9ac73a1996d2dae, doanimation, anime, animname, dialogue) {
    return false;
}

// Namespace anim_mp / scripts\mp\anim
// Params 7
// Checksum 0x0, Offset: 0x4ba
// Size: 0x211
function do_animation(org, angles, animname, anime, anim_string, idleanim, scripted_node_ent) {
    var_173bdb8ba434651d = 0;
    animation = undefined;
    if (isdefined(idleanim) && !isagent(self)) {
        animation = level.scr_anim[animname][anime][idleanim];
    } else {
        animation = level.scr_anim[animname][anime];
    }
    goaltime = anim_get_goal_time(animname, anime);
    last_anim_time_check();
    if (!isdefined(idleanim)) {
        self._lastanime = anime;
    }
    if (self.code_classname == "misc_turret" && !isdefined(idleanim)) {
        self setflaggedanim(anim_string, animation, 1, goaltime);
    } else {
        if (self.code_classname == "script_vehicle") {
            self vehicleplayanim(animation);
        }
        root = undefined;
        if (isdefined(self.anim_getrootfunc)) {
            root = [[ self.anim_getrootfunc ]]();
        }
        if (isagent(self)) {
            var_173bdb8ba434651d = 1;
            level_archetype = "agent_scripted_" + getdvar(@"g_mapname");
            if (archetypeassetloaded(level_archetype)) {
                scripted_node = spawnstruct();
                if (isdefined(org)) {
                    scripted_node.origin = org;
                    scripted_node.angles = angles;
                }
                var_5a0a7dfb51da0682 = getanimname(animation);
                thread scripts\asm\shared\mp\utility::animscriptmp(level_archetype, "animscripted", var_5a0a7dfb51da0682, undefined, undefined, undefined, scripted_node);
            } else {
                thread scripts\asm\shared\mp\utility::animscriptedagent(anime, anim_string, org, angles);
            }
        } else {
            animmode = undefined;
            if (istrue(self.backwards)) {
                animmode = "backwards";
            }
            self animscripted(anim_string, org, angles, animation, animmode, root, goaltime);
        }
    }
    thread start_notetrack_wait(self, anim_string, anime, animname, animation, var_173bdb8ba434651d);
    return getanimlength(animation);
}

// Namespace anim_mp / scripts\mp\anim
// Params 4
// Checksum 0x0, Offset: 0x6d4
// Size: 0x114
function mp_anim_handle_notetrack(scr_notetrack, guy, var_966821fc90c3ca9d, tag_owner) {
    anim_handle_notetrack(scr_notetrack, guy, var_966821fc90c3ca9d, tag_owner);
    if (isdefined(scr_notetrack["flag"])) {
        if (issharedfuncdefined("game", "gameflagSet")) {
            [[ getsharedfunc("game", "gameflagSet") ]](scr_notetrack["flag"]);
        }
    }
    if (isdefined(scr_notetrack["flag_clear"])) {
        if (issharedfuncdefined("game", "gameflagClear")) {
            [[ getsharedfunc("game", "gameflagClear") ]](scr_notetrack["flag_clear"]);
        }
    }
    if (isdefined(scr_notetrack["sound"])) {
        var_a38dc1947e93b08d = undefined;
        if (!isdefined(scr_notetrack["sound_stays_death"])) {
            var_a38dc1947e93b08d = 1;
        }
        tag = undefined;
        if (isdefined(scr_notetrack["sound_on_tag"])) {
            tag = scr_notetrack["sound_on_tag"];
        }
        if (issharedfuncdefined("game", "gameflagClear")) {
            guy thread [[ getsharedfunc("sound", "playSoundOnTag") ]](scr_notetrack["sound"], tag);
        }
    }
}

// Namespace anim_mp / scripts\mp\anim
// Params 2
// Checksum 0x0, Offset: 0x7f0
// Size: 0x1f
function mp_entity_handle_notetrack(guy, notetrack) {
    if (guy scripts\anim\notetracks_mp::function_6d9ff7d18e45dc9c(notetrack)) {
        return;
    }
}

// Namespace anim_mp / scripts\mp\anim
// Params 6
// Checksum 0x0, Offset: 0x817
// Size: 0x6d
function anim_player_solo(player, player_rig, anime, tag, var_9e8a16d47a03007a, animname_override) {
    self endon("death");
    players[0] = player;
    player_rigs[0] = player_rig;
    if (!isdefined(var_9e8a16d47a03007a)) {
        var_9e8a16d47a03007a = 0;
    }
    anim_player(players, player_rigs, anime, tag, var_9e8a16d47a03007a, animname_override);
}

// Namespace anim_mp / scripts\mp\anim
// Params 6
// Checksum 0x0, Offset: 0x88c
// Size: 0x48
function anim_player(players, player_rigs, anime, tag, var_9e8a16d47a03007a, animname_override) {
    if (!isdefined(var_9e8a16d47a03007a)) {
        var_9e8a16d47a03007a = 0;
    }
    anim_player_internal(players, player_rigs, anime, tag, var_9e8a16d47a03007a, animname_override);
}

// Namespace anim_mp / scripts\mp\anim
// Params 6
// Checksum 0x0, Offset: 0x8dc
// Size: 0x13f
function anim_player_internal(players, player_rigs, anime, tag, var_9e8a16d47a03007a, animname_override) {
    duration = 0;
    foreach (player in players) {
        animname = undefined;
        if (isdefined(animname_override)) {
            animname = animname_override;
        } else {
            animname = player.animname;
        }
        if (isdefined(level.scr_eventanim[animname]) && isdefined(level.scr_eventanim[animname][anime])) {
            duration = player playanimscriptsceneevent("scripted_scene", level.scr_eventanim[animname][anime]);
        }
        if (isdefined(level.scr_viewmodelanim[animname]) && isdefined(level.scr_viewmodelanim[animname][anime]) && !istrue(player.blockviewmodelanim)) {
            player playviewmodelanim(level.scr_viewmodelanim[animname][anime]);
        }
    }
    if (isdefined(player_rigs)) {
        anim_single(player_rigs, anime, tag, var_9e8a16d47a03007a, animname_override);
    }
}

// Namespace anim_mp / scripts\mp\anim
// Params 3
// Checksum 0x0, Offset: 0xa23
// Size: 0x8e
function play_xcam(xcamasset, origin, angles) {
    camnum = undefined;
    camnum = default_to(camnum, 0);
    foreach (player in level.players) {
        player playxcam(xcamasset, camnum, origin, angles);
    }
    wait getxcamlength(xcamasset);
}

// Namespace anim_mp / scripts\mp\anim
// Params 1
// Checksum 0x0, Offset: 0xab9
// Size: 0x40
function function_3c8f0102ea5254f3(framecount) {
    frametime = 0.0333333 * framecount;
    if (frametime <= 0) {
        println("<dev string:x1c>" + frametime + "<dev string:x33>");
        return;
    }
    wait frametime;
}

