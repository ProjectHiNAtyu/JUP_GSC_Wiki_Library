// scripts\common\heartbeat.gsc  (15047AF555F1F9A0.gscc) (size: 3508 Bytes / 0xdb4 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x91c06147 (2445304135)
// size ...... 3508 (0xdb4)
// includes .. 3   (offset: 0x1fa)
// strings ... 17  (offset: 0xce0)
// dev strs .. 0   (offset: 0xdb4)
// exports ... 16  (offset: 0x7dc)
// cseg ...... 0x212 + 0x5ca (0x7dc)
// imports ... 22  (offset: 0xa5c)
// animtree1 . 0   (offset: 0xdb4)
// animtree2 . 0   (offset: 0xdb4)
#using scripts\common\swim_common;
#using scripts\engine\math;
#using scripts\engine\utility;

#namespace heartbeat;

// Namespace heartbeat / scripts\common\heartbeat
// Params 1
// Checksum 0x0, Offset: 0x21a
// Size: 0x2e
function function_94461e6fd9196c6a(playsoundfunc) {
    level.heartbeat = spawnstruct();
    level.heartbeat.playsoundfunc = playsoundfunc;
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x250
// Size: 0x2d
function function_a9c6f7587066ce13() {
    self.heartbeat = spawnstruct();
    self.heartbeat.pulsetime = 0;
    thread heartbeattimer();
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x285
// Size: 0x76
function function_6c37d427b68ff9c7() {
    return [["mvmt_heartbeat_plr_superfast", 1.3], ["mvmt_heartbeat_plr_fast", 1.721], ["mvmt_heartbeat_plr_med", 1.973], ["mvmt_heartbeat_plr_slow", 2.321], ["mvmt_heartbeat_plr_superslow", 2.86]];
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x304
// Size: 0x76
function function_fa062c79f577073c() {
    return [["mvmt_swim_heartbeat_plr_superfast", 1.3], ["mvmt_swim_heartbeat_plr_fast", 1.721], ["mvmt_swim_heartbeat_plr_med", 1.973], ["mvmt_swim_heartbeat_plr_slow", 2.321], ["mvmt_swim_heartbeat_plr_superslow", 2.86]];
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x383
// Size: 0xc3
function heartbeattimer() {
    self notify("heartBeatTimer");
    self endon("heartBeatTimer");
    self endon("death_or_disconnect");
    while (true) {
        time = gettime();
        var_be61059bb932ddd5 = function_8c8ff6fc7b5b3d67();
        if (isdefined(var_be61059bb932ddd5)) {
            pulsesoundalias = var_be61059bb932ddd5[0];
            childthread function_7c867ea17d64a37c(pulsesoundalias);
            pulses = 2;
            pulsedurationms = var_be61059bb932ddd5[1] * 1000 * 0.5;
            while (pulses > 0) {
                pulsestarttime = time;
                while (time < pulsestarttime + pulsedurationms) {
                    function_70dd1e8302bb7a82(time, pulsestarttime, pulsedurationms);
                    waitframe();
                    time = gettime();
                }
                pulses--;
            }
            continue;
        }
        self waittill("startHeartbeatPulse");
    }
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 3
// Checksum 0x0, Offset: 0x44e
// Size: 0x57
function function_70dd1e8302bb7a82(time, pulsestarttime, pulsedurationms) {
    pulsenormalized = (time - pulsestarttime) / pulsedurationms;
    pulsenormalized = math::normalized_offset(pulsenormalized, 0.65);
    self.heartbeat.pulsetime = 1 - math::normalized_parabola(pulsenormalized);
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 1
// Checksum 0x0, Offset: 0x4ad
// Size: 0x4e
function pulse_rumble(pulsedurationms) {
    if (function_ea8199f09c110522() || !function_afb9ed6354e03dfa() || !function_7b09a3e02e70b0d2()) {
        return;
    }
    pulseduration = pulsedurationms / 1000;
    wait pulseduration * 0.1;
    childthread function_b7c36a804415225b("heartbeatSuperLight");
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x503
// Size: 0xd, Type: bool
function function_afb9ed6354e03dfa() {
    return !isdefined(self.usingremote);
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 1
// Checksum 0x0, Offset: 0x519
// Size: 0x2f
function function_b7c36a804415225b(heartbeat) {
    self setscriptablepartstate("heartbeat", heartbeat);
    wait 0.05;
    self setscriptablepartstate("heartbeat", "neutral");
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x550
// Size: 0x25
function function_8c8ff6fc7b5b3d67() {
    if (function_7b09a3e02e70b0d2()) {
        return function_1078275b178db870();
    }
    if (isplayerunderwater()) {
        return function_14f4cbd1901f7812();
    }
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x57d
// Size: 0xac
function function_1078275b178db870() {
    if (!isdefined(self.currentregendelay) && !self.healing) {
        return undefined;
    }
    var_b10ff79982c0153b = function_6c37d427b68ff9c7();
    if (isdefined(self.currentregendelay) && self.currentregendelay > 4.5) {
        return var_b10ff79982c0153b[0];
    }
    if (isdefined(self.currentregendelay) && self.currentregendelay > 2.8) {
        return var_b10ff79982c0153b[1];
    }
    if (isdefined(self.currentregendelay) && self.currentregendelay > 0.7) {
        return var_b10ff79982c0153b[2];
    }
    return var_b10ff79982c0153b[3];
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x631
// Size: 0x111
function function_14f4cbd1901f7812() {
    if (!function_3776bacc92b445d3()) {
        return undefined;
    }
    var_fe17e9129d4b4bfa = 2;
    var_6b54ed3d32416e64 = 0;
    time = 0;
    beats = 0;
    if (function_bab53c4f3c6062b9()) {
        return ["mvmt_swim_heartbeat_plr_ultrafast", 0.65];
    }
    var_b10ff79982c0153b = function_fa062c79f577073c();
    if (function_ea8199f09c110522()) {
        var_b10ff79982c0153b = [var_b10ff79982c0153b[0], var_b10ff79982c0153b[1]];
        remainingtime = function_b1b34805f6f1b18f();
    } else {
        var_b10ff79982c0153b = [var_b10ff79982c0153b[2], var_b10ff79982c0153b[3], var_b10ff79982c0153b[4]];
        remainingtime = function_b1b34805f6f1b18f() - [[ level.swim.var_575e6f276810675e ]]();
    }
    while (true) {
        if (beats < var_fe17e9129d4b4bfa) {
            time += var_b10ff79982c0153b[var_6b54ed3d32416e64][1];
            beats++;
            if (time > remainingtime) {
                break;
            }
            continue;
        }
        var_6b54ed3d32416e64++;
        beats = 0;
        if (var_6b54ed3d32416e64 >= var_b10ff79982c0153b.size - 1) {
            break;
        }
    }
    return var_b10ff79982c0153b[var_6b54ed3d32416e64];
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x74b
// Size: 0x17
function function_2fb10e0f50e2d6c1() {
    var_b10ff79982c0153b = function_6c37d427b68ff9c7();
    return var_b10ff79982c0153b[5];
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x76b
// Size: 0x19, Type: bool
function function_7b09a3e02e70b0d2() {
    return isdefined(self.deathsdoor) && self.deathsdoor;
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 0
// Checksum 0x0, Offset: 0x78d
// Size: 0x19, Type: bool
function isfocus() {
    return isdefined(self.focus) && self.focus;
}

// Namespace heartbeat / scripts\common\heartbeat
// Params 1
// Checksum 0x0, Offset: 0x7af
// Size: 0x2d
function function_7c867ea17d64a37c(plrsfx) {
    if (!function_c2be12529b0f0ad2()) {
        return;
    }
    self [[ level.heartbeat.playsoundfunc ]](plrsfx);
}

