// scripts\quaked\script_struct_mp_iw9_acv_6x6.gsc  (532A248ADF1D29C1.gscc) (size: 393 Bytes / 0x189 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x9ea8e187 (2661867911)
// size ...... 393 (0x189)
// includes .. 1   (offset: 0x6d)
// strings ... 1   (offset: 0x175)
// dev strs .. 0   (offset: 0x189)
// exports ... 2   (offset: 0xb5)
// cseg ...... 0x75 + 0x40 (0xb5)
// imports ... 4   (offset: 0x105)
// animtree1 . 0   (offset: 0x189)
// animtree2 . 0   (offset: 0x189)
#using scripts\cp_mp\vehicles\vehicle;

#namespace namespace_ced425cd4b695cf0;

// Namespace namespace_ced425cd4b695cf0 / scripts\quaked\script_struct_mp_iw9_acv_6x6
// Params 0, eflags: 0x1
// Checksum 0x0, Offset: 0x7d
// Size: 0x13
function autoexec main() {
    function_c0b3ddc9a6bdcc46("veh9_acv_6x6", &function_daa794f03cef2e2c);
}

// Namespace namespace_ced425cd4b695cf0 / scripts\quaked\script_struct_mp_iw9_acv_6x6
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x98
// Size: 0x1d
function private function_daa794f03cef2e2c() {
    if (!function_9697379150687859("veh9_acv_6x6")) {
        return;
    }
    function_8497e7e46b5e397("veh9_acv_6x6");
}

