// script_554830d27078277d  (554830D27078277D.gscc) (size: 824 Bytes / 0x338 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xdfbebc18 (3753819160)
// size ...... 824 (0x338)
// includes .. 2   (offset: 0x66)
// strings ... 1   (offset: 0x328)
// dev strs .. 0   (offset: 0x338)
// exports ... 3   (offset: 0x1e8)
// cseg ...... 0x76 + 0x172 (0x1e8)
// imports ... 7   (offset: 0x260)
// animtree1 . 0   (offset: 0x338)
// animtree2 . 0   (offset: 0x338)
#using script_5a4a5d9ba343ff8f;
#using scripts\engine\utility;

#namespace namespace_eacada4b289f07a0;

// Namespace namespace_eacada4b289f07a0 / namespace_e1179dfac473753b
// Params 3
// Checksum 0x0, Offset: 0x7e
// Size: 0xc8
function charm(durations, attacker, end_callback) {
    if (!istrue(self.aisettings.var_d9f86989ad15047e)) {
        return 0;
    }
    if (function_8ce7894f1a52fb77("charm")) {
        return 0;
    }
    assert(isdefined(attacker.team));
    var_ff12966079a5dc0 = function_108973a907c11ca7("charm", durations, undefined, &function_c32337ecb8f9a0d7, &end_charm);
    var_ff12966079a5dc0.original_team = self.team;
    var_ff12966079a5dc0.attacker = attacker;
    var_ff12966079a5dc0.new_team = attacker.team;
    var_ff12966079a5dc0.end_callback = end_callback;
    return start_effect(var_ff12966079a5dc0);
}

// Namespace namespace_eacada4b289f07a0 / namespace_e1179dfac473753b
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x14f
// Size: 0x42
function private function_c32337ecb8f9a0d7(effect) {
    self.health = self.maxhealth;
    self.allowpain = 0;
    self.team = effect.new_team;
    self clearpath();
}

// Namespace namespace_eacada4b289f07a0 / namespace_e1179dfac473753b
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x199
// Size: 0x4f
function private end_charm(effect) {
    self.allowpain = 1;
    self.team = effect.original_team;
    self clearpath();
    if (isdefined(effect.end_callback)) {
        self [[ effect.end_callback ]]();
    }
}

