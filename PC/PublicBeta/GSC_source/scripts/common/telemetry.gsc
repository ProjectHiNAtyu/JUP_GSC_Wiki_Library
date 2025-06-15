// scripts\common\telemetry.gsc  (4192352A88553D67.gscc) (size: 430 Bytes / 0x1ae / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xaeef72cd (2934928077)
// size ...... 430 (0x1ae)
// includes .. 0   (offset: 0x6a)
// strings ... 1   (offset: 0x17a)
// dev strs .. 1   (offset: 0x1a2)
// exports ... 1   (offset: 0x11a)
// cseg ...... 0x6a + 0xb0 (0x11a)
// imports ... 2   (offset: 0x142)
// animtree1 . 0   (offset: 0x1ae)
// animtree2 . 0   (offset: 0x1ae)
#namespace telemetry;

// Namespace telemetry / scripts\common\telemetry
// Params 0
// Checksum 0x0, Offset: 0x72
// Size: 0xa8
function init() {
    if (isdefined(game)) {
        if (!isdefined(game["telemetry"])) {
            game["telemetry"] = spawnstruct();
        }
        if (!isdefined(game["telemetry"].total_player_connections)) {
            game["telemetry"].total_player_connections = 0;
        }
        if (!isdefined(game["telemetry"].life_count)) {
            game["telemetry"].life_count = 0;
        }
        if (!isdefined(game["telemetry"].game_event_count)) {
            game["telemetry"].game_event_count = 0;
        }
        return;
    }
    println("<dev string:x1c>");
}

