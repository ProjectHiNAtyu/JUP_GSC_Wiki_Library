// script_3bdadfff7554ceba  (3BDADFFF7554CEBA.gscc) (size: 2219 Bytes / 0x8ab / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xe47e254d (3833472333)
// size ...... 2219 (0x8ab)
// includes .. 3   (offset: 0xbd)
// strings ... 7   (offset: 0x81f)
// dev strs .. 3   (offset: 0x883)
// exports ... 8   (offset: 0x53b)
// cseg ...... 0xd5 + 0x466 (0x53b)
// imports ... 14  (offset: 0x67b)
// animtree1 . 0   (offset: 0x8ab)
// animtree2 . 0   (offset: 0x8ab)
#using scripts\engine\utility;
#using scripts\mp\bots\bots;
#using scripts\mp\utility\game;

#namespace namespace_438781effce634d4;

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 0
// Checksum 0x0, Offset: 0xdd
// Size: 0x45
function init() {
    if (getdvarint(@"hash_1a92c8ba1b57a968", 0) == 0) {
        return;
    }
    /#
        setdevdvar(@"hash_81644941d60ec323", 1);
        setdevdvar(@"hash_ac6f58a6e20ed4c2", 1);
    #/
    level thread function_2366683817cdb090();
}

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 0
// Checksum 0x0, Offset: 0x12a
// Size: 0x29e
function function_2366683817cdb090() {
    if (game["roundsPlayed"] > 0) {
        return;
    }
    if (level.teambased) {
        while (!scripts\mp\utility\game::gamehasstarted()) {
            wait 0.05;
        }
    } else {
        while (!istrue(level.prematchstarted)) {
            waitframe();
        }
    }
    if (getdvarint(@"hash_1a92c8ba1b57a968", 0) == 0) {
        return;
    }
    while (!istrue(game["gamestarted"])) {
        waitframe();
    }
    if (isdefined(game["roundsPlayed"]) && game["roundsPlayed"] > 0) {
        return;
    }
    if (!isdefined(level.var_69def5c06e03559)) {
        level.var_69def5c06e03559 = level.teamnamelist;
    }
    if (!isdefined(level.var_737572a27a1ca724)) {
        if (istrue(level.teambased)) {
            if (isdefined(level.maxteamsize) && level.maxteamsize != 0) {
                level.var_737572a27a1ca724 = level.maxteamsize;
            } else {
                level.var_737572a27a1ca724 = 6;
            }
        } else {
            level.var_737572a27a1ca724 = int(7) / 2;
        }
    }
    while (istrue(level.var_ce2396e9ae4bc1a0)) {
        waitframe();
    }
    /#
        if (!level.onlinegame) {
            while (!isdefined(level.player)) {
                waitframe();
            }
            if (istrue(level.teambased)) {
                level.var_69def5c06e03559 = scripts\engine\utility::array_remove(level.var_69def5c06e03559, level.player.pers["<dev string:x1c>"]);
                level.var_69def5c06e03559 = scripts\engine\utility::array_combine([level.player.pers["<dev string:x1c>"]], level.var_69def5c06e03559);
            } else {
                level.var_69def5c06e03559 = ["<dev string:x21>", "<dev string:x28>"];
            }
        }
    #/
    level thread outline_players();
    foreach (entry in level.var_69def5c06e03559) {
        if (isdefined(level.player) && scripts\engine\utility::is_equal(level.player.pers["team"], entry)) {
            num_to_spawn = level.var_737572a27a1ca724 - 1;
            if (issplitscreen()) {
                num_to_spawn = level.var_737572a27a1ca724 - 1;
            }
        } else {
            num_to_spawn = level.var_737572a27a1ca724;
        }
        level thread scripts\mp\bots\bots::spawn_bots(num_to_spawn, entry, undefined, undefined, undefined, "recruit");
    }
}

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 0
// Checksum 0x0, Offset: 0x3d0
// Size: 0xd5
function outline_players() {
    if (!getdvarint(@"hash_e40a51d94d1570ea", 0)) {
        return;
    }
    while (true) {
        if (isdefined(level.players)) {
            foreach (player in level.players) {
                if (isdefined(level.player) && scripts\engine\utility::is_equal(player.pers["team"], level.player.pers["team"])) {
                    player hudoutlineenable("outline_nodepth_green");
                    continue;
                }
                player hudoutlineenable("outline_nodepth_red");
            }
        }
        wait 0.25;
    }
}

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 0
// Checksum 0x0, Offset: 0x4ad
// Size: 0xd
function pause() {
    level.var_ce2396e9ae4bc1a0 = 1;
}

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 0
// Checksum 0x0, Offset: 0x4c2
// Size: 0xc
function run() {
    level.var_ce2396e9ae4bc1a0 = 0;
}

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 1
// Checksum 0x0, Offset: 0x4d6
// Size: 0x15
function function_6cce72ce8bb6af87(teams) {
    level.var_69def5c06e03559 = teams;
}

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 1
// Checksum 0x0, Offset: 0x4f3
// Size: 0x15
function function_4a18dd73a966821e(count) {
    level.var_737572a27a1ca724 = count;
}

// Namespace namespace_438781effce634d4 / namespace_2c19af30dc7a566c
// Params 3
// Checksum 0x0, Offset: 0x510
// Size: 0x2a
function modegetforceoperatorcustomization(player, operatorref, operatorskinref) {
    return ["jup_mp_delta", 0];
}

