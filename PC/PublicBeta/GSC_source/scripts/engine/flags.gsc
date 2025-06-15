// scripts\engine\flags.gsc  (EF47F6B12175664.gscc) (size: 473 Bytes / 0x1d9 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xe36dc45c (3815621724)
// size ...... 473 (0x1d9)
// includes .. 1   (offset: 0x73)
// strings ... 2   (offset: 0x1c1)
// dev strs .. 0   (offset: 0x1d9)
// exports ... 2   (offset: 0x101)
// cseg ...... 0x7b + 0x86 (0x101)
// imports ... 4   (offset: 0x151)
// animtree1 . 0   (offset: 0x1d9)
// animtree2 . 0   (offset: 0x1d9)
#using scripts\engine\utility;

#namespace flags;

// Namespace flags / scripts\engine\flags
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x83
// Size: 0x52
function init_flags() {
    if (!scripts\engine\utility::add_init_script("init_flags", &init_flags)) {
        return;
    }
    level.flag = [];
    level.flags_lock = [];
    level.generic_index = 0;
    level.flag_struct = spawnstruct();
    level.flag_struct assign_unique_id();
}

// Namespace flags / scripts\engine\flags
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xdd
// Size: 0x24
function assign_unique_id() {
    self.unique_id = "generic" + level.generic_index;
    level.generic_index++;
}

