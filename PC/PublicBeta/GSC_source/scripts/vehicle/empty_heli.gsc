// scripts\vehicle\empty_heli.gsc  (15A70AD2B561D11D.gscc) (size: 298 Bytes / 0x12a / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x26efa6ab (653239979)
// size ...... 298 (0x12a)
// includes .. 1   (offset: 0x74)
// strings ... 1   (offset: 0x11a)
// dev strs .. 0   (offset: 0x12a)
// exports ... 1   (offset: 0xba)
// cseg ...... 0x7c + 0x3e (0xba)
// imports ... 2   (offset: 0xe2)
// animtree1 . 0   (offset: 0x12a)
// animtree2 . 0   (offset: 0x12a)
#using scripts\common\vehicle_build;

#namespace empty_heli;

// Namespace empty_heli / scripts\vehicle\empty_heli
// Params 3
// Checksum 0x0, Offset: 0x84
// Size: 0x36
function main(model, type, classname) {
    build_template("empty_heli", model, type, classname);
    build_is_helicopter("empty_heli");
}

