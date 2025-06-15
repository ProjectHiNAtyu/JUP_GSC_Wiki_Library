// script_15c7dc779b327c9b  (15C7DC779B327C9B.gscc) (size: 238 Bytes / 0xee / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x4d4e1e5e (1296965214)
// size ...... 238 (0xee)
// includes .. 3   (offset: 0x60)
// strings ... 0   (offset: 0xee)
// dev strs .. 0   (offset: 0xee)
// exports ... 1   (offset: 0x8e)
// cseg ...... 0x78 + 0x16 (0x8e)
// imports ... 2   (offset: 0xb6)
// animtree1 . 0   (offset: 0xee)
// animtree2 . 0   (offset: 0xee)
#using scripts\cp_mp\stealth\stealth_music;
#using scripts\engine\utility;
#using scripts\mp\utility\spawn_event_aggregator;

#namespace namespace_17ca84825c926284;

// Namespace namespace_17ca84825c926284 / namespace_fc31f517a806b2d3
// Params 0
// Checksum 0x0, Offset: 0x80
// Size: 0xe
function init() {
    scripts\mp\utility\spawn_event_aggregator::registeronplayerspawncallback(&scripts\cp_mp\stealth\stealth_music::function_9ff225017ef5ce19);
}

