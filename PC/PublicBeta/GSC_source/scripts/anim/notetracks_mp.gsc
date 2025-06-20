// scripts\anim\notetracks_mp.gsc  (4F57E90811AA8900.gscc) (size: 2805 Bytes / 0xaf5 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x59eacfa3 (1508560803)
// size ...... 2805 (0xaf5)
// includes .. 7   (offset: 0x113)
// strings ... 17  (offset: 0xa01)
// dev strs .. 3   (offset: 0xad1)
// exports ... 10  (offset: 0x57d)
// cseg ...... 0x14b + 0x432 (0x57d)
// imports ... 26  (offset: 0x70d)
// animtree1 . 0   (offset: 0xaf5)
// animtree2 . 0   (offset: 0xaf5)
#using scripts\anim\notetracks;
#using scripts\anim\utility_common;
#using scripts\asm\asm_bb;
#using scripts\common\debug;
#using scripts\common\notetrack;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace notetracks_mp;

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 0
// Checksum 0x0, Offset: 0x153
// Size: 0x21
function registernotetracksifnot() {
    if (isdefined(anim.notetracks)) {
        return;
    }
    anim.notetracks = [];
    registernotetracks();
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 0
// Checksum 0x0, Offset: 0x17c
// Size: 0x8e
function registernotetracks() {
    level._defaultnotetrackhandler = &handlenotetrack;
    level.fnnotetrackprefixhandler = &function_6d9ff7d18e45dc9c;
    scripts\anim\notetracks::registernotetracks();
    anim.notetracks["anim_pose = stand"] = &notetrackposestand;
    anim.notetracks["anim_pose = crouch"] = &notetrackposecrouch;
    anim.notetracks["anim_pose = prone"] = &notetrackposeprone;
    anim.notetracks["gun drop"] = &notetrackgundrop;
    anim.notetracks["dropgun"] = &notetrackgundrop;
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 4
// Checksum 0x0, Offset: 0x212
// Size: 0xbe
function handlenotetrack(note, flagname, customfunction, customparams) {
    if (scripts\anim\notetracks::hascustomnotetrackhandler(note)) {
        return scripts\anim\notetracks::handlecustomnotetrackhandler(note, flagname, customfunction, customparams);
    }
    retval = scripts\anim\notetracks::handlecommonnotetrack(note, flagname, customfunction, customparams);
    if (isdefined(retval) && retval == "__unhandled") {
        retval = undefined;
        switch (note) {
        case #"hash_88cce8d6571fe7e1":
            if (weaponclass(self.weapon) == "rocketlauncher") {
                notetrackrocketlauncherammoattach();
            }
            break;
        default:
            if (isdefined(customfunction)) {
                if (isdefined(customparams)) {
                    return [[ customfunction ]](note, customparams);
                } else {
                    return [[ customfunction ]](note);
                }
            }
            break;
        }
    }
    return retval;
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 1
// Checksum 0x0, Offset: 0x2d9
// Size: 0x159
function function_6d9ff7d18e45dc9c(notetrack) {
    prefix = getsubstr(notetrack, 0, 3);
    if (prefix == "as_") {
        alias = getsubstr(notetrack, 3);
        if (isdefined(self.anim_playsound_func)) {
            self thread [[ self.anim_playsound_func ]](alias);
        }
        return 1;
    }
    if (prefix == "vm_") {
        animation = getsubstr(notetrack, 3);
        if (isdefined(self.anim_playvm_func)) {
            self thread [[ self.anim_playvm_func ]](animation);
        }
        return 1;
    }
    if (prefix == "ws_") {
        state = getsubstr(notetrack, 3);
        if (isdefined(self.weapon_state_func)) {
            self thread [[ self.weapon_state_func ]](state);
        }
        return 1;
    }
    if (prefix == "cm_") {
        var_d8958445ed7ab829 = getsubstr(notetrack, 3);
        if (isdefined(self.cinematic_motion_override)) {
            self thread [[ self.cinematic_motion_override ]](var_d8958445ed7ab829);
        }
        return 1;
    }
    if (prefix == "df_") {
        doftype = getsubstr(notetrack, 3);
        if (isdefined(self.dof_func)) {
            self thread [[ self.dof_func ]](doftype);
        }
        return 1;
    }
    return scripts\anim\notetracks::notetrack_prefix_handler_common(notetrack);
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 0
// Checksum 0x0, Offset: 0x43b
// Size: 0x3b
function notetrackrocketlauncherammoattach() {
    assert(isdefined(self));
    if (!isalive(self)) {
        return;
    }
    if (!usingrocketlauncher()) {
        return;
    }
    if (self tagexists("tag_rocket")) {
        self showpart("tag_rocket");
    }
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 2
// Checksum 0x0, Offset: 0x47e
// Size: 0x5b
function notetrackgundrop(note, flagname) {
    if (!isai(self)) {
        println("<dev string:x1c>" + function_a2eaafb222316a2(self) + "<dev string:x2e>" + note + "<dev string:x41>");
        return;
    }
    if (isdefined(self.fndropweapon)) {
        self [[ self.fndropweapon ]]();
    }
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 1
// Checksum 0x0, Offset: 0x4e1
// Size: 0x27
function setpose(pose) {
    self.currentpose = pose;
    scripts\asm\asm_bb::bb_requeststance(pose);
    self notify("entered_pose" + pose);
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 2
// Checksum 0x0, Offset: 0x510
// Size: 0x1f
function notetrackposestand(note, flagname) {
    setpose("stand");
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 2
// Checksum 0x0, Offset: 0x537
// Size: 0x1f
function notetrackposecrouch(note, flagname) {
    setpose("crouch");
}

// Namespace notetracks_mp / scripts\anim\notetracks_mp
// Params 2
// Checksum 0x0, Offset: 0x55e
// Size: 0x1f
function notetrackposeprone(note, flagname) {
    setpose("prone");
}

