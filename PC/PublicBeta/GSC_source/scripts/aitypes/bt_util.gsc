// scripts\aitypes\bt_util.gsc  (68089CE1EA270B3B.gscc) (size: 579 Bytes / 0x243 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xdc563dd6 (3696639446)
// size ...... 579 (0x243)
// includes .. 1   (offset: 0x60)
// strings ... 0   (offset: 0x243)
// dev strs .. 0   (offset: 0x243)
// exports ... 3   (offset: 0x157)
// cseg ...... 0x68 + 0xef (0x157)
// imports ... 4   (offset: 0x1cf)
// animtree1 . 0   (offset: 0x243)
// animtree2 . 0   (offset: 0x243)
#using scripts\asm\asm;

#namespace bt_util;

// Namespace bt_util / scripts\aitypes\bt_util
// Params 0
// Checksum 0x0, Offset: 0x70
// Size: 0x50
function init() {
    if (isdefined(level._btactions)) {
        return;
    }
    level._btactions = [];
    anim.failure = 0;
    anim.success = 1;
    anim.running = 2;
    anim.skip = 3;
    anim.invalid = 4;
}

// Namespace bt_util / scripts\aitypes\bt_util
// Params 0
// Checksum 0x0, Offset: 0xc8
// Size: 0x56
function bt_init() {
    assert(!isdefined(self.bt));
    self.bt = spawnstruct();
    if (isdefined(self.behaviortreeasset)) {
        self btregistertreeinstance(self.behaviortreeasset);
    }
    self.bt.instancedata = [];
}

// Namespace bt_util / scripts\aitypes\bt_util
// Params 1
// Checksum 0x0, Offset: 0x126
// Size: 0x31
function bt_terminateandreplace(var_99252870276d5b3e) {
    self btterminatetreeinstance();
    if (isdefined(var_99252870276d5b3e)) {
        self.behaviortreeasset = var_99252870276d5b3e;
        self btregistertreeinstance(self.behaviortreeasset);
    }
}

