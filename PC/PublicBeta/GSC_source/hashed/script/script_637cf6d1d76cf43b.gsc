// script_637cf6d1d76cf43b  (637CF6D1D76CF43B.gscc) (size: 414 Bytes / 0x19e / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xefc5c35b (4022715227)
// size ...... 414 (0x19e)
// includes .. 4   (offset: 0x6a)
// strings ... 1   (offset: 0x18a)
// dev strs .. 0   (offset: 0x19e)
// exports ... 2   (offset: 0xca)
// cseg ...... 0x8a + 0x40 (0xca)
// imports ... 4   (offset: 0x11a)
// animtree1 . 0   (offset: 0x19e)
// animtree2 . 0   (offset: 0x19e)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_7694e1da21e1f03a;

// Namespace namespace_7694e1da21e1f03a / namespace_f68bb0e7df415505
// Params 0
// Checksum 0x0, Offset: 0x92
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_rhib", &function_600f69deec25504f);
}

// Namespace namespace_7694e1da21e1f03a / namespace_f68bb0e7df415505
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xad
// Size: 0x1d
function private function_600f69deec25504f() {
    if (!function_9697379150687859("veh9_rhib")) {
        return;
    }
    function_8497e7e46b5e397("veh9_rhib");
}

