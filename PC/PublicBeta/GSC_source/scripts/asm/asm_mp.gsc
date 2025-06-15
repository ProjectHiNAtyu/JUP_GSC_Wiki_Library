// scripts\asm\asm_mp.gsc  (547B73EF8F00503B.gscc) (size: 6976 Bytes / 0x1b40 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xadb7f525 (2914514213)
// size ...... 6976 (0x1b40)
// includes .. 7   (offset: 0x1c0)
// strings ... 25  (offset: 0x1a00)
// dev strs .. 0   (offset: 0x1b40)
// exports ... 22  (offset: 0xe58)
// cseg ...... 0x1f8 + 0xc60 (0xe58)
// imports ... 72  (offset: 0x11c8)
// animtree1 . 0   (offset: 0x1b40)
// animtree2 . 0   (offset: 0x1b40)
#using scripts\anim\notetracks_mp;
#using scripts\anim\shared;
#using scripts\asm\asm;
#using scripts\asm\asm_bb;
#using scripts\asm\shared\utility;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace asm_mp;

// Namespace asm_mp / scripts\asm\asm_mp
// Params 2
// Checksum 0x0, Offset: 0x200
// Size: 0x136
function asm_init(var_b5da6777bfe1ace8, archetypename) {
    self.asmname = var_b5da6777bfe1ace8;
    first_init = 0;
    if (!isdefined(self.asm)) {
        first_init = 1;
        self.asm = spawnstruct();
        self.asm.animoverrides = [];
    }
    if (isdefined(archetypename)) {
        if (first_init) {
            self function_e855b69f84cb6ce3(archetypename);
        } else {
            self setanimset(archetypename);
        }
    }
    self.fnasm_init = &asm_init;
    self.fnasm_setorientmode = &asm_settransitionorientmode_transition;
    self.fnasm_handlenotetrack = &scripts\anim\notetracks_mp::handlenotetrack;
    self.fnasm_playadditiveanimloopstate = &asm_playadditiveanimloopstate_mp;
    self.fnasm_playfacialanim = &asm_playfacialanim_mp;
    self.fnplaceweaponon = &scripts\anim\shared::placeweaponon;
    self.fndooropen = &dooropen;
    self.fndoorclose = &doorclose;
    self.fndoorneedstoclose = &doorneedstoclose;
    self.fngetdoorcenter = &getdoorcenter;
    self.fndooralreadyopen = &dooralreadyopen;
    self function_131f6fb305015d0(&scripts\asm\shared\utility::function_b6a072e9e59fb82e);
    hack_setup_a_struct();
    function_c051a94f99bd65f1(self.asmname);
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 0
// Checksum 0x0, Offset: 0x33e
// Size: 0xf7
function hack_setup_a_struct() {
    if (isdefined(self.a)) {
        return;
    }
    self.a = spawnstruct();
    self.currentpose = "stand";
    self.a.movement = "stop";
    self.a.lastenemytime = gettime();
    self.var_98add129a7ecb962 = self isbadguy();
    self.a.paintime = 0;
    self.a.lastshoottime = 0;
    self.reacttobulletchance = 0.8;
    self.misstime = 0;
    self.a.nodeath = 0;
    self.misstime = 0;
    self.misstimedebounce = 0;
    self.a.disablepain = 0;
    self.laserenabled = 0;
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 0
// Checksum 0x0, Offset: 0x43d
// Size: 0x2c
function function_a2b8f8b0891ee7fe() {
    level.fnanimatedprop_setup = &animatedprop_setup;
    level.fnanimatedprop_startanim = &animatedprop_setanim;
    level.fnanimatedprop_setanim = &animatedprop_setanim;
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 4
// Checksum 0x0, Offset: 0x471
// Size: 0x8a
function animatedprop_setup(modelname, var, origin, angles) {
    assert(isdefined(level.scr_model));
    assert(isdefined(level.scr_model[modelname]));
    prop = spawn("script_model", origin);
    prop.angles = angles;
    prop setmodel(level.scr_model[modelname]);
    self.animated_prop = prop;
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 2
// Checksum 0x0, Offset: 0x503
// Size: 0x71
function animatedprop_setanim(propname, param) {
    assert(isdefined(self.animated_prop));
    assert(isdefined(level.scr_anim) && isdefined(level.scr_anim[propname]));
    propanim = level.scr_anim[propname][param];
    self.animated_prop scriptmodelplayanimdeltamotion(propanim);
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 0
// Checksum 0x0, Offset: 0x57c
// Size: 0xc0
function runpain() {
    if (isdefined(self.fnshouldplaypainanim)) {
        if (![[ self.fnshouldplaypainanim ]]()) {
            return;
        }
    } else if (!shouldplaypainanim()) {
        return;
    }
    if (isdefined(self.damageweapon)) {
        basename = getweaponbasename(self.damageweapon);
        if (basename == "molotov_mp") {
            self._blackboard.isburning = 1;
            if (self.damageyaw > 0) {
                self.burningdirection = "right";
            } else {
                self.burningdirection = "left";
            }
        }
    }
    if (self asmhaspainstate(self.asmname)) {
        self asmevalpaintransition(self.asmname);
    }
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 0
// Checksum 0x0, Offset: 0x644
// Size: 0x128, Type: bool
function shouldplaypainanim() {
    var_392782e59863c89f = 64;
    if (istrue(self.a.disablepain)) {
        return false;
    }
    if (isdefined(self.allowpain) && self.allowpain == 0) {
        return false;
    }
    if (istrue(self.var_a1db58c75f381a55)) {
        return false;
    }
    if (isdefined(self.pathgoalpos) && self pathdisttogoal(1) < var_392782e59863c89f) {
        return false;
    }
    if (isdefined(self.damageweapon)) {
        basename = getweaponbasename(self.damageweapon);
        isthermite = issubstr(basename, "thermite") || isdefined(self.damageweapon.magazine) && issubstr(self.damageweapon.magazine, "boltfire");
        if (isthermite && isdefined(self.a.lastpaintime) && gettime() - self.a.lastpaintime < 2000) {
            return false;
        }
    }
    return true;
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 4
// Checksum 0x0, Offset: 0x775
// Size: 0x34
function asm_handlenotetracks(note, animstate, animindex, animtime) {
    asm_fireevent(self.asmname, note);
}

/#

    // Namespace asm_mp / scripts\asm\asm_mp
    // Params 2
    // Checksum 0x0, Offset: 0x7b1
    // Size: 0x29, Type: dev
    function asm_shoulddeathtransition(asmname, currentstate) {
        assertmsg("someone using ASM " + asmname + " is running the completely obsolete script ASM!");
    }

#/

// Namespace asm_mp / scripts\asm\asm_mp
// Params 1
// Checksum 0x0, Offset: 0x7e2
// Size: 0x125
function asm_settransitionorientmode_transition(orient_mode) {
    switch (orient_mode) {
    case #"hash_96a6a25bd7beed30":
        var_8e1451b5845405b1 = 1024;
        if (actor_is3d()) {
            orient_angles = self.angles;
            if (isdefined(self.node) && distancesquared(self.origin, self.node.origin) < var_8e1451b5845405b1) {
                orient_angles = self function_f134f30c17faeaf(self.node);
            }
            self orientmode("face angle 3d", orient_angles);
        } else {
            yaw = self.angles[1];
            if (isdefined(self.node) && distancesquared(self.origin, self.node.origin) < var_8e1451b5845405b1) {
                yaw = getnodeforwardyaw(self.node);
            }
            self orientmode("face angle", yaw);
        }
        break;
    default:
        self orientmode(orient_mode);
        break;
    }
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 1
// Checksum 0x0, Offset: 0x90f
// Size: 0x16a
function asm_settransitionorientmode_legacy(orient_mode) {
    switch (orient_mode) {
    case #"hash_a6238b3102248f7f":
        pathgoal = self.pathgoalpos;
        if (isdefined(pathgoal)) {
            delta = pathgoal - self.origin;
            dir = vectornormalize(delta);
            face_angles = vectortoangles(dir);
            self orientmode("face angle", face_angles[1]);
            break;
        }
    case #"hash_579a1f64b8b40d31":
        self orientmode("face current");
        break;
    case #"hash_87fdfc09c0f3853e":
    case #"hash_f51882822bb936c8":
        self orientmode(orient_mode);
        break;
    case #"hash_96a6a25bd7beed30":
        yaw = self.angles[1];
        var_8e1451b5845405b1 = 1024;
        if (isdefined(self.node) && distancesquared(self.origin, self.node.origin) < var_8e1451b5845405b1) {
            yaw = getnodeforwardyaw(self.node);
        }
        self orientmode("face angle", yaw);
        break;
    default:
        assertex(0, "Invalid orient_mode passed to ASM_SetTransitionOrientMode_Legacy");
        break;
    }
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 3
// Checksum 0x0, Offset: 0xa81
// Size: 0x24
function asm_getanimindex(asmname, statename, params) {
    return self asmgetanim(asmname, statename, params);
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 3
// Checksum 0x0, Offset: 0xaae
// Size: 0x1b
function asm_playadditiveanimloopstate_mp(asmname, statename, params) {
    
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 2
// Checksum 0x0, Offset: 0xad1
// Size: 0xce
function dooropen(door, t) {
    if (distance2dsquared(self.origin, door.origin) < 16) {
    }
    door scriptabledooropen("away", self.origin);
    if (door scriptabledoorisdouble()) {
        doorlist = getentitylessscriptablearray(undefined, undefined, door.origin, 64);
        foreach (otherdoor in doorlist) {
            if (otherdoor scriptabledoorisdouble()) {
                otherdoor scriptabledooropen("away", self.origin);
            }
        }
    }
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 1
// Checksum 0x0, Offset: 0xba7
// Size: 0x12
function doorclose(door) {
    door scriptabledoorclose();
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 1
// Checksum 0x0, Offset: 0xbc1
// Size: 0xdf, Type: bool
function doorneedstoclose(door) {
    if (istrue(door scriptableisdoor()) && door scriptabledoorisclosed()) {
        return false;
    }
    curstate = door getscriptablepartstate("door", 1);
    assert(isdefined(curstate));
    if (curstate == "closed" || curstate == "setup") {
        return false;
    }
    var_9dfa31b22e1f2822 = self.origin - door.origin;
    var_aba22f9f83213675 = vectortoyaw(var_9dfa31b22e1f2822);
    var_18de4d7536809ac9 = door function_bacd2d0acdf8559e();
    anglediff = angleclamp180(var_aba22f9f83213675 - var_18de4d7536809ac9[1]);
    openangle = angleclamp180(door.angles[1] - var_18de4d7536809ac9[1]);
    return anglediff * openangle > 0;
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 1
// Checksum 0x0, Offset: 0xca9
// Size: 0x3b
function getdoorcenter(door) {
    assert(isdefined(self._blackboard.doorpos));
    return self._blackboard.doorpos;
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 1
// Checksum 0x0, Offset: 0xced
// Size: 0x19, Type: bool
function dooralreadyopen(door) {
    return abs(door scriptabledoorangle()) > 60;
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 1
// Checksum 0x0, Offset: 0xd0f
// Size: 0x21
function asm_animhasfacialoverridemp(a_anim) {
    if (!animisleaf(a_anim)) {
        return 0;
    }
    return animhasnotetrack(a_anim, "facial_override");
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 3
// Checksum 0x0, Offset: 0xd39
// Size: 0x25
function asm_playfacialanim_mp(asmname, statename, animname) {
    self setfacialindexfromasm(asmname, statename, animname);
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 2
// Checksum 0x0, Offset: 0xd66
// Size: 0xa1
function asm_playfacialaniminternalmp(a_anim, a_state) {
    if (!isfacialstateallowed("asm")) {
        return;
    }
    if (isdefined(a_anim) && asm_animhasfacialoverridemp(a_anim)) {
        return;
    }
    headknob = asm_lookupanimfromaliasifexists("knobs", "head");
    if (!isdefined(headknob)) {
        return;
    }
    if (!isdefined(self.asm.facial_state)) {
        self.asm.facial_state = "";
    }
    setfacialstate("asm");
    if (isai(self)) {
        self setfacialindex(a_state);
    }
}

// Namespace asm_mp / scripts\asm\asm_mp
// Params 0
// Checksum 0x0, Offset: 0xe0f
// Size: 0x49
function asm_setanimscripted() {
    self animmode("noclip");
    self orientmode("face angle", self.angles[1]);
    asm_clearfacialanim();
    scripts\asm\asm_bb::bb_setanimscripted();
    self asmsetstate(self.asmname, "animscripted");
}

