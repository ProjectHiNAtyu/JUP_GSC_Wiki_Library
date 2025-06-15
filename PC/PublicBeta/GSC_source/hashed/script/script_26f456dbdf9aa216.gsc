// script_26f456dbdf9aa216  (26F456DBDF9AA216.gscc) (size: 586 Bytes / 0x24a / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x15fb0435 (368772149)
// size ...... 586 (0x24a)
// includes .. 4   (offset: 0xb1)
// strings ... 3   (offset: 0x21e)
// dev strs .. 0   (offset: 0x24a)
// exports ... 1   (offset: 0x196)
// cseg ...... 0xd1 + 0xc5 (0x196)
// imports ... 3   (offset: 0x1be)
// animtree1 . 0   (offset: 0x24a)
// animtree2 . 0   (offset: 0x24a)
#using scripts\aitypes\bt_util;
#using scripts\asm\gesture;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace namespace_cbce62193111f79;

// Namespace namespace_cbce62193111f79 / namespace_a3bb9840357a7ef2
// Params 2
// Checksum 0x0, Offset: 0xd9
// Size: 0xbd
function function_5ad32ab5f21ddf93(statename, params) {
    id = self function_92435c7a6ae85c3c();
    if (params.size == 1) {
        thread scripts\asm\gesture::ai_request_gesture(params[0], undefined, undefined, "gesture");
        return;
    }
    if (params.size == 2) {
        thread scripts\asm\gesture::ai_request_gesture(params[0], params[1], undefined, "gesture");
        return;
    }
    if (params.size == 3) {
        thread scripts\asm\gesture::ai_request_gesture(params[0], params[1], params[2], "gesture");
        return;
    }
    if (params.size == 4) {
        thread scripts\asm\gesture::ai_request_gesture(params[0], params[1], params[2], params[3]);
        return;
    }
    assertmsg("ExecuteGesture expecting params array of size 4 or less. Found " + params.size + " params.");
}

