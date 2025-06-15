// script_1d0029e7bdfce7e2  (1D0029E7BDFCE7E2.gscc) (size: 1817 Bytes / 0x719)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x4ffbf771 (1341912945)
// size ...... 1817 (0x719)
// includes .. 0   (offset: 0x80)
// strings ... 1   (offset: 0x709)
// dev strs .. 0   (offset: 0x719)
// exports ... 14  (offset: 0x34d)
// cseg ...... 0x80 + 0x2cd (0x34d)
// imports ... 14  (offset: 0x57d)
// animtree1 . 0   (offset: 0x719)
// animtree2 . 0   (offset: 0x719)
#namespace frontend;

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x88
// Size: 0xb8
function main() {
    level.callbackstartgametype = &callback_frontendstartgametype;
    level.callbackplayerconnect = &callback_frontendplayeractive;
    level.callbackplayerconnect = &callback_frontendplayerconnect;
    level.callbackplayerdisconnect = &callback_frontendplayerdisconnect;
    level.callbackplayerdamage = &callback_frontendplayerdamage;
    level.callbackplayerimpaled = &callback_frontendplayerimpaled;
    level.callbackplayerkilled = &callback_frontendplayerkilled;
    level.callbackplayerlaststand = &callback_frontendplayerlaststand;
    level.callbackplayermigrated = &callback_frontendplayermigrated;
    level.callbackhostmigration = &callback_frontendhostmigration;
    level.var_42d9b617bbca6a42 = &function_bfb9c6b70fc8f235;
    level.var_935c97aa3757676f = &function_8901ca5831ce6438;
    level.var_cda3af1f73639c7c = &function_2a643088582c8be3;
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x148
// Size: 0x2
function callback_frontendstartgametype() {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x152
// Size: 0x2
function callback_frontendplayeractive() {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x15c
// Size: 0x2
function callback_frontendplayerconnect() {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x166
// Size: 0xb
function callback_frontendplayerdisconnect(reason) {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 12, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x179
// Size: 0x63
function callback_frontendplayerdamage(einflictor, eattacker, idamage, idflags, smeansofdeath, objweapon, vpoint, vdir, shitloc, psoffsettime, modelindex, partname) {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 8, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x1e4
// Size: 0x43
function callback_frontendplayerimpaled(eattacker, objweapon, vpointclient, vpoint, vdir, shitloc, spartname, var_19f6f25777706f34) {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 10, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x22f
// Size: 0x53
function callback_frontendplayerkilled(einflictor, attacker, idamage, idflags, smeansofdeath, objweapon, vdir, shitloc, psoffsettime, deathanimduration) {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 10, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x28a
// Size: 0x53
function callback_frontendplayerlaststand(einflictor, attacker, idamage, smeansofdeath, objweapon, vdir, shitloc, psoffsettime, deathanimduration, var_318ade4970c8f647) {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2e5
// Size: 0x10
function callback_frontendplayermigrated() {
    assertmsg("Should not happen for front-end");
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2fd
// Size: 0x10
function callback_frontendhostmigration() {
    assertmsg("Should not happen for front-end");
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x315
// Size: 0x2
function function_bfb9c6b70fc8f235() {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x31f
// Size: 0xb
function function_8901ca5831ce6438(reason) {
    
}

// Namespace frontend / scripts\mp\gametypes\frontend
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x332
// Size: 0x1b
function function_2a643088582c8be3(achievementid, progress, subprogress) {
    
}

