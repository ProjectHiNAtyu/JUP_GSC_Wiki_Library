// scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_fx.gsc  (3A8C0771C1F1C434.gscc) (size: 540 Bytes / 0x21c / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xbcb0c5d6 (3165701590)
// size ...... 540 (0x21c)
// includes .. 0   (offset: 0x124)
// strings ... 4   (offset: 0x1e0)
// dev strs .. 1   (offset: 0x210)
// exports ... 1   (offset: 0x17c)
// cseg ...... 0x124 + 0x58 (0x17c)
// imports ... 2   (offset: 0x1a4)
// animtree1 . 0   (offset: 0x21c)
// animtree2 . 0   (offset: 0x21c)
#namespace mp_frontend_jup_01_fx;

// Namespace mp_frontend_jup_01_fx / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_fx
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x12c
// Size: 0x50
function main() {
    level._effect["vfx_frontend_weapon_protune_aura"] = loadfx("vfx/iw9/level/frontend/vfx_frontend_weapon_protune_aura.vfx");
    level._effect["vfx_frontend_store_operator_motes_med"] = loadfx("vfx/iw9/level/frontend/vfx_frontend_store_operator_motes_med.vfx");
    /#
        if (getdvar(@"clientsideeffects") != "<dev string:x1c>") {
        }
    #/
}

