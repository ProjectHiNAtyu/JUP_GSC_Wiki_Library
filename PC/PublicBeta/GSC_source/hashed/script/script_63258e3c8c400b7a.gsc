// script_63258e3c8c400b7a  (63258E3C8C400B7A.gscc) (size: 896 Bytes / 0x380)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x3050e23e (810607166)
// size ...... 896 (0x380)
// includes .. 0   (offset: 0x60)
// strings ... 0   (offset: 0x380)
// dev strs .. 0   (offset: 0x380)
// exports ... 5   (offset: 0x22c)
// cseg ...... 0x60 + 0x1cc (0x22c)
// imports ... 5   (offset: 0x2f4)
// animtree1 . 0   (offset: 0x380)
// animtree2 . 0   (offset: 0x380)
#namespace namespace_e32cfb70bef6259e;

// Namespace namespace_e32cfb70bef6259e / namespace_12d8f8917a83f664
// Params 2
// Checksum 0x0, Offset: 0x68
// Size: 0x95
function function_f245f059d32d19d1(luielemname, assethash) {
    luielem = spawnstruct();
    luielem.menuname = luielemname;
    if (!isdefined(level.var_eae5a4af1df80588)) {
        level.var_eae5a4af1df80588 = [];
    }
    if (!isdefined(level.var_eae5a4af1df80588[assethash])) {
        level.var_eae5a4af1df80588[assethash] = 1;
    }
    luielem.regid = level.var_eae5a4af1df80588[assethash];
    level.var_eae5a4af1df80588[assethash]++;
    luielem.var_b6017d7dcc83fdb6 = 0;
    return luielem;
}

// Namespace namespace_e32cfb70bef6259e / namespace_12d8f8917a83f664
// Params 2
// Checksum 0x0, Offset: 0x106
// Size: 0x53
function function_12e2ab1f2879518a(player, flags) {
    if (!isdefined(flags)) {
        flags = 0;
    }
    luielem = self;
    luielem.var_b6017d7dcc83fdb6 = 1;
    player openluielem(luielem.menuname, luielem.regid, flags);
}

// Namespace namespace_e32cfb70bef6259e / namespace_12d8f8917a83f664
// Params 1
// Checksum 0x0, Offset: 0x161
// Size: 0x41
function function_e98e8bd148625cd0(player) {
    luielem = self;
    luielem.var_b6017d7dcc83fdb6 = 0;
    player closeluielem(luielem.menuname, luielem.regid);
}

// Namespace namespace_e32cfb70bef6259e / namespace_12d8f8917a83f664
// Params 1
// Checksum 0x0, Offset: 0x1aa
// Size: 0x33
function function_23de77f715d51c8b(player) {
    luielem = self;
    return player function_2b845d725b2e174(luielem.menuname, luielem.regid);
}

// Namespace namespace_e32cfb70bef6259e / namespace_12d8f8917a83f664
// Params 3
// Checksum 0x0, Offset: 0x1e6
// Size: 0x46
function function_2c7278ea5ca893e5(player, data, value) {
    luielem = self;
    player function_6cdcaf34ab57e074(luielem.menuname, luielem.regid, data, value);
}

