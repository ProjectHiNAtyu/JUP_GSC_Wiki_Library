// scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting.gsc  (3E86515ADB4FC882.gscc) (size: 1778 Bytes / 0x6f2 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x1a47eea6 (440921766)
// size ...... 1778 (0x6f2)
// includes .. 5   (offset: 0x9d)
// strings ... 3   (offset: 0x6ba)
// dev strs .. 0   (offset: 0x6f2)
// exports ... 9   (offset: 0x43a)
// cseg ...... 0xc5 + 0x375 (0x43a)
// imports ... 6   (offset: 0x5a2)
// animtree1 . 0   (offset: 0x6f2)
// animtree2 . 0   (offset: 0x6f2)
#using scripts\common\lighting;
#using scripts\common\utility;
#using scripts\engine\math;
#using scripts\engine\trace;
#using scripts\engine\utility;

#namespace mp_frontend_jup_01_lighting;

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xcd
// Size: 0x2
function main() {
    
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0xd7
// Size: 0xaf
function function_3d536453ebbe96e0() {
    ceilinglights = getentarray("gunsmith_ceiling_square_01", "targetname");
    foreach (light in ceilinglights) {
        light.original_intensity = light getlightintensity();
    }
    foreach (light in ceilinglights) {
        light setlightintensity(0);
    }
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x18e
// Size: 0x7e
function function_4e390c2c37cff5e() {
    ceilinglights = getentarray("gunsmith_ceiling_square_01", "targetname");
    foreach (light in ceilinglights) {
        if (isdefined(light.original_intensity)) {
            light setlightintensity(light.original_intensity);
        }
    }
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x214
// Size: 0x46
function function_d99194cd0b2f101c() {
    setdvar(@"hash_5d66c2ef5a9612e0", 1);
    setdvar(@"hash_f9190cd77b0b2463", 4);
    setdvar(@"hash_dacffbfd52c2fdc5", 16);
    setdvar(@"hash_ea4c44a08cd23d5d", 3);
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x262
// Size: 0x66
function function_7f5fee0f9a43c6aa() {
    setdvar(@"hash_5d66c2ef5a9612e0", 0);
    setdvar(@"hash_eca4b727b01fd254", 8);
    setdvar(@"hash_f9190cd77b0b2463", 0);
    setdvar(@"hash_dacffbfd52c2fdc5", 8);
    setdvar(@"hash_ea4c44a08cd23d5d", 1);
    setdvar(@"hash_e918bd4613339eeb", 2);
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2d0
// Size: 0xaf
function function_b81b35afd5c271cf() {
    ceilinglights = getentarray("operator_ceiling_light", "targetname");
    foreach (light in ceilinglights) {
        light.original_intensity = light getlightintensity();
    }
    foreach (light in ceilinglights) {
        light setlightintensity(0);
    }
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x387
// Size: 0x7e
function function_92097d6de58d5f2b() {
    ceilinglights = getentarray("operator_ceiling_light", "targetname");
    foreach (light in ceilinglights) {
        if (isdefined(light.original_intensity)) {
            light setlightintensity(light.original_intensity);
        }
    }
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x40d
// Size: 0x12
function function_5ba05843b262c3d7() {
    setdvar(@"hash_e918bd4613339eeb", 0);
}

// Namespace mp_frontend_jup_01_lighting / scripts\mp\maps\mp_frontend_jup_01\mp_frontend_jup_01_lighting
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x427
// Size: 0x13
function function_7f5fef0f9a43c8dd() {
    setdvar(@"hash_e918bd4613339eeb", 2);
}

