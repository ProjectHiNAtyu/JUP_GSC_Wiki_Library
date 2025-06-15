// script_418c4d4a7180cdce  (418C4D4A7180CDCE.gscc) (size: 10667 Bytes / 0x29ab / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xfdca2ad0 (4257884880)
// size ...... 10667 (0x29ab)
// includes .. 9   (offset: 0x395)
// strings ... 67  (offset: 0x25cb)
// dev strs .. 3   (offset: 0x297f)
// exports ... 30  (offset: 0x1917)
// cseg ...... 0x3dd + 0x153a (0x1917)
// imports ... 66  (offset: 0x1dc7)
// animtree1 . 0   (offset: 0x29ab)
// animtree2 . 0   (offset: 0x29ab)
#using script_16ea1b94f0f381b3;
#using scripts\common\devgui;
#using scripts\common\utility;
#using scripts\common\values;
#using scripts\engine\math;
#using scripts\engine\trace;
#using scripts\engine\utility;
#using scripts\mp\spawnlogic;
#using scripts\mp\utility\game;

#namespace smoke;

// Namespace smoke / namespace_1676ee684fdab294
// Params 1
// Checksum 0x0, Offset: 0x3e5
// Size: 0x15d
function function_d63760cb7c36587(smoke_level) {
    level notify("smoke_test_monitor_singelton");
    level endon("smoke_test_monitor_singelton");
    while (!function_464c7c47f88f997f()) {
        wait 0.1;
    }
    while (true) {
        setdvar(@"hash_f231356c584a015b", 0);
        var_4516a055a41b717e = getdvarint(@"hash_b5b5a0b219992b30", 0);
        if (var_4516a055a41b717e > 0) {
            if (!istrue(level.var_542e2866de23065d)) {
                function_ee2a48ffc8fda458();
                [[ level.var_6492adee56d19067.trace ]](["DVAR_SETTING:", var_4516a055a41b717e, "GameType:", getgametype()]);
                switch (var_4516a055a41b717e) {
                case 1:
                    [[ level.var_6492adee56d19067.trace ]]("case 1");
                    thread smoke_level_1();
                    break;
                case 2:
                    [[ level.var_6492adee56d19067.trace ]]("case 2");
                    thread smoke_level_2();
                    break;
                default:
                    [[ level.var_6492adee56d19067.trace ]]("default");
                    break;
                }
            }
        }
        setdvar(@"hash_b5b5a0b219992b30", 0);
        wait 1;
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x54a
// Size: 0x41
function private function_ee2a48ffc8fda458() {
    level.var_542e2866de23065d = 1;
    level.var_3d45d7bf2015e545 = 0;
    level.var_6492adee56d19067 = function_b6dccdc08d6a79cf(1, 0);
    level.var_d267f6e95a74866d = 0;
    level.testparams = spawnstruct();
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x593
// Size: 0x32, Type: bool
function private function_464c7c47f88f997f() {
    return isdefined(level.maxplayercount) && scripts\mp\utility\game::gamehasstarted() && isdefined(level.players) && isdefined(level.player);
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x5ce
// Size: 0x24
function private smoke_getpersstat(stat) {
    if (isdefined(self.pers)) {
        return self.pers[stat];
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x5fa
// Size: 0x33
function private function_63406a3b87272a0f(stat, value) {
    if (isdefined(self.pers) && isdefined(value)) {
        self.pers[stat] = value;
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x635
// Size: 0x7c, Type: bool
function private function_aadecbc412d792b5() {
    kills = level.player smoke_getpersstat("kills");
    if (kills >= 30) {
        [[ level.var_6492adee56d19067.debug ]]("Kills reached:" + kills);
        level.player function_63406a3b87272a0f("kills", 0);
        return true;
    }
    [[ level.var_6492adee56d19067.debug ]]("Kills not reached:" + kills);
    return false;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x6ba
// Size: 0x1a8
function private function_3ef591377c2b6fd1(testname) {
    if (isdefined(level.testparams) && isdefined(testname)) {
        level.testparams.dt = getdatetime();
        level.testparams.st = gettime();
        level.testparams.event = "TEST_START";
        level.testparams.testname = "SMOKE_TEST: " + testname;
        level.testparams.result = "INIT";
        level.testparams.duration = 0;
        level.testparams.build_id = getdvar(@"hash_444503022bc062df", "0");
        level.testparams.test_session_id = getdvar(@"hash_79ed55a7f6c778a4", "0");
    }
    [[ level.var_6492adee56d19067.info ]](function_4cafad2d016399da());
    dlog_recordevent("dlog_event_automation_smoketest_start", ["test_name", level.testparams.testname, "test_additional_info", level.testparams.event, "test_session_id", level.testparams.test_session_id, "build_id", level.testparams.build_id]);
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x86a
// Size: 0x16d
function private function_a48370b9ea15e2f0(status) {
    if (isdefined(level.testparams)) {
        level.testparams.et = gettime();
        level.testparams.result = status;
        level.testparams.event = "TEST_END";
        level.testparams.duration = int(function_c89ed1840c8d0f0f(level.testparams.et - level.testparams.st));
    }
    [[ level.var_6492adee56d19067.info ]](function_4cafad2d016399da());
    dlog_recordevent("dlog_event_automation_smoketest_end", ["test_name", level.testparams.testname, "test_duration_seconds", level.testparams.duration, "test_result", level.testparams.result, "test_additional_info", level.testparams.event, "test_session_id", level.testparams.test_session_id]);
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x9df
// Size: 0x11c
function private function_4cafad2d016399da() {
    if (isdefined(level.testparams)) {
        teststr = string_join(level.testparams.dt, "_") + "|" + level.testparams.event + "|" + level.testparams.testname + "|" + level.testparams.result + "|" + "Error:" + level.var_6492adee56d19067.var_31733074dccca56a + "|" + "Warn:" + level.var_6492adee56d19067.var_d50bc0d177cb0ea2 + "|" + level.testparams.build_id + "|" + level.testparams.test_session_id + "|" + level.testparams.duration + "s";
        return teststr;
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 3
// Checksum 0x0, Offset: 0xb03
// Size: 0xa7, Type: bool
function function_243de27a2b9ecbbe(origin, angles, dist) {
    if (!function_464c7c47f88f997f()) {
        return false;
    }
    dist = ter_op(isdefined(dist), dist, 80);
    if (isdefined(origin) && isdefined(angles) && isdefined(dist)) {
        castend = origin + angles * dist;
        trace = ray_trace(origin, castend);
        if (isdefined(trace) && ter_op(trace["hittype"] == "hittype_none", 1, 0)) {
            [[ level.var_6492adee56d19067.trace ]](trace["hittype"]);
            return true;
        }
    }
    return false;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 2
// Checksum 0x0, Offset: 0xbb3
// Size: 0x4a
function function_e8bd86d0c0f85749(var_6c3200050ed240a2, wait_time) {
    if (isdefined(self) && isdefined(var_6c3200050ed240a2)) {
        wait_time = default_to(wait_time, 2);
        [[ level.var_6492adee56d19067.trace ]](var_6c3200050ed240a2);
        self botpressbutton(var_6c3200050ed240a2);
        wait wait_time;
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 2
// Checksum 0x0, Offset: 0xc05
// Size: 0x4a
function function_852d53e299c34e9c(stance, wait_time) {
    if (isdefined(self) && isdefined(stance)) {
        wait_time = default_to(wait_time, 2);
        [[ level.var_6492adee56d19067.trace ]](stance);
        self botsetstance(stance);
        wait wait_time;
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xc57
// Size: 0x2b3
function private smoke_level_1() {
    self endon("disconnect");
    level notify("smoke_singleton");
    level endon("smoke_singleton");
    while (!function_464c7c47f88f997f()) {
        wait 0.05;
    }
    dist = 200;
    player = getentarray("player", "classname")[0];
    if (!function_243de27a2b9ecbbe(player.origin, anglestoforward(player.angles), dist)) {
        [[ level.var_6492adee56d19067.warn ]]("Spawning bot with ray collision from players forward angles.");
    }
    spawndata = function_afc83012117903d9(player, dist);
    level thread [[ level.bot_funcs["bots_spawn"] ]](1, player.team, undefined, undefined, undefined, undefined, spawndata);
    bot = undefined;
    while (!function_1c00590758e63257()) {
        wait 2;
        if (!isdefined(bot)) {
            players = getentarray("player", "classname");
            for (index = 0; index < players.size; index++) {
                player = players[index];
                if (isbot(player) && isalive(player)) {
                    bot = player;
                    break;
                }
            }
        }
        if (isdefined(bot)) {
            function_3ef591377c2b6fd1("SMOKE_LEVEL_1");
            bot.ignoreall = 1;
            bot botsetflag("disable_movement", 1);
            bot botsetflag("disable_random_goal", 1);
            bot function_e8bd86d0c0f85749("jump");
            bot function_e8bd86d0c0f85749("melee");
            bot function_e8bd86d0c0f85749("attack");
            bot function_e8bd86d0c0f85749("lethal");
            bot function_e8bd86d0c0f85749("tactical");
            bot function_852d53e299c34e9c("crouch");
            bot function_852d53e299c34e9c("prone");
            bot function_e8bd86d0c0f85749("attack");
            bot function_852d53e299c34e9c("crouch");
            bot function_852d53e299c34e9c("stand");
            [[ level.var_6492adee56d19067.trace ]]("ads");
            bot botpressbutton("ads", 0.5);
            wait 2;
            [[ level.var_6492adee56d19067.trace ]]("death/respawn");
            value = level.player dodamage(level.player.health + 100, level.player.origin);
            wait 2;
            function_a48370b9ea15e2f0("PASS");
            level.var_3d45d7bf2015e545 += 1;
        }
        function_7d933ec423d9d4f5();
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xf12
// Size: 0x155
function private smoke_level_2() {
    self endon("disconnect");
    level notify("smoke_singleton");
    level endon("smoke_singleton");
    function_3ef591377c2b6fd1("SMOKE_LEVEL_2");
    setdvar(@"player_sustainammo", 1);
    function_9fc451f8cce8fc98(10);
    while (!function_aadecbc412d792b5()) {
        [[ level.var_6492adee56d19067.trace ]]("TEST_START" + ":move_bots");
        function_6e02da7fde448d84();
        wait 0.25;
        level.player setplayerangles((0, 348, 0));
        wait 0.25;
        [[ level.var_6492adee56d19067.trace ]]("TEST_START" + ":StartForcedFire");
        level.player startforcedfire();
        wait 2;
        level.player stopforcedfire();
        wait 0.25;
        [[ level.var_6492adee56d19067.trace ]]("Kill Count:" + level.player smoke_getpersstat("kills"));
    }
    level.var_3d45d7bf2015e545 += 1;
    function_a48370b9ea15e2f0("PASS" + " SMOKE_BOTS_KILLS:" + level.player smoke_getpersstat("kills"));
    function_7d933ec423d9d4f5();
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x106f
// Size: 0x26
function private function_7d933ec423d9d4f5() {
    if (function_1c00590758e63257()) {
        level.var_542e2866de23065d = 0;
        setdvar(@"hash_f231356c584a015b", 1);
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x109d
// Size: 0x8
function private function_1c00590758e63257() {
    return function_59399abfaa25ec21();
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x10ae
// Size: 0xe, Type: bool
function private function_59399abfaa25ec21() {
    return level.var_3d45d7bf2015e545 == 1;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 3, eflags: 0x4
// Checksum 0x0, Offset: 0x10c5
// Size: 0x13d
function private function_9fc451f8cce8fc98(var_b7891bdcdcda7208, botteam, spawndata) {
    self endon("disconnect");
    while (!function_464c7c47f88f997f()) {
        wait 0.05;
    }
    if (!isdefined(var_b7891bdcdcda7208)) {
        var_b7891bdcdcda7208 = 1;
    }
    if (!isdefined(botteam)) {
        switch (level.player.team) {
        case #"hash_7c2d091e6337bf54":
            botteam = "allies";
            break;
        case #"hash_5f54b9bf7583687f":
            botteam = "axis";
            break;
        default:
            break;
        }
    }
    if (!isdefined(spawndata)) {
        spawndata = function_afc83012117903d9();
    }
    while (isdefined(level.var_d267f6e95a74866d) && level.var_d267f6e95a74866d < var_b7891bdcdcda7208) {
        [[ level.var_6492adee56d19067.trace ]]("Spawning bot:" + level.var_d267f6e95a74866d);
        level thread [[ level.bot_funcs["bots_spawn"] ]](1, botteam, undefined, undefined, undefined, undefined, spawndata);
        level.var_d267f6e95a74866d += 1;
        wait 0.5;
    }
    [[ level.var_6492adee56d19067.info ]]("Spawned bot(s):" + var_b7891bdcdcda7208);
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x120a
// Size: 0x50
function private function_deadcc8fc572657d(duration) {
    self endon("disconnect");
    if (!isdefined(duration)) {
        duration = 3;
    }
    while (!function_464c7c47f88f997f()) {
        wait 0.05;
    }
    for (;;) {
        level.player startforcedfire();
        wait duration;
        level.player stopforcedfire();
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 4, eflags: 0x4
// Checksum 0x0, Offset: 0x1262
// Size: 0x71
function private function_3819840818a6b8b6(start_angle, end_angle, step_angle, duration) {
    self endon("disconnect");
    while (!function_464c7c47f88f997f()) {
        wait 0.05;
    }
    current_angle = start_angle;
    for (;;) {
        level.player setplayerangles((0, current_angle, 0));
        if (current_angle > end_angle) {
            current_angle = start_angle;
            continue;
        }
        current_angle += step_angle;
        wait duration;
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x12db
// Size: 0x1bb
function private function_6e02da7fde448d84(toorigin) {
    while (!function_464c7c47f88f997f()) {
        wait 0.05;
    }
    if (!isdefined(toorigin)) {
        toorigin = level.player.origin;
    }
    foreach (p in level.players) {
        if (isalive(p) && isbot(p) && p.team != "spectator") {
            p.new_loc = function_afc83012117903d9(level.player);
            if (!isdefined(p.new_loc)) {
                continue;
            }
            forward = anglestoforward(level.player.angles);
            p.ignoreall = 1;
            p botsetflag("disable_movement", 1);
            p botsetflag("disable_random_goal", 1);
            p setorigin(p.new_loc.origin);
            p setplayerangles((0, p.new_loc.angles[1], 0));
            [[ level.var_6492adee56d19067.debug ]](["Moved bot to:", p.new_loc.origin, " Angles:", p.new_loc.angles]);
        }
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x149e
// Size: 0xc0
function private function_afc83012117903d9(player, spawndist) {
    if (!isdefined(player)) {
        player = getentarray("player", "classname")[0];
    }
    if (!isdefined(spawndist)) {
        spawndist = 75;
    }
    angles = player getplayerangles();
    fwd = anglestoforward(angles);
    spawnorigin = player.origin + (0, 0, 30) + fwd * spawndist;
    spawnangles = (0, angles[1] + 185, 0);
    spawndata = spawnstruct();
    spawndata.origin = spawnorigin;
    spawndata.angles = spawnangles;
    return spawndata;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 2
// Checksum 0x0, Offset: 0x1567
// Size: 0xe3
function function_b6dccdc08d6a79cf(enabled, logdestination) {
    logger = spawnstruct();
    logger.enabled = default_to(enabled, 1);
    logger.logdestination = default_to(logdestination, 0);
    logger.error = &function_b44e434fbf5f53a7;
    logger.warn = &function_4aabcdf1735ebd87;
    logger.info = &function_ef7fe4b19ac75213;
    logger.debug = &function_9e5bb8f202255b26;
    logger.trace = &function_f29c38f8362af584;
    logger.var_31733074dccca56a = 0;
    logger.var_d50bc0d177cb0ea2 = 0;
    logger.var_2fb0fd6862fc69ce = 0;
    logger.var_228a62f48d87ee99 = 0;
    logger.var_caf5223002aef62f = 0;
    return logger;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1
// Checksum 0x0, Offset: 0x1653
// Size: 0x3f
function function_b44e434fbf5f53a7(thetext) {
    function_6fb33828d1a8a501(1, thetext);
    level.var_6492adee56d19067.var_31733074dccca56a += 1;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1
// Checksum 0x0, Offset: 0x169a
// Size: 0x3f
function function_4aabcdf1735ebd87(thetext) {
    function_6fb33828d1a8a501(2, thetext);
    level.var_6492adee56d19067.var_d50bc0d177cb0ea2 += 1;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1
// Checksum 0x0, Offset: 0x16e1
// Size: 0x3f
function function_ef7fe4b19ac75213(thetext) {
    function_6fb33828d1a8a501(3, thetext);
    level.var_6492adee56d19067.var_2fb0fd6862fc69ce += 1;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1
// Checksum 0x0, Offset: 0x1728
// Size: 0x3f
function function_9e5bb8f202255b26(thetext) {
    function_6fb33828d1a8a501(4, thetext);
    level.var_6492adee56d19067.var_228a62f48d87ee99 += 1;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1
// Checksum 0x0, Offset: 0x176f
// Size: 0x3f
function function_f29c38f8362af584(thetext) {
    function_6fb33828d1a8a501(5, thetext);
    level.var_6492adee56d19067.var_caf5223002aef62f += 1;
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 2, eflags: 0x4
// Checksum 0x0, Offset: 0x17b6
// Size: 0xd9
function private function_6fb33828d1a8a501(loglevel, thetext) {
    if (loglevel <= 5 && isdefined(thetext)) {
        /#
            if (isarray(thetext)) {
                thetext = string_join(thetext, "<dev string:x1c>");
            }
            switch (level.var_6492adee56d19067.logdestination) {
            case 0:
                println(function_f6365badfd587e0b(loglevel) + "<dev string:x1c>" + thetext);
                break;
            case 1:
                iprintln(function_f6365badfd587e0b(loglevel) + "<dev string:x1c>" + thetext);
                break;
            default:
                assertmsg("<dev string:x1e>" + default_to(level.var_6492adee56d19067.logdestination, "<dev string:x3f>"));
                break;
            }
        #/
    }
}

// Namespace smoke / namespace_1676ee684fdab294
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x1897
// Size: 0x80
function private function_f6365badfd587e0b(loglevel) {
    switch (loglevel) {
    case 1:
        return "[SMOKE_ERROR]";
    case 2:
        return "[SMOKE_WARN] ";
    case 3:
        return "[SMOKE_INFO] ";
    case 4:
        return "[SMOKE_DEBUG]";
    case 5:
        return "[SMOKE_TRACE]";
    default:
        return "";
    }
}

