// script_1857592f79a8c5ba  (1857592F79A8C5BA.gscc) (size: 1835 Bytes / 0x72b / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x10ed5da2 (283991458)
// size ...... 1835 (0x72b)
// includes .. 3   (offset: 0x137)
// strings ... 17  (offset: 0x63f)
// dev strs .. 2   (offset: 0x713)
// exports ... 5   (offset: 0x3e3)
// cseg ...... 0x14f + 0x294 (0x3e3)
// imports ... 14  (offset: 0x4ab)
// animtree1 . 0   (offset: 0x72b)
// animtree2 . 0   (offset: 0x72b)
#using scripts\asm\asm_bb;
#using scripts\asm\cap;
#using scripts\engine\utility;

#namespace cap_use_armor_plate_solo;

// Namespace cap_use_armor_plate_solo / namespace_f8aba4f0ef4843d6
// Params 3
// Checksum 0x0, Offset: 0x157
// Size: 0x109
function function_6c3d4156dec73e1d(asmname, statename, params) {
    stance = scripts\asm\asm_bb::bb_getrequestedstance();
    coverstate = scripts\asm\asm_bb::bb_getrequestedcoverstate();
    animname = "default";
    if (coverstate == "exposed") {
        animname = "exposed_" + stance;
    } else {
        covernode = scripts\asm\asm_bb::bb_getcovernode();
        if (isdefined(covernode)) {
            covertype = covernode.type;
            switch (covertype) {
            case #"hash_cd3ffe799551db82":
                animname = "cover_right_" + stance;
                break;
            case #"hash_e1d8e1adebed5a61":
                animname = "cover_left_" + stance;
                break;
            case #"hash_c3b74422dec48736":
                animname = "cover_crouch";
                break;
            case #"hash_78b110033ccb68b0":
                animname = "cover_stand";
                break;
            }
        }
    }
    armoranim = scripts\asm\cap::function_18e6c36c02a94dbd(statename, animname);
    return armoranim;
}

// Namespace cap_use_armor_plate_solo / namespace_f8aba4f0ef4843d6
// Params 3
// Checksum 0x0, Offset: 0x269
// Size: 0x42
function function_45dc5e082d9a020f(asmname, statename, params) {
    /#
        utility::issharedfuncdefined("<dev string:x1c>", "<dev string:x1f>", 1);
    #/
    utility::function_f3bb4f4911a1beb2("ai", "onUsedArmorPlate");
}

// Namespace cap_use_armor_plate_solo / namespace_f8aba4f0ef4843d6
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x2b3
// Size: 0x3f
function private isrighthand(note) {
    res = 1;
    hand = getsubstr(note, 7);
    if (isdefined(hand) && hand == "left") {
        res = 0;
    }
    return res;
}

// Namespace cap_use_armor_plate_solo / namespace_f8aba4f0ef4843d6
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x2fb
// Size: 0x86
function private function_45dc0311bb854741(note, statename) {
    self endon("death");
    self endon(statename + "_finished");
    scriptablepart = "armor_plate";
    if (isstartstr(note, "attach")) {
        if (isrighthand(note)) {
            self setscriptablepartstate(scriptablepart, "active_right");
        } else {
            self setscriptablepartstate(scriptablepart, "active_left");
        }
        return;
    }
    if (isstartstr(note, "detach")) {
        self setscriptablepartstate(scriptablepart, "default");
    }
}

// Namespace cap_use_armor_plate_solo / namespace_f8aba4f0ef4843d6
// Params 2
// Checksum 0x0, Offset: 0x389
// Size: 0x5a
function function_e05a85a79478670c(note, params) {
    scriptablepart = "armor_plate";
    if (self isscriptable() && self getscriptablehaspart(scriptablepart)) {
        statename = self asmgetcurrentstate(self.asmname);
        function_45dc0311bb854741(note, statename);
    }
}

