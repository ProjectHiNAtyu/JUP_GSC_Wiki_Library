// script_2d3fead1b9e1d7e5  (2D3FEAD1B9E1D7E5.gscc) (size: 408 Bytes / 0x198 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xb1ecdfbf (2985091007)
// size ...... 408 (0x198)
// includes .. 4   (offset: 0x64)
// strings ... 1   (offset: 0x184)
// dev strs .. 0   (offset: 0x198)
// exports ... 2   (offset: 0xc4)
// cseg ...... 0x84 + 0x40 (0xc4)
// imports ... 4   (offset: 0x114)
// animtree1 . 0   (offset: 0x198)
// animtree2 . 0   (offset: 0x198)
#using scripts\common\utility;
#using scripts\cp_mp\vehicles\vehicle;
#using scripts\cp_mp\vehicles\vehicle_spawn;
#using scripts\engine\utility;

#namespace namespace_9e66f70aad951124;

// Namespace namespace_9e66f70aad951124 / namespace_a8c01726524388f5
// Params 0
// Checksum 0x0, Offset: 0x8c
// Size: 0x13
function main() {
    function_c0b3ddc9a6bdcc46("atv", &atv_init);
}

// Namespace namespace_9e66f70aad951124 / namespace_a8c01726524388f5
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xa7
// Size: 0x1d
function private atv_init() {
    if (!function_9697379150687859("atv")) {
        return;
    }
    function_8497e7e46b5e397("atv");
}

