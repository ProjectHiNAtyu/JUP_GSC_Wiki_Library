// script_4a6760982b403bad  (4A6760982B403BAD.gscc) (size: 1711 Bytes / 0x6af)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xb35cf7cc (3009214412)
// size ...... 1711 (0x6af)
// includes .. 0   (offset: 0xc9)
// strings ... 7   (offset: 0x657)
// dev strs .. 0   (offset: 0x6af)
// exports ... 9   (offset: 0x463)
// cseg ...... 0xc9 + 0x39a (0x463)
// imports ... 5   (offset: 0x5cb)
// animtree1 . 0   (offset: 0x6af)
// animtree2 . 0   (offset: 0x6af)
#namespace namespace_c45ac99c4997e722;

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 2
// Checksum 0x0, Offset: 0xd1
// Size: 0x60
function function_aacbbe63c26687ae(callback, func) {
    if (!isdefined(level.var_ec2c9117bd4b336b)) {
        level.var_ec2c9117bd4b336b = [];
    }
    if (!isdefined(level.var_ec2c9117bd4b336b[callback])) {
        level.var_ec2c9117bd4b336b[callback] = [];
    }
    level.var_ec2c9117bd4b336b[callback][level.var_ec2c9117bd4b336b[callback].size] = func;
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x139
// Size: 0x2d, Type: bool
function function_9ce94b15ee6758ee(callback) {
    if (!isdefined(level.var_ec2c9117bd4b336b)) {
        return false;
    }
    if (!isdefined(level.var_ec2c9117bd4b336b[callback])) {
        return false;
    }
    return true;
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x16f
// Size: 0x86
function function_80820d6d364c1836(callback, data) {
    if (!function_9ce94b15ee6758ee(callback)) {
        return;
    }
    if (isdefined(data)) {
        for (i = 0; i < level.var_ec2c9117bd4b336b[callback].size; i++) {
            thread [[ level.var_ec2c9117bd4b336b[callback][i] ]](data);
        }
        return;
    }
    for (i = 0; i < level.var_ec2c9117bd4b336b[callback].size; i++) {
        thread [[ level.var_ec2c9117bd4b336b[callback][i] ]]();
    }
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 1
// Checksum 0x0, Offset: 0x1fd
// Size: 0x41
function function_1b15450e092933cf(basetime) {
    timefrom = basetime;
    if (isdefined(level.starttimefrommatchstart)) {
        timefrom -= level.starttimefrommatchstart;
        if (timefrom < 0) {
            timefrom = 0;
        }
    } else {
        timefrom = 0;
    }
    return timefrom;
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 0
// Checksum 0x0, Offset: 0x247
// Size: 0x5c
function function_50989a55805a440b() {
    mountstring = self playermounttype();
    if (isdefined(mountstring)) {
        switch (mountstring) {
        case #"hash_b882c19d3b9f4eb6":
            return "MOUNT_LEFT";
        case #"hash_c00b1399e3e96eeb":
            return "MOUNT_RIGHT";
        case #"hash_d45b94ed344be47e":
            return "MOUNT_TOP";
        }
    }
    return "MOUNT_NONE";
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2ac
// Size: 0x3d, Type: bool
function function_892570944f6b6a2(client) {
    if (istrue(game["isLaunchChunk"])) {
        return false;
    }
    if (!isdefined(client)) {
        return false;
    } else if (isagent(client)) {
        return false;
    } else if (!isplayer(client)) {
        return false;
    }
    return true;
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 1
// Checksum 0x0, Offset: 0x2f2
// Size: 0x85, Type: bool
function function_4b974d822d418a06(data) {
    if (!isdefined(data.player)) {
        return false;
    }
    if (!isdefined(data.player.pers)) {
        return false;
    }
    if (!isdefined(data.player.pers["telemetry"])) {
        return false;
    }
    if (!isdefined(data.player.pers["telemetry"].life)) {
        return false;
    }
    return true;
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 0
// Checksum 0x0, Offset: 0x380
// Size: 0xaa
function get_objective_type() {
    objectivetype = "hub";
    if (isdefined(level.active_objectives_string)) {
        objectivetype = level.active_objectives_string;
    } else if (isdefined(level.contentmanager) && isdefined(level.contentmanager.activeobjective)) {
        instance = level.contentmanager.activeobjective;
        location = instance.targetname;
        if (isdefined(location)) {
            objectivetype = location;
        }
    } else if (isdefined(level.lastobjective)) {
        objectivetype = level.lastobjective;
    }
    return objectivetype;
}

// Namespace namespace_c45ac99c4997e722 / namespace_de6e6777b0937bd7
// Params 1
// Checksum 0x0, Offset: 0x433
// Size: 0x30
function function_ff48d255c865806(client) {
    if (function_892570944f6b6a2(client)) {
        return (client.clientid < level.maxlogclients);
    }
    return 0;
}

