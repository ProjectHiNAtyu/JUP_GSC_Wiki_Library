// scripts\common\hud_util.gsc  (663FF1906E9FE70.gscc) (size: 1273 Bytes / 0x4f9 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x8ddccf67 (2380058471)
// size ...... 1273 (0x4f9)
// includes .. 3   (offset: 0x7a)
// strings ... 4   (offset: 0x4c5)
// dev strs .. 0   (offset: 0x4f9)
// exports ... 5   (offset: 0x315)
// cseg ...... 0x92 + 0x283 (0x315)
// imports ... 8   (offset: 0x3dd)
// animtree1 . 0   (offset: 0x4f9)
// animtree2 . 0   (offset: 0x4f9)
#using scripts\anim\utility;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace hud_util;

// Namespace hud_util / scripts\common\hud_util
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x9a
// Size: 0xd1
function create_client_overlay(shader_name, start_alpha, player) {
    if (isdefined(player)) {
        overlay = newclienthudelem(player);
    } else {
        overlay = newhudelem();
    }
    overlay.x = 0;
    overlay.y = 0;
    overlay setshader(shader_name, 640, 480);
    overlay.alignx = "left";
    overlay.aligny = "top";
    overlay.sort = 1;
    overlay.horzalign = "fullscreen";
    overlay.vertalign = "fullscreen";
    overlay.alpha = start_alpha;
    overlay.foreground = 1;
    return overlay;
}

// Namespace hud_util / scripts\common\hud_util
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x174
// Size: 0x62
function fade_in(time, shader) {
    if (istrue(level.missionfailed)) {
        return;
    }
    if (!isdefined(time)) {
        time = 0.3;
    }
    overlay = get_optional_overlay(shader);
    if (time > 0) {
        overlay fadeovertime(time);
    }
    overlay.alpha = 0;
    if (time > 0) {
        wait time;
    }
}

// Namespace hud_util / scripts\common\hud_util
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1de
// Size: 0x1e
function get_optional_overlay(shader) {
    if (!isdefined(shader)) {
        shader = "black";
    }
    return get_overlay(shader);
}

// Namespace hud_util / scripts\common\hud_util
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x205
// Size: 0x55
function fade_out(time, shader) {
    if (!isdefined(time)) {
        time = 0.3;
    }
    overlay = get_optional_overlay(shader);
    if (time > 0) {
        overlay fadeovertime(time);
    }
    overlay.alpha = 1;
    if (time > 0) {
        wait time;
    }
}

// Namespace hud_util / scripts\common\hud_util
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x262
// Size: 0xb2
function get_overlay(shader) {
    if (isplayer(self)) {
        guy = self;
    } else {
        guy = level.player;
    }
    if (!isdefined(guy.overlay)) {
        guy.overlay = [];
    }
    if (!isdefined(guy.overlay[shader])) {
        guy.overlay[shader] = create_client_overlay(shader, 0, guy);
    }
    guy.overlay[shader].sort = 0;
    guy.overlay[shader].foreground = 1;
    return guy.overlay[shader];
}

