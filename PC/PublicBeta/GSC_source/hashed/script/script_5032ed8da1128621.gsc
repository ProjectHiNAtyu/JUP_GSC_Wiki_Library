// script_5032ed8da1128621  (5032ED8DA1128621.gscc) (size: 1627 Bytes / 0x65b)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xa6a6f45 (174747461)
// size ...... 1627 (0x65b)
// includes .. 0   (offset: 0x13f)
// strings ... 6   (offset: 0x607)
// dev strs .. 0   (offset: 0x65b)
// exports ... 5   (offset: 0x473)
// cseg ...... 0x13f + 0x334 (0x473)
// imports ... 7   (offset: 0x53b)
// animtree1 . 0   (offset: 0x65b)
// animtree2 . 0   (offset: 0x65b)
#namespace namespace_7c5bb630aad381e;

// Namespace namespace_7c5bb630aad381e / namespace_241b4ec6ed92abdd
// Params 3
// Checksum 0x0, Offset: 0x147
// Size: 0xe0
function function_200bd098377a8674(group_id, var_449da622a6fe97bd, var_9137b8627fdf4cc8) {
    if (!isdefined(level.var_c51387d07af317b7)) {
        level.var_c51387d07af317b7 = [];
    }
    assertex(!isdefined(level.var_c51387d07af317b7[group_id]), "scriptable group with id [" + group_id + "] has already been initialized");
    group = spawnstruct();
    group.scriptables = [];
    group.start_id = 0;
    group.current_id = 0;
    group.max_count = var_449da622a6fe97bd;
    group.var_35b0b2e8bee60af4 = var_9137b8627fdf4cc8;
    assertex(group.var_35b0b2e8bee60af4 < group.max_count, "scriptable group with id [" + group_id + "] has a larger group_cleanup_batch_size than group_size_max which is not allowed");
    level.var_c51387d07af317b7[group_id] = group;
}

// Namespace namespace_7c5bb630aad381e / namespace_241b4ec6ed92abdd
// Params 1
// Checksum 0x0, Offset: 0x22f
// Size: 0x4b
function function_f8ecd6e02634e682(group_id) {
    if (isdefined(level.var_c51387d07af317b7) && isdefined(level.var_c51387d07af317b7[group_id])) {
        group = level.var_c51387d07af317b7[group_id];
        return group.scriptables;
    }
    return undefined;
}

// Namespace namespace_7c5bb630aad381e / namespace_241b4ec6ed92abdd
// Params 2
// Checksum 0x0, Offset: 0x283
// Size: 0xa2
function function_476b3beecd82dcca(group_id, instance) {
    if (!isdefined(level.var_c51387d07af317b7) || !isdefined(level.var_c51387d07af317b7[group_id])) {
        assertmsg("no scriptable group exists with id [" + group_id + "]. Did you call init_scriptable_group()?");
        return;
    }
    group = level.var_c51387d07af317b7[group_id];
    function_3e036cf2bd9bf933(group);
    instance.var_4a0145502132790a = group.current_id;
    group.scriptables[instance.var_4a0145502132790a] = instance;
    group.current_id++;
}

// Namespace namespace_7c5bb630aad381e / namespace_241b4ec6ed92abdd
// Params 2
// Checksum 0x0, Offset: 0x32d
// Size: 0x71
function function_879ccb6a53e634f5(group_id, instance) {
    if (!isdefined(level.var_c51387d07af317b7[group_id])) {
        assertmsg("no scriptable group exists with id [" + group_id + "]. Did you call init_scriptable_group()?");
        return;
    }
    group = level.var_c51387d07af317b7[group_id];
    group.scriptables[instance.var_4a0145502132790a] = undefined;
    instance.var_4a0145502132790a = undefined;
}

// Namespace namespace_7c5bb630aad381e / namespace_241b4ec6ed92abdd
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x3a6
// Size: 0xcd
function private function_3e036cf2bd9bf933(group) {
    if (group.scriptables.size < group.max_count) {
        return;
    }
    var_d89dfb4bd556862a = 0;
    for (id = group.start_id; id < group.current_id; id++) {
        if (var_d89dfb4bd556862a == group.var_35b0b2e8bee60af4) {
            break;
        }
        instance = group.scriptables[id];
        if (isdefined(instance)) {
            if (isent(instance)) {
                instance delete();
            } else {
                instance notify("death");
                instance freescriptable();
            }
            var_d89dfb4bd556862a++;
        }
        group.scriptables[id] = undefined;
        group.start_id++;
    }
}

