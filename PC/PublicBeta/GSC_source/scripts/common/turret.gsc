// scripts\common\turret.gsc  (2C127AAC33157CB4.gscc) (size: 596 Bytes / 0x254 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x55a1bb8d (1436662669)
// size ...... 596 (0x254)
// includes .. 2   (offset: 0x78)
// strings ... 2   (offset: 0x238)
// dev strs .. 0   (offset: 0x254)
// exports ... 1   (offset: 0x140)
// cseg ...... 0x88 + 0xb8 (0x140)
// imports ... 7   (offset: 0x168)
// animtree1 . 0   (offset: 0x254)
// animtree2 . 0   (offset: 0x254)
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace turret;

// Namespace turret / scripts\common\turret
// Params 0
// Checksum 0x0, Offset: 0x90
// Size: 0xb0
function turret_vm_playeranims_think() {
    self endon("death");
    while (true) {
        self waittill("turretownerchange");
        player = self getturretowner();
        weap = undefined;
        if (isdefined(player) && isplayer(player) && !isbot(player)) {
            player giveweapon(self.weaponinfo);
            weap = player getcurrentweapon();
            player switchtoweaponimmediate(self.weaponinfo);
        }
        self waittill("turretownerchange");
        if (isdefined(player) && isplayer(player) && !isbot(player)) {
            player switchtoweaponimmediate(weap);
            player takeweapon(self.weaponinfo);
        }
    }
}

