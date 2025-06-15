// scripts\unittest\private.gsc  (60031AC74593EA4C.gscc) (size: 580 Bytes / 0x244 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xcd532b46 (3444779846)
// size ...... 580 (0x244)
// includes .. 1   (offset: 0x92)
// strings ... 2   (offset: 0x21c)
// dev strs .. 1   (offset: 0x238)
// exports ... 3   (offset: 0xfc)
// cseg ...... 0x9a + 0x62 (0xfc)
// imports ... 6   (offset: 0x174)
// animtree1 . 0   (offset: 0x244)
// animtree2 . 0   (offset: 0x244)
#using scripts\unittest\util;

#namespace namespace_106f587ebebd0cab;

/#

    // Namespace namespace_106f587ebebd0cab / scripts\unittest\private
    // Params 0, eflags: 0x4
    // Checksum 0x0, Offset: 0xa2
    // Size: 0x11, Type: dev
    function private dev_internal() {
        test_print("<dev string:x1c>");
    }

#/

// Namespace namespace_106f587ebebd0cab / scripts\unittest\private
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0xbb
// Size: 0xe
function private _internal() {
    test_print("call to scriptsunittestprivate::_internal");
}

// Namespace namespace_106f587ebebd0cab / scripts\unittest\private
// Params 0
// Checksum 0x0, Offset: 0xd1
// Size: 0x2b
function main() {
    test_begin("Private");
    _internal();
    /#
        dev_internal();
    #/
    test_end("Private");
}

