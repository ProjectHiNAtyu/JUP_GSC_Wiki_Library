// scripts\engine\scriptable_door.gsc  (68C270174E9CD90F.gscc) (size: 706 Bytes / 0x2c2 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x5ce54717 (1558529815)
// size ...... 706 (0x2c2)
// includes .. 2   (offset: 0x61)
// strings ... 1   (offset: 0x2b6)
// dev strs .. 0   (offset: 0x2c2)
// exports ... 7   (offset: 0x19e)
// cseg ...... 0x71 + 0x12d (0x19e)
// imports ... 0   (offset: 0x2b6)
// animtree1 . 0   (offset: 0x2c2)
// animtree2 . 0   (offset: 0x2c2)
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace scriptable_door;

// Namespace scriptable_door / scripts\engine\scriptable_door
// Params 0
// Checksum 0x0, Offset: 0x79
// Size: 0x1b
function system_init() {
    if (isdefined(level.scriptable_door_initialized)) {
        return;
    }
    level.scriptable_door_initialized = 1;
}

// Namespace scriptable_door / scripts\engine\scriptable_door
// Params 1
// Checksum 0x0, Offset: 0x9c
// Size: 0x15
function function_29ba88e5ce21f3fd(var_8886a1f80d549ed) {
    level.var_be09cad9b5d91063 = var_8886a1f80d549ed;
}

// Namespace scriptable_door / scripts\engine\scriptable_door
// Params 1
// Checksum 0x0, Offset: 0xb9
// Size: 0x15
function function_e37078f3d00ef312(var_90b8bda8e925efa2) {
    level.var_d9a4b8ae6fa68979 = var_90b8bda8e925efa2;
}

// Namespace scriptable_door / scripts\engine\scriptable_door
// Params 1
// Checksum 0x0, Offset: 0xd6
// Size: 0x15
function function_87d7be37d61cbae3(unlockedcallback) {
    level.door_unlocked = unlockedcallback;
}

// Namespace scriptable_door / scripts\engine\scriptable_door
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xf3
// Size: 0x33
function function_9f2d576809f96d2e(instance, player) {
    if (isdefined(level.var_be09cad9b5d91063)) {
        return [[ level.var_be09cad9b5d91063 ]](instance, player);
    }
    return %;
}

// Namespace scriptable_door / scripts\engine\scriptable_door
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x12f
// Size: 0x38
function function_47a1e5b6a230d71f(instance, player, var_85e3240d30e184e7) {
    if (isdefined(level.var_d9a4b8ae6fa68979)) {
        return [[ level.var_d9a4b8ae6fa68979 ]](instance, player, var_85e3240d30e184e7);
    }
    return 0;
}

// Namespace scriptable_door / scripts\engine\scriptable_door
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x170
// Size: 0x2e
function function_7e3b4de29e022cea(instance, player) {
    if (isdefined(level.door_unlocked)) {
        [[ level.door_unlocked ]](instance, player);
    }
}

