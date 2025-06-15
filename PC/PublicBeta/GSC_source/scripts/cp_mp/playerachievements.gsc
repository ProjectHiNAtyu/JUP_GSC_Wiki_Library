// scripts\cp_mp\playerachievements.gsc  (293BA44C408FEF1.gscc) (size: 860 Bytes / 0x35c / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x9ce0237 (164495927)
// size ...... 860 (0x35c)
// includes .. 2   (offset: 0x72)
// strings ... 1   (offset: 0x308)
// dev strs .. 6   (offset: 0x314)
// exports ... 3   (offset: 0x218)
// cseg ...... 0x82 + 0x196 (0x218)
// imports ... 4   (offset: 0x290)
// animtree1 . 0   (offset: 0x35c)
// animtree2 . 0   (offset: 0x35c)
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace playerachievements;

// Namespace playerachievements / scripts\cp_mp\playerachievements
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x8a
// Size: 0x9e
function private initachievement(player, achievementid) {
    if (!isdefined(player.achievements)) {
        player.achievements = [];
    }
    if (!isdefined(player.achievements[achievementid])) {
        player.achievements[achievementid] = spawnstruct();
        player.achievements[achievementid].dataready = 0;
        player.achievements[achievementid].progress = 0;
        player.achievements[achievementid].subprogress = 0;
    }
}

// Namespace playerachievements / scripts\cp_mp\playerachievements
// Params 2
// Checksum 0x0, Offset: 0x130
// Size: 0x47
function getstate(player, achievementid) {
    println("<dev string:x1c>" + player.name + "<dev string:x3a>" + achievementid);
    initachievement(player, achievementid);
    player function_86af48e06c94360a(player, achievementid);
}

// Namespace playerachievements / scripts\cp_mp\playerachievements
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x17f
// Size: 0x99
function challenge_progress(player, achievementid, progress, subprogress) {
    println("<dev string:x58>" + player.name + "<dev string:x80>" + achievementid + "<dev string:x8a>" + progress + "<dev string:x96>" + subprogress);
    initachievement(player, achievementid);
    player.achievements[achievementid].progress = progress;
    player.achievements[achievementid].subprogress = subprogress;
    player notify("challengeProgress", achievementid);
}

