// script_6a04c207a6c69f43  (6A04C207A6C69F43.gscc) (size: 400 Bytes / 0x190 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xffe1b6f5 (4292982517)
// size ...... 400 (0x190)
// includes .. 1   (offset: 0x60)
// strings ... 0   (offset: 0x168)
// dev strs .. 3   (offset: 0x168)
// exports ... 1   (offset: 0xc8)
// cseg ...... 0x68 + 0x60 (0xc8)
// imports ... 4   (offset: 0xf0)
// animtree1 . 0   (offset: 0x190)
// animtree2 . 0   (offset: 0x190)
#using scripts\sp\lights;

#namespace namespace_4ba6e399ec22a6d9;

/#

    // Namespace namespace_4ba6e399ec22a6d9 / namespace_c1a759e9577e490f
    // Params 0
    // Checksum 0x0, Offset: 0x70
    // Size: 0x58, Type: dev
    function function_851b7e474a5af3e7() {
        if (function_5ec3518dfd1490af(64 | 2 | 4)) {
            scripts\sp\lights::init();
            println("<dev string:x1c>");
            level waittill("<dev string:x68>");
            return;
        }
        if (function_5ec3518dfd1490af(1) && function_da210510deb3625f()) {
            println("<dev string:x71>");
            level waittill("<dev string:x68>");
        }
    }

#/
