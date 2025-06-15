// script_5102b41ef5ab6d7e  (5102B41EF5AB6D7E.gscc) (size: 413 Bytes / 0x19d / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x588ac7c6 (1485490118)
// size ...... 413 (0x19d)
// includes .. 4   (offset: 0x69)
// strings ... 1   (offset: 0x189)
// dev strs .. 0   (offset: 0x19d)
// exports ... 2   (offset: 0xc9)
// cseg ...... 0x89 + 0x40 (0xc9)
// imports ... 4   (offset: 0x119)
// animtree1 . 0   (offset: 0x19d)
// animtree2 . 0   (offset: 0x19d)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_960ba50b637b0ef7;

// Namespace namespace_960ba50b637b0ef7 / namespace_b10949259c490766
// Params 0
// Checksum 0x0, Offset: 0x91
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("veh9_pwc", &function_23da1767dc983b5c);
}

// Namespace namespace_960ba50b637b0ef7 / namespace_b10949259c490766
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xac
// Size: 0x1d
function private function_23da1767dc983b5c() {
    if (!function_9697379150687859("veh9_pwc")) {
        return;
    }
    function_8497e7e46b5e397("veh9_pwc");
}

