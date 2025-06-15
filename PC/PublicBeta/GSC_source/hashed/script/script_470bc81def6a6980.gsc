// script_470bc81def6a6980  (470BC81DEF6A6980.gscc) (size: 400 Bytes / 0x190 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x3b8126ce (998319822)
// size ...... 400 (0x190)
// includes .. 2   (offset: 0x6c)
// strings ... 1   (offset: 0x17c)
// dev strs .. 0   (offset: 0x190)
// exports ... 2   (offset: 0xbc)
// cseg ...... 0x7c + 0x40 (0xbc)
// imports ... 4   (offset: 0x10c)
// animtree1 . 0   (offset: 0x190)
// animtree2 . 0   (offset: 0x190)
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;

#namespace namespace_f2ee1738ba315249;

// Namespace namespace_f2ee1738ba315249 / namespace_f2d76a94b27a2f46
// Params 0
// Checksum 0x0, Offset: 0x84
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_hummer", &function_454851d382cd4752);
}

// Namespace namespace_f2ee1738ba315249 / namespace_f2d76a94b27a2f46
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x9f
// Size: 0x1d
function private function_454851d382cd4752() {
    if (!function_9697379150687859("veh9_hummer")) {
        return;
    }
    function_8497e7e46b5e397("veh9_hummer");
}

