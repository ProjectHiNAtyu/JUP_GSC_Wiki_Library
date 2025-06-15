// scripts\mp\screenshotcity.gsc  (6ECD08699CCB09B5.gscc) (size: 2418 Bytes / 0x972 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xaf4bff10 (2940993296)
// size ...... 2418 (0x972)
// includes .. 3   (offset: 0xd1)
// strings ... 5   (offset: 0x886)
// dev strs .. 9   (offset: 0x8ee)
// exports ... 5   (offset: 0x68a)
// cseg ...... 0xe9 + 0x5a1 (0x68a)
// imports ... 9   (offset: 0x752)
// animtree1 . 0   (offset: 0x972)
// animtree2 . 0   (offset: 0x972)
#using scripts\common\utility;
#using scripts\cp_mp\frontendutils;
#using scripts\engine\utility;

#namespace screenshotcity;

// Namespace screenshotcity / scripts\mp\screenshotcity
// Params 0
// Checksum 0x0, Offset: 0xf1
// Size: 0x129
function move_to_blue_background() {
    weaponent = getent("weapon_loc_screenshot_1", "targetname");
    weaponpos = weaponent.origin + (0, 0, 0);
    weaponangles = weaponent.angles + (0, 0, 0);
    level.pictureweapons.origin = weaponpos;
    level.pictureweapons.angles = weaponangles;
    cameraent = getent("camera_weapon_screenshot_1", "targetname");
    camerapos = cameraent.origin + (100, 0, 0);
    cameraangles = cameraent.angles + (0, 0, 0);
    level.camera_anchor dontinterpolate();
    level.camera_anchor.origin = camerapos;
    level.camera_anchor.angles = cameraangles;
}

// Namespace screenshotcity / scripts\mp\screenshotcity
// Params 0
// Checksum 0x0, Offset: 0x222
// Size: 0x129
function move_to_blue_background_side_on() {
    weaponent = getent("weapon_loc_screenshot_1", "targetname");
    weaponpos = weaponent.origin + (0, 0, 0);
    weaponangles = weaponent.angles + (0, -25, 0);
    level.pictureweapons.origin = weaponpos;
    level.pictureweapons.angles = weaponangles;
    cameraent = getent("camera_weapon_screenshot_1", "targetname");
    camerapos = cameraent.origin + (100, 0, 0);
    cameraangles = cameraent.angles + (0, 0, 0);
    level.camera_anchor dontinterpolate();
    level.camera_anchor.origin = camerapos;
    level.camera_anchor.angles = cameraangles;
}

// Namespace screenshotcity / scripts\mp\screenshotcity
// Params 0
// Checksum 0x0, Offset: 0x353
// Size: 0x129
function move_to_grey_background() {
    weaponent = getent("weapon_loc_screenshot_2", "targetname");
    weaponpos = weaponent.origin + (0, 0, 0);
    weaponangles = weaponent.angles + (0, 0, 0);
    level.pictureweapons.origin = weaponpos;
    level.pictureweapons.angles = weaponangles;
    cameraent = getent("camera_weapon_screenshot_2", "targetname");
    camerapos = cameraent.origin + (100, 0, 0);
    cameraangles = cameraent.angles + (0, 0, 0);
    level.camera_anchor dontinterpolate();
    level.camera_anchor.origin = camerapos;
    level.camera_anchor.angles = cameraangles;
}

// Namespace screenshotcity / scripts\mp\screenshotcity
// Params 0
// Checksum 0x0, Offset: 0x484
// Size: 0x129
function move_to_grey_background_side_on() {
    weaponent = getent("weapon_loc_screenshot_2", "targetname");
    weaponpos = weaponent.origin + (0, 0, 0);
    weaponangles = weaponent.angles + (0, -25, 0);
    level.pictureweapons.origin = weaponpos;
    level.pictureweapons.angles = weaponangles;
    cameraent = getent("camera_weapon_screenshot_2", "targetname");
    camerapos = cameraent.origin + (100, 0, 0);
    cameraangles = cameraent.angles + (0, 0, 0);
    level.camera_anchor dontinterpolate();
    level.camera_anchor.origin = camerapos;
    level.camera_anchor.angles = cameraangles;
}

/#

    // Namespace screenshotcity / scripts\mp\screenshotcity
    // Params 1
    // Checksum 0x0, Offset: 0x5b5
    // Size: 0xd5, Type: dev
    function take_screenshots(weaponindex) {
        println("<dev string:x1c>");
        weaponname = tablelookup("<dev string:x32>", 0, weaponindex, 1);
        move_to_blue_background();
        wait 2;
        adddebugcommand("<dev string:x4e>" + "<dev string:x5a>" + weaponname + "<dev string:x66>");
        wait 2;
        move_to_blue_background_side_on();
        wait 2;
        adddebugcommand("<dev string:x4e>" + "<dev string:x5a>" + weaponname + "<dev string:x6d>");
        wait 2;
        move_to_grey_background();
        wait 2;
        adddebugcommand("<dev string:x4e>" + "<dev string:x5a>" + weaponname + "<dev string:x7b>");
        wait 2;
        move_to_grey_background_side_on();
        wait 2;
        adddebugcommand("<dev string:x4e>" + "<dev string:x5a>" + weaponname + "<dev string:x82>");
        wait 2;
        println("<dev string:x90>");
    }

#/
