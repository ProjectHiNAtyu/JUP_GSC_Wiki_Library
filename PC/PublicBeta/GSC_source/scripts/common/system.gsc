// scripts\common\system.gsc  (3F51A039C4A1A113.gscc) (size: 3123 Bytes / 0xc33 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x6082ce08 (1619185160)
// size ...... 3123 (0xc33)
// includes .. 1   (offset: 0x79)
// strings ... 1   (offset: 0xbab)
// dev strs .. 8   (offset: 0xbbb)
// exports ... 10  (offset: 0x7d3)
// cseg ...... 0x81 + 0x752 (0x7d3)
// imports ... 17  (offset: 0x963)
// animtree1 . 0   (offset: 0xc33)
// animtree2 . 0   (offset: 0xc33)
#using scripts\engine\utility;

#namespace system;

// Namespace system / scripts\common\system
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x89
// Size: 0x139
function register(str_name, reqs, func_preinit, func_postinit) {
    /#
        print("<dev string:x1c>" + (isxhash(str_name) ? function_3c8848a3a11b2553(str_name) : str_name));
    #/
    level.system_funcs = default_to(level.system_funcs, []);
    if (isdefined(level.system_funcs[str_name])) {
        /#
            if (!(level.system_funcs[str_name].flags & 1)) {
                system_error("<dev string:x2f>" + (isxhash(str_name) ? function_3c8848a3a11b2553(str_name) : str_name) + "<dev string:x38>");
            }
        #/
        return;
    }
    system = {#flags:0, #reqs:reqs, #postfunc:func_postinit, #prefunc:func_preinit};
    system.flags |= isdefined(func_preinit) ? 0 : 2;
    system.flags |= isdefined(func_postinit) ? 0 : 4;
    level.system_funcs[str_name] = system;
}

// Namespace system / scripts\common\system
// Params 1
// Checksum 0x0, Offset: 0x1ca
// Size: 0x6d
function ignore(str_name) {
    /#
        if (isdefined(level.gametype)) {
            system_error("<dev string:x80>");
            return;
        }
    #/
    if (!isdefined(level.system_funcs[str_name])) {
        register(str_name);
    }
    level.system_funcs[str_name].flags |= 1;
}

// Namespace system / scripts\common\system
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x23f
// Size: 0x7b
function function_9c9c8162e507420() {
    if (!isdefined(level.system_funcs)) {
        return;
    }
    foreach (func in level.system_funcs) {
        function_5d3461c8ae875db7(func);
        if (!(func.flags & 8)) {
            thread exec_pre_system(func);
        }
    }
}

// Namespace system / scripts\common\system
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2c2
// Size: 0x92
function function_d9624eb09b844ca1() {
    if (!isdefined(level.system_funcs)) {
        return;
    }
    foreach (func in level.system_funcs) {
        function_59d1eeac261314c4(func);
        if (!(func.flags & 8)) {
            thread exec_post_system(func);
        }
    }
    level.system_funcs = undefined;
    level flag_set("system_postinit_complete");
}

// Namespace system / scripts\common\system
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x35c
// Size: 0x74
function private exec_post_system(func) {
    if (!isdefined(func) || func.flags & 1) {
        return;
    }
    if (!(func.flags & 4)) {
        if (isdefined(func.reqs)) {
            function_59d1eeac261314c4(func);
        }
        func.flags |= 4;
        [[ func.postfunc ]]();
    }
}

// Namespace system / scripts\common\system
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3d8
// Size: 0x1ac
function private function_59d1eeac261314c4(func) {
    /#
        if (!(func.flags & 2 || func.flags & 1)) {
            system_error("<dev string:xba>");
            func.flags |= 8;
            return;
        }
    #/
    if (isdefined(func.reqs)) {
        if (isarray(func.reqs)) {
            foreach (req in func.reqs) {
                /#
                    if (!isdefined(req)) {
                        system_error("<dev string:x123>" + req + "<dev string:x149>");
                        func.flags |= 8;
                        continue;
                    }
                #/
                thread exec_post_system(level.system_funcs[req]);
            }
            return;
        }
        /#
            if (!isdefined(level.system_funcs[func.reqs])) {
                system_error("<dev string:x123>" + (isxhash(func.reqs) ? function_3c8848a3a11b2553(func.reqs) : func.reqs) + "<dev string:x149>");
                func.flags |= 8;
                return;
            }
        #/
        thread exec_post_system(level.system_funcs[func.reqs]);
    }
}

// Namespace system / scripts\common\system
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x58c
// Size: 0x74
function private exec_pre_system(func) {
    if (!isdefined(func) || func.flags & 1) {
        return;
    }
    if (!(func.flags & 2)) {
        if (isdefined(func.reqs)) {
            function_5d3461c8ae875db7(func);
        }
        [[ func.prefunc ]]();
        func.flags |= 2;
    }
}

// Namespace system / scripts\common\system
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x608
// Size: 0x15f
function private function_5d3461c8ae875db7(func) {
    if (isdefined(func.reqs)) {
        if (isarray(func.reqs)) {
            foreach (req in func.reqs) {
                /#
                    if (!isdefined(req)) {
                        system_error("<dev string:x123>" + req + "<dev string:x149>");
                        func.flags |= 8;
                        continue;
                    }
                #/
                thread exec_pre_system(level.system_funcs[req]);
            }
            return;
        }
        /#
            if (!isdefined(level.system_funcs[func.reqs])) {
                system_error("<dev string:x123>" + (isxhash(func.reqs) ? function_3c8848a3a11b2553(func.reqs) : func.reqs) + "<dev string:x149>");
                func.flags |= 8;
                return;
            }
        #/
        thread exec_pre_system(level.system_funcs[func.reqs]);
    }
}

// Namespace system / scripts\common\system
// Params 0
// Checksum 0x0, Offset: 0x76f
// Size: 0xf
function function_3f680182ad0b9ef7() {
    level flag_wait("system_postinit_complete");
}

// Namespace system / scripts\common\system
// Params 1
// Checksum 0x0, Offset: 0x786
// Size: 0x4d
function system_error(msg) {
    /#
        if (getdvarint(@"hash_e6afce2cf5cf7515") != 0 || getdvarint(@"g_connectpaths") != 0) {
            print("<dev string:x14b>" + msg);
            return;
        }
    #/
    assertmsg(msg);
}

