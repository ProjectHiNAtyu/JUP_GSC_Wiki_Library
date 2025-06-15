// script_640f33037ba8d927  (640F33037BA8D927.gscc) (size: 1582 Bytes / 0x62e / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x46123d31 (1175600433)
// size ...... 1582 (0x62e)
// includes .. 2   (offset: 0xf8)
// strings ... 9   (offset: 0x5b2)
// dev strs .. 0   (offset: 0x62e)
// exports ... 3   (offset: 0x3a6)
// cseg ...... 0x108 + 0x29e (0x3a6)
// imports ... 13  (offset: 0x41e)
// animtree1 . 0   (offset: 0x62e)
// animtree2 . 0   (offset: 0x62e)
#using scripts\engine\utility;
#using scripts\mp\gametypes\br_pickups;

#namespace namespace_1d412d516148e9b4;

// Namespace namespace_1d412d516148e9b4 / namespace_db65270d1872d5f7
// Params 0
// Checksum 0x0, Offset: 0x110
// Size: 0xb
function init() {
    level thread function_6ef0f16edb152d68();
}

// Namespace namespace_1d412d516148e9b4 / namespace_db65270d1872d5f7
// Params 0
// Checksum 0x0, Offset: 0x123
// Size: 0x1a
function function_6ef0f16edb152d68() {
    while (!istrue(game["gamestarted"])) {
        waitframe();
    }
    level thread function_e7501d779917972();
}

// Namespace namespace_1d412d516148e9b4 / namespace_db65270d1872d5f7
// Params 0
// Checksum 0x0, Offset: 0x145
// Size: 0x261
function function_e7501d779917972() {
    structs = getstructarray("spaceshipment_loot_crate_lege", "targetname");
    geo = getent("space_shipment_geo", "targetname");
    foreach (struct in structs) {
        if (!isdefined(struct.angles)) {
            struct.angles = (0, 0, 0);
        }
        instance = spawnscriptable("br_loot_cache_lege", struct.origin, struct.angles);
        if (!isdefined(instance)) {
            continue;
        }
        scripts\mp\gametypes\br_pickups::registerscriptableinstance(instance);
        localorigin = rotatevectorinverted(instance.origin - geo.origin, geo.angles);
        localangles = combineangles(invertangles(geo.angles), instance.angles);
        instance scriptablesetparententity(geo, localorigin, localangles);
        instance setscriptablepartstate("body", "closed_usable");
    }
    structs = getstructarray("buy_station_space_shipment", "targetname");
    foreach (struct in structs) {
        if (!isdefined(struct.angles)) {
            struct.angles = (0, 0, 0);
        }
        instance = spawnscriptable("br_plunder_box", struct.origin, struct.angles);
        if (!isdefined(instance)) {
            continue;
        }
        scripts\mp\gametypes\br_pickups::registerscriptableinstance(instance);
        localorigin = rotatevectorinverted(instance.origin - geo.origin, geo.angles);
        localangles = combineangles(invertangles(geo.angles), instance.angles);
        instance scriptablesetparententity(geo, localorigin, localangles);
        instance setscriptablepartstate("body", "closed_usable");
    }
}

