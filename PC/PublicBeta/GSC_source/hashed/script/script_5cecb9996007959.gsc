// script_5cecb9996007959  (5CECB9996007959.gscc) (size: 2212 Bytes / 0x8a4 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x164092f (23333167)
// size ...... 2212 (0x8a4)
// includes .. 3   (offset: 0x179)
// strings ... 12  (offset: 0x7f0)
// dev strs .. 2   (offset: 0x88c)
// exports ... 7   (offset: 0x454)
// cseg ...... 0x191 + 0x2c3 (0x454)
// imports ... 23  (offset: 0x56c)
// animtree1 . 0   (offset: 0x8a4)
// animtree2 . 0   (offset: 0x8a4)
#using scripts\asm\asm;
#using scripts\asm\asm_bb;
#using scripts\common\cap;

#namespace use_armor_plate_solo;

// Namespace use_armor_plate_solo / namespace_6930af0ec0bf4a3f
// Params 1
// Checksum 0x0, Offset: 0x199
// Size: 0x7e
function getfunction(funcid) {
    switch (funcid) {
    case #"hash_dab0d83df51da4d":
        return &function_3dbd361f74b442f9;
    case #"hash_722d767fd6d40f56":
        return &function_a157fbbc31d9eb1a;
    case #"hash_902f9e79d5e57c83":
        return &oneventreceived;
    case #"hash_1637227a26307eb5":
        return &setstationary;
    case #"hash_6279e013ab5c4fdd":
        return &usearmorplate;
    }
    assertmsg("Missing function pointer for " + funcid);
}

// Namespace use_armor_plate_solo / namespace_6930af0ec0bf4a3f
// Params 1
// Checksum 0x0, Offset: 0x21f
// Size: 0xb
function function_3dbd361f74b442f9(interactionid) {
    
}

// Namespace use_armor_plate_solo / namespace_6930af0ec0bf4a3f
// Params 1
// Checksum 0x0, Offset: 0x232
// Size: 0xa0
function function_a157fbbc31d9eb1a(interactionid) {
    self clearbtgoal(1);
    self notify("endusearmorplate");
    /#
        if (isagent(self)) {
            assertex(self isscriptable(), "<dev string:x1c>" + self.agent_type + "<dev string:x29>");
        }
    #/
    scriptablepart = "armor_plate";
    if (self isscriptable() && self getscriptablehaspart(scriptablepart)) {
        self setscriptablepartstate(scriptablepart, "default");
    }
    if (isalive(self) && self.asmname == "cap_use_armor_plate_solo") {
        scripts\common\cap::cap_exit();
    }
}

// Namespace use_armor_plate_solo / namespace_6930af0ec0bf4a3f
// Params 3
// Checksum 0x0, Offset: 0x2da
// Size: 0x65, Type: bool
function oneventreceived(receiver, info, origin) {
    if (info == "focused_on") {
        distsq = distancesquared(receiver.origin, origin);
        breakoutdist = 150;
        if (distsq < breakoutdist * breakoutdist) {
            self notify("endusearmorplate");
            return true;
        }
        return true;
    }
    return false;
}

// Namespace use_armor_plate_solo / namespace_6930af0ec0bf4a3f
// Params 2
// Checksum 0x0, Offset: 0x348
// Size: 0x28
function setstationary(statename, params) {
    self function_e64ea2b4e79c4b74(1);
    self setbtgoalradius(1, params[0]);
}

// Namespace use_armor_plate_solo / namespace_6930af0ec0bf4a3f
// Params 2
// Checksum 0x0, Offset: 0x378
// Size: 0x71
function usearmorplate(statename, params) {
    self endon("death");
    self endon("endusearmorplate");
    capname = "cap_use_armor_plate_solo";
    if (self.asmname != capname) {
        scripts\common\cap::cap_start(capname, "caps/interactions/cap_use_armor_plate_solo");
    }
    function_30b70873a0937989("Using Armor Plate!");
    self waittill("cap_exit_completed");
    asm_fireephemeralevent("use_armor_plate", "end");
}

// Namespace use_armor_plate_solo / namespace_6930af0ec0bf4a3f
// Params 1
// Checksum 0x0, Offset: 0x3f1
// Size: 0x63
function function_30b70873a0937989(var_22e9090a351646e9) {
    debug = getdvarint(@"hash_3e267ec6e066e2b", 0);
    if (istrue(debug)) {
        /#
            print3d(self.origin + (0, 0, 80), var_22e9090a351646e9, (1, 1, 1), 1, 0.8, 1, 1);
        #/
    }
}

