// scripts\common\interactive.gsc  (6318547A70575AE4.gscc) (size: 888 Bytes / 0x378 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x34ed07e1 (887949281)
// size ...... 888 (0x378)
// includes .. 1   (offset: 0x60)
// strings ... 0   (offset: 0x378)
// dev strs .. 0   (offset: 0x378)
// exports ... 6   (offset: 0x250)
// cseg ...... 0x68 + 0x1e8 (0x250)
// imports ... 2   (offset: 0x340)
// animtree1 . 0   (offset: 0x378)
// animtree2 . 0   (offset: 0x378)
#using scripts\engine\utility;

#namespace interactive;

// Namespace interactive / scripts\common\interactive
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x70
// Size: 0x66
function entity_used(entity, player) {
    if (!isdefined(entity.interactive_used_func_id)) {
        return;
    }
    if (!isdefined(level.interactive_used_funcs)) {
        return;
    }
    if (!isdefined(level.interactive_used_funcs[entity.interactive_used_func_id])) {
        return;
    }
    thread [[ level.interactive_used_funcs[entity.interactive_used_func_id] ]](entity, player);
}

// Namespace interactive / scripts\common\interactive
// Params 2
// Checksum 0x0, Offset: 0xde
// Size: 0x80
function interactive_addusedcallback(usedcallback, id) {
    if (!isdefined(level.interactive_used_funcs)) {
        level.interactive_used_funcs = [];
        level.interactive_used_funcs_unique_id = 0;
    }
    if (!isdefined(id)) {
        while (isdefined(level.interactive_used_funcs[level.interactive_used_funcs_unique_id])) {
            level.interactive_used_funcs_unique_id++;
        }
        id = level.interactive_used_funcs_unique_id;
        level.interactive_used_funcs_unique_id++;
    }
    level.interactive_used_funcs[id] = usedcallback;
    return id;
}

// Namespace interactive / scripts\common\interactive
// Params 1
// Checksum 0x0, Offset: 0x167
// Size: 0x15
function interactive_addusedcallbacktoentity(id) {
    self.interactive_used_func_id = id;
}

// Namespace interactive / scripts\common\interactive
// Params 0
// Checksum 0x0, Offset: 0x184
// Size: 0xc
function interactive_removeusedcallbackfromentity() {
    self.interactive_used_func_id = undefined;
}

// Namespace interactive / scripts\common\interactive
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x198
// Size: 0x6e
function function_366418be14db1a9f(usable, player) {
    if (isdefined(usable.var_d19dfa5205fce031)) {
        result = [[ usable.var_d19dfa5205fce031 ]](usable, player);
        assert(isstruct(result) && isdefined(result.type) && isdefined(result.string));
        return result;
    }
    return undefined;
}

// Namespace interactive / scripts\common\interactive
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x20f
// Size: 0x40
function function_14ec0a1f46d4d2d0(usable, player) {
    if (isdefined(usable.var_ee69e6a611184cfb)) {
        result = [[ usable.var_ee69e6a611184cfb ]](usable, player);
        return result;
    }
    return 1;
}

