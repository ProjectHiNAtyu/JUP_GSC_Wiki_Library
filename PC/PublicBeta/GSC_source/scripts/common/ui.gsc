// scripts\common\ui.gsc  (569B10679FE8CF60.gscc) (size: 775 Bytes / 0x307 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xb912ed04 (3105025284)
// size ...... 775 (0x307)
// includes .. 1   (offset: 0x71)
// strings ... 2   (offset: 0x2eb)
// dev strs .. 0   (offset: 0x307)
// exports ... 2   (offset: 0x1d7)
// cseg ...... 0x79 + 0x15e (0x1d7)
// imports ... 7   (offset: 0x227)
// animtree1 . 0   (offset: 0x307)
// animtree2 . 0   (offset: 0x307)
#using scripts\engine\utility;

#namespace ui;

// Namespace ui / scripts\common\ui
// Params 2
// Checksum 0x0, Offset: 0x81
// Size: 0x92
function lui_registercallback(channel, callback) {
    if (!isdefined(level.lui_callbacks)) {
        level.lui_callbacks = [];
    }
    assert(isstring(channel) && channel != "" && isfunction(callback));
    if (!isdefined(level.lui_callbacks[channel]) || !array_contains(level.lui_callbacks[channel], callback)) {
        level.lui_callbacks[channel] = array_add_safe(level.lui_callbacks[channel], callback);
    }
}

// Namespace ui / scripts\common\ui
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x11b
// Size: 0xbc
function lui_notify_callback(channel, value, value2) {
    if (isdefined(self)) {
        if (isdefined(level.lui_callbacks) && isdefined(level.lui_callbacks[channel])) {
            foreach (callback in level.lui_callbacks[channel]) {
                if (isdefined(value2)) {
                    self thread [[ callback ]](value, value2);
                    continue;
                }
                self thread [[ callback ]](value);
            }
        }
        if (isdefined(value2)) {
            self notify("luinotifyserver", channel, value, value2);
            return;
        }
        self notify("luinotifyserver", channel, value);
    }
}

