// scripts\vehicle\empty_nocollision.gsc  (304FB8A7A53594F4.gscc) (size: 466 Bytes / 0x1d2 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x1c627c6f (476216431)
// size ...... 466 (0x1d2)
// includes .. 1   (offset: 0x69)
// strings ... 0   (offset: 0x1d2)
// dev strs .. 0   (offset: 0x1d2)
// exports ... 2   (offset: 0xda)
// cseg ...... 0x71 + 0x69 (0xda)
// imports ... 6   (offset: 0x12a)
// animtree1 . 0   (offset: 0x1d2)
// animtree2 . 0   (offset: 0x1d2)
#using scripts\common\vehicle_build;

#namespace empty_nocollision;

// Namespace empty_nocollision / scripts\vehicle\empty_nocollision
// Params 3
// Checksum 0x0, Offset: 0x79
// Size: 0x45
function main(model, type, classname) {
    build_template(type, model, undefined, classname);
    build_localinit(&init_local);
    build_life(90000);
    build_is_airplane();
}

// Namespace empty_nocollision / scripts\vehicle\empty_nocollision
// Params 0
// Checksum 0x0, Offset: 0xc6
// Size: 0x14
function init_local() {
    self.disable_wash = 1;
    self hideallparts();
}

