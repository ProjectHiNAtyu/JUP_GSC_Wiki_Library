// scripts\common\callbacks.gsc  (4C770A9A4AD7659C.gscc) (size: 2947 Bytes / 0xb83 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x60ef0af9 (1626278649)
// size ...... 2947 (0xb83)
// includes .. 1   (offset: 0x12f)
// strings ... 5   (offset: 0xb3b)
// dev strs .. 1   (offset: 0xb77)
// exports ... 10  (offset: 0x75f)
// cseg ...... 0x137 + 0x628 (0x75f)
// imports ... 18  (offset: 0x8ef)
// animtree1 . 0   (offset: 0xb83)
// animtree2 . 0   (offset: 0xb83)
#using scripts\engine\utility;

#namespace callback;

// Namespace callback / scripts\common\callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x13f
// Size: 0xad
function callback(event, params) {
    if (!isdefined(params)) {
        params = spawnstruct();
    }
    assertex(isstruct(params), "Callbacks should always use a struct to pass parameters.");
    function_f3847410a67a3098(level, event, params);
    if (self != level) {
        function_f3847410a67a3098(self, event, params);
        if (isdefined(self.var_8d44c0f367e8d9c0)) {
            foreach (var_58ea2dd09081c395 in self.var_8d44c0f367e8d9c0) {
                function_f3847410a67a3098(var_58ea2dd09081c395, event, params);
            }
        }
    }
}

// Namespace callback / scripts\common\callbacks
// Params 2
// Checksum 0x0, Offset: 0x1f4
// Size: 0x6f
function function_1ad95d714a56c8fa(event, params) {
    ais = getaiarray();
    foreach (ai in ais) {
        ai function_f3847410a67a3098(ai, event, params);
    }
}

// Namespace callback / scripts\common\callbacks
// Params 2
// Checksum 0x0, Offset: 0x26b
// Size: 0x7e
function function_ca1462b402444dd6(event, params) {
    players = level.players;
    foreach (player in players) {
        player function_f3847410a67a3098(level, event, params);
        player function_f3847410a67a3098(player, event, params);
    }
}

// Namespace callback / scripts\common\callbacks
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x2f1
// Size: 0xfd
function private function_f3847410a67a3098(ent, event, params) {
    callbacks = undefined;
    if (isdefined(ent.callbacks)) {
        callbacks = ent.callbacks[event];
    }
    if (isdefined(callbacks)) {
        for (i = 0; i < callbacks.size; i++) {
            callback_fields = callbacks[i];
            if (!isarray(callback_fields)) {
                continue;
            }
            callback = callback_fields[0];
            assert(isfunction(callback));
            if (!isfunction(callback)) {
                return;
            }
            var_732ad454c46f92fd = callback_fields[1];
            if (isdefined(var_732ad454c46f92fd)) {
                self thread [[ callback ]](params, var_732ad454c46f92fd);
                continue;
            }
            self thread [[ callback ]](params);
        }
        if (isdefined(ent.callbacks)) {
            ent.callbacks[event] = function_816601f7d8ca5b92(ent.callbacks[event]);
        }
    }
}

// Namespace callback / scripts\common\callbacks
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3f6
// Size: 0xb2
function add(event, func, var_732ad454c46f92fd) {
    assertex(isfunction(func), "Parameter for event '" + (isxhash(event) ? function_3c8848a3a11b2553(event) : event) + "' is not a function pointer.");
    if (!isfunction(func)) {
        return;
    }
    assertex(isdefined(event), "Trying to set a callback on an undefined event.");
    if (!isdefined(self.callbacks) || !isdefined(self.callbacks[event])) {
        self.callbacks[event] = [];
    }
    self.callbacks[event][self.callbacks[event].size] = [func, var_732ad454c46f92fd];
}

// Namespace callback / scripts\common\callbacks
// Params 3
// Checksum 0x0, Offset: 0x4b0
// Size: 0x106
function remove(event, func, instant) {
    if (!isdefined(self.callbacks)) {
        return;
    }
    assertex(isdefined(event), "Trying to remove a callback on an undefined event.");
    if (isdefined(func) && isxhash(func) && func == #"all") {
        self.callbacks[event] = [];
        return;
    }
    if (!isdefined(self.callbacks[event])) {
        return;
    }
    foreach (func_group in self.callbacks[event]) {
        if (isarray(func_group) && func_group[0] == func) {
            self.callbacks[event][index] = 0;
            break;
        }
    }
    if (istrue(instant)) {
        self.callbacks[event] = function_816601f7d8ca5b92(self.callbacks[event]);
    }
}

// Namespace callback / scripts\common\callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x5be
// Size: 0x4d
function function_e7fddda1f0b46b5e(var_fdf147e36d51ad1b) {
    if (!isdefined(level.var_cc6a7adcd61d2d2)) {
        level.var_cc6a7adcd61d2d2 = [];
    }
    if (!isdefined(level.var_cc6a7adcd61d2d2[var_fdf147e36d51ad1b])) {
        level.var_cc6a7adcd61d2d2[var_fdf147e36d51ad1b] = spawnstruct();
    }
    return level.var_cc6a7adcd61d2d2[var_fdf147e36d51ad1b];
}

// Namespace callback / scripts\common\callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x614
// Size: 0x5c
function function_d4f1fdfa332469ec(var_fdf147e36d51ad1b) {
    assertex(self != level, "<dev string:x1c>");
    var_78db940d2989f211 = function_e7fddda1f0b46b5e(var_fdf147e36d51ad1b);
    if (!isdefined(self.var_8d44c0f367e8d9c0) || !isdefined(self.var_8d44c0f367e8d9c0[var_fdf147e36d51ad1b])) {
        self.var_8d44c0f367e8d9c0[var_fdf147e36d51ad1b] = var_78db940d2989f211;
    }
}

// Namespace callback / scripts\common\callbacks
// Params 1
// Checksum 0x0, Offset: 0x678
// Size: 0x6b, Type: bool
function function_75a459cce09d9f29(var_fdf147e36d51ad1b) {
    return self != level && isdefined(var_fdf147e36d51ad1b) && isdefined(level.var_cc6a7adcd61d2d2) && isdefined(level.var_cc6a7adcd61d2d2[var_fdf147e36d51ad1b]) && isdefined(self.var_8d44c0f367e8d9c0) && isdefined(self.var_8d44c0f367e8d9c0[var_fdf147e36d51ad1b]) && self.var_8d44c0f367e8d9c0[var_fdf147e36d51ad1b] == level.var_cc6a7adcd61d2d2[var_fdf147e36d51ad1b];
}

// Namespace callback / scripts\common\callbacks
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6ec
// Size: 0x72
function private function_816601f7d8ca5b92(callbacks) {
    result = [];
    foreach (cb in callbacks) {
        if (isint(cb) && cb == 0) {
            continue;
        }
        result[result.size] = cb;
    }
    return result;
}

