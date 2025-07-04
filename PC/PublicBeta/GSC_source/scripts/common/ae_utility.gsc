// scripts\common\ae_utility.gsc  (247745A526421BA7.gscc) (size: 4206 Bytes / 0x106e / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x35621aae (895621806)
// size ...... 4206 (0x106e)
// includes .. 1   (offset: 0x75)
// strings ... 2   (offset: 0xf4e)
// dev strs .. 21  (offset: 0xf66)
// exports ... 11  (offset: 0xa16)
// cseg ...... 0x7d + 0x999 (0xa16)
// imports ... 22  (offset: 0xbce)
// animtree1 . 0   (offset: 0x106e)
// animtree2 . 0   (offset: 0x106e)
#using scripts\engine\utility;

#namespace ae_utility;

// Namespace ae_utility / scripts\common\ae_utility
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x85
// Size: 0x478
function private function_28026771d64f5484() {
    if (isdefined(level.var_5d0e3c105d8df7e6)) {
        return;
    }
    level.var_5d0e3c105d8df7e6 = [];
    level.var_7003d55e99a01f70 = [];
    level.var_7157035465a73c2d = [];
    level.var_dee8cd959aa57e26 = [];
    level.var_d0ef8c79b6e23661 = [];
    /#
        if (getdvarint(@"hash_e6afce2cf5cf7515", 0) == 1) {
            return;
        }
        if (getdvar(@"hash_742caa13b3c2e685") == "<dev string:x1c>") {
            return;
        }
    #/
    projectscriptbundle = function_811510b694ddd963();
    var_eb8b55369eb4fd41 = getscriptbundle(hashcat(%"hash_1fa266a862bf9762", projectscriptbundle.var_3844c09d81d3c3a9));
    var_7b9e1c88d69bf5ba = getscriptbundle(hashcat(%"hash_65c0e77ca29a053d", projectscriptbundle.var_97801c7bd0f4b8e2));
    /#
        assetmissing = 0;
        if (!isdefined(var_eb8b55369eb4fd41)) {
            println("<dev string:x1e>" + projectscriptbundle.var_3844c09d81d3c3a9);
            assetmissing = 1;
        }
        if (!isdefined(var_7b9e1c88d69bf5ba)) {
            println("<dev string:x48>" + projectscriptbundle.var_97801c7bd0f4b8e2);
            assetmissing = 1;
        }
        if (assetmissing) {
            return;
        }
    #/
    eventlist = var_eb8b55369eb4fd41.eventlist;
    var_1878b2531d72df64 = var_7b9e1c88d69bf5ba.var_1878b2531d72df64;
    for (i = 0; i < eventlist.size; i++) {
        var_87db3db683ff41b3 = getscriptbundle(hashcat(%"hash_6dd4e4d4a6505f3a", eventlist[i].event));
        /#
            if (!isdefined(var_87db3db683ff41b3)) {
                println("<dev string:x71>" + projectscriptbundle.var_3844c09d81d3c3a9 + "<dev string:xa5>" + eventlist[i].event);
                continue;
            }
        #/
        if (var_87db3db683ff41b3.source == "server") {
            level.var_5d0e3c105d8df7e6[var_87db3db683ff41b3.sharedname] = var_87db3db683ff41b3;
            level.var_7003d55e99a01f70[var_87db3db683ff41b3.sharedname] = [];
            eventkeys = var_87db3db683ff41b3.keys;
            for (j = 0; j < eventkeys.size; j++) {
                var_d2de5b69db3b768c = getscriptbundle(hashcat(%"hash_683f777d2122709b", eventkeys[j].key));
                var_cb4e6cbee807f160 = var_d2de5b69db3b768c.sharedname;
                level.var_7003d55e99a01f70[var_87db3db683ff41b3.sharedname] = array_add(level.var_7003d55e99a01f70[var_87db3db683ff41b3.sharedname], var_cb4e6cbee807f160);
                if (!array_contains_key(level.var_7157035465a73c2d, var_cb4e6cbee807f160)) {
                    level.var_7157035465a73c2d[var_cb4e6cbee807f160] = var_d2de5b69db3b768c;
                }
                if (isdefined(var_d2de5b69db3b768c.bitfield) && var_d2de5b69db3b768c.bitfield.size > 0) {
                    level.var_dee8cd959aa57e26[var_cb4e6cbee807f160] = [];
                    for (k = 0; k < var_d2de5b69db3b768c.bitfield.size; k++) {
                        bitname = var_d2de5b69db3b768c.bitfield[k].sharedname;
                        level.var_dee8cd959aa57e26[var_cb4e6cbee807f160][bitname] = var_d2de5b69db3b768c.bitfield[k].bitindex;
                    }
                }
            }
        }
    }
    for (i = 0; i < var_1878b2531d72df64.size; i++) {
        var_1cdcaa1b699683c2 = getscriptbundle(hashcat(%"hash_56154d39395feb69", var_1878b2531d72df64[i].enum));
        /#
            if (!isdefined(var_1cdcaa1b699683c2)) {
                println("<dev string:xa8>" + projectscriptbundle.var_97801c7bd0f4b8e2 + "<dev string:xa5>" + var_1878b2531d72df64[i].enum);
                continue;
            }
        #/
        level.var_d0ef8c79b6e23661[var_1cdcaa1b699683c2.sharedname] = [];
        elements = var_1cdcaa1b699683c2.elements;
        for (j = 0; j < elements.size; j++) {
            element = elements[j];
            var_fc2cdd4a6697adb1 = element.sharedname;
            level.var_d0ef8c79b6e23661[var_1cdcaa1b699683c2.sharedname][var_fc2cdd4a6697adb1] = element.id;
        }
    }
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x505
// Size: 0x56
function private function_67fcbab00c357ee5(eventname) {
    assert(isxhash(eventname));
    function_28026771d64f5484();
    if (array_contains_key(level.var_5d0e3c105d8df7e6, eventname)) {
        return level.var_5d0e3c105d8df7e6[eventname];
    }
    println("<dev string:xdb>" + function_3c8848a3a11b2553(eventname));
    return undefined;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x564
// Size: 0x56
function private function_c74d16ca04067f7e(keyname) {
    assert(isxhash(keyname));
    function_28026771d64f5484();
    if (array_contains_key(level.var_7157035465a73c2d, keyname)) {
        return level.var_7157035465a73c2d[keyname];
    }
    println("<dev string:x100>" + function_3c8848a3a11b2553(keyname));
    return undefined;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x5c3
// Size: 0x4f
function private function_39022444273d9666(eventname) {
    assert(isxhash(eventname));
    if (array_contains_key(level.var_7003d55e99a01f70, eventname)) {
        return level.var_7003d55e99a01f70[eventname];
    }
    println("<dev string:xdb>" + function_3c8848a3a11b2553(eventname));
    return undefined;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x61b
// Size: 0x71
function private function_5ca3bdbcf741615f(eventname, keyname) {
    assert(isxhash(eventname));
    assert(isxhash(keyname));
    var_5314d0f6b84647b8 = 0;
    var_9ff7bcdcbe037c9e = function_39022444273d9666(eventname);
    if (isdefined(var_9ff7bcdcbe037c9e)) {
        keyindex = array_find(var_9ff7bcdcbe037c9e, keyname);
        if (isdefined(keyindex)) {
            var_5314d0f6b84647b8 = 1;
        }
    }
    return var_5314d0f6b84647b8;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 1
// Checksum 0x0, Offset: 0x695
// Size: 0x51
function function_6e2deb013c9ca85e(eventname) {
    assert(isxhash(eventname));
    eventid = undefined;
    var_87db3db683ff41b3 = function_67fcbab00c357ee5(eventname);
    if (isdefined(var_87db3db683ff41b3)) {
        eventid = string(var_87db3db683ff41b3.id);
    }
    return eventid;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 2
// Checksum 0x0, Offset: 0x6ef
// Size: 0x99
function function_d6f771aedba70ce7(eventname, keyname) {
    assert(isxhash(eventname));
    assert(isxhash(keyname));
    function_28026771d64f5484();
    keyid = undefined;
    if (function_5ca3bdbcf741615f(eventname, keyname)) {
        var_4de8dd33e1da2178 = function_c74d16ca04067f7e(keyname);
        if (isdefined(var_4de8dd33e1da2178)) {
            keyid = var_4de8dd33e1da2178.id;
        }
    } else {
        println("<dev string:x123>" + function_3c8848a3a11b2553(keyname) + "<dev string:x135>" + function_3c8848a3a11b2553(eventname));
    }
    return keyid;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 2
// Checksum 0x0, Offset: 0x791
// Size: 0xbf
function function_e2ff8f4b4e94f723(keyname, bitname) {
    assert(isxhash(keyname));
    assert(isxhash(bitname));
    function_28026771d64f5484();
    bitid = undefined;
    if (array_contains_key(level.var_dee8cd959aa57e26, keyname)) {
        if (array_contains_key(level.var_dee8cd959aa57e26[keyname], bitname)) {
            bitid = level.var_dee8cd959aa57e26[keyname][bitname];
        } else {
            println("<dev string:x14d>" + function_3c8848a3a11b2553(bitname) + "<dev string:x15f>" + function_3c8848a3a11b2553(keyname));
        }
    } else {
        println("<dev string:x123>" + function_3c8848a3a11b2553(keyname) + "<dev string:x175>");
    }
    return bitid;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 4
// Checksum 0x0, Offset: 0x859
// Size: 0x98
function function_ec8877db4e73e4e8(eventparams, eventname, keyname, value) {
    assert(isxhash(eventname));
    assert(isxhash(keyname));
    keyid = function_d6f771aedba70ce7(eventname, keyname);
    if (isdefined(keyid)) {
        eventparams[eventparams.size] = keyid;
        eventparams[eventparams.size] = int(value);
    } else {
        println("<dev string:x188>" + function_3c8848a3a11b2553(keyname) + "<dev string:x1a1>" + value + "<dev string:x1a4>" + function_3c8848a3a11b2553(eventname));
    }
    return eventparams;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 2
// Checksum 0x0, Offset: 0x8fa
// Size: 0xb9
function function_b40278e5e468c6c1(var_5d4647843a66d457, elementname) {
    assert(isxhash(var_5d4647843a66d457));
    assert(isxhash(elementname));
    function_28026771d64f5484();
    elementid = undefined;
    if (array_contains_key(level.var_d0ef8c79b6e23661, var_5d4647843a66d457)) {
        if (array_contains_key(level.var_d0ef8c79b6e23661[var_5d4647843a66d457], elementname)) {
            elementid = level.var_d0ef8c79b6e23661[var_5d4647843a66d457][elementname];
        } else {
            println("<dev string:x1b3>" + function_3c8848a3a11b2553(elementname) + "<dev string:x1c6>" + function_3c8848a3a11b2553(var_5d4647843a66d457));
        }
    } else {
        println("<dev string:x1e4>" + function_3c8848a3a11b2553(var_5d4647843a66d457));
    }
    return elementid;
}

// Namespace ae_utility / scripts\common\ae_utility
// Params 1
// Checksum 0x0, Offset: 0x9bc
// Size: 0x59
function function_7042dad035dc176c(stringref) {
    stringhash = function_1823ff50bb28148d("ae_stringref_" + stringref);
    var_947b262137165984 = function_b40278e5e468c6c1(#"stringref", stringhash);
    /#
        if (!isdefined(var_947b262137165984)) {
            println("<dev string:x1ff>" + stringref + "<dev string:x21f>");
        }
    #/
    return var_947b262137165984;
}

