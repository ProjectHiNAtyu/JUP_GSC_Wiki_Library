// script_5a4a5d9ba343ff8f  (5A4A5D9BA343FF8F.gscc) (size: 2723 Bytes / 0xaa3 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xb9bdd138 (3116224824)
// size ...... 2723 (0xaa3)
// includes .. 2   (offset: 0x83)
// strings ... 2   (offset: 0xa3f)
// dev strs .. 6   (offset: 0xa5b)
// exports ... 7   (offset: 0x6d3)
// cseg ...... 0x93 + 0x640 (0x6d3)
// imports ... 19  (offset: 0x7eb)
// animtree1 . 0   (offset: 0xaa3)
// animtree2 . 0   (offset: 0xaa3)
#using scripts\common\callbacks;
#using scripts\engine\utility;

#namespace status_effects;

/#

    // Namespace status_effects / namespace_c56b0b75fd51eab1
    // Params 0
    // Checksum 0x0, Offset: 0x9b
    // Size: 0xe, Type: dev
    function init_status_effects() {
        level thread function_a29b12dda2453832();
    }

#/

// Namespace status_effects / namespace_c56b0b75fd51eab1
// Params 1
// Checksum 0x0, Offset: 0xb1
// Size: 0x37, Type: bool
function function_8ce7894f1a52fb77(effect_type) {
    return isdefined(self.status_effects) && isdefined(self.status_effects[effect_type]) && self.status_effects[effect_type].size > 0;
}

// Namespace status_effects / namespace_c56b0b75fd51eab1
// Params 5
// Checksum 0x0, Offset: 0xf1
// Size: 0xa0
function function_108973a907c11ca7(effect_type, durations, unique_id, start_func, end_func) {
    base_effect = spawnstruct();
    base_effect.effect_type = effect_type;
    base_effect.unique_id = unique_id;
    base_effect.durations = durations;
    base_effect.start_func = start_func;
    base_effect.end_func = end_func;
    base_effect.end_time = gettime() + function_a5b14435e3229bed(base_effect.durations);
    return base_effect;
}

// Namespace status_effects / namespace_c56b0b75fd51eab1
// Params 1
// Checksum 0x0, Offset: 0x19a
// Size: 0x14d, Type: bool
function start_effect(effect) {
    self.status_effects = default_to(self.status_effects, []);
    self.status_effects[effect.effect_type] = default_to(self.status_effects[effect.effect_type], []);
    if (isdefined(effect.unique_id)) {
        foreach (active_effect in self.status_effects[effect.effect_type]) {
            if (isdefined(active_effect.unique_id) && effect.unique_id == active_effect.unique_id) {
                active_effect.end_time = -1;
            }
        }
    }
    self.status_effects[effect.effect_type] = array_add(self.status_effects[effect.effect_type], effect);
    if (isdefined(effect.start_func)) {
        self [[ effect.start_func ]](effect);
    }
    thread effects_monitor();
    return true;
}

// Namespace status_effects / namespace_c56b0b75fd51eab1
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x2f0
// Size: 0x18b
function private effects_monitor() {
    self notify("start_status_effects_monitor");
    self endon("start_status_effects_monitor");
    self endon("death");
    if (!isdefined(self.status_effects)) {
        println("<dev string:x1c>");
        return;
    }
    num_effects = self.status_effects.size;
    while (num_effects > 0) {
        now = gettime();
        expired_effects = [];
        foreach (effects in self.status_effects) {
            active_effects = [];
            foreach (effect in effects) {
                if (now < effect.end_time) {
                    active_effects = array_add(active_effects, effect);
                    continue;
                }
                expired_effects = array_add(expired_effects, effect);
            }
            self.status_effects[effect_type] = active_effects;
        }
        foreach (effect in expired_effects) {
            end_effect(effect);
        }
        num_effects = self.status_effects.size;
        waitframe();
    }
}

// Namespace status_effects / namespace_c56b0b75fd51eab1
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x483
// Size: 0x2a
function private end_effect(effect) {
    if (isdefined(effect.end_func)) {
        self [[ effect.end_func ]](effect);
    }
}

/#

    // Namespace status_effects / namespace_c56b0b75fd51eab1
    // Params 0, eflags: 0x4
    // Checksum 0x0, Offset: 0x4b5
    // Size: 0x21e, Type: dev
    function private function_a29b12dda2453832() {
        level endon("<dev string:x4a>");
        while (true) {
            entity_num = getdvarint(@"hash_f429fe6098c1896a", -1);
            entity = getentbynum(entity_num);
            if (isdefined(entity)) {
                now = gettime();
                print_x = 400;
                print_y = 300;
                printtoscreen2d(print_x, print_y, "<dev string:x55>");
                if (isdefined(entity.status_effects)) {
                    foreach (effects in entity.status_effects) {
                        if (effects.size == 0) {
                            continue;
                        }
                        unique_ids = [];
                        remainingms = 0;
                        foreach (effect in effects) {
                            var_67e76145ecffd7cb = effect.end_time - now;
                            if (var_67e76145ecffd7cb > remainingms) {
                                remainingms = var_67e76145ecffd7cb;
                            }
                            if (isdefined(effect.unique_id)) {
                                unique_ids = function_6d6af8144a5131f1(unique_ids, effect.unique_id);
                            }
                        }
                        print_y += 20;
                        var_72d6d5843877426 = effect_type + "<dev string:x64>" + effects.size + "<dev string:x67>" + function_c89ed1840c8d0f0f(remainingms) + "<dev string:x6a>";
                        printtoscreen2d(print_x, print_y, var_72d6d5843877426);
                        foreach (id in unique_ids) {
                            print_y += 20;
                            printtoscreen2d(print_x + 10, print_y, id);
                        }
                    }
                }
            }
            waitframe();
        }
    }

#/
