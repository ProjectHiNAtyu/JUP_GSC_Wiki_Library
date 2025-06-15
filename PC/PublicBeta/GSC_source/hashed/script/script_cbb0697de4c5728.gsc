// script_cbb0697de4c5728  (CBB0697DE4C5728.gscc) (size: 50384 Bytes / 0xc4d0 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xc098bed2 (3231235794)
// size ...... 50384 (0xc4d0)
// includes .. 2   (offset: 0x20a0)
// strings ... 327 (offset: 0xafe0)
// dev strs .. 22  (offset: 0xc394)
// exports ... 183 (offset: 0x7384)
// cseg ...... 0x20b0 + 0x52d4 (0x7384)
// imports ... 247 (offset: 0x901c)
// animtree1 . 0   (offset: 0xc4d0)
// animtree2 . 0   (offset: 0xc4d0)
#using scripts\engine\math;
#using scripts\engine\utility;

#namespace namespace_e2785bb1da360f91;

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x20b8
// Size: 0xaf5
function function_3b59b4d385a202e6() {
    level.var_fb690b0442393f26 = [];
    level.var_7546f688873b4ce4 = [];
    level.var_a3d1147a42b2fd91 = [];
    level.var_8507c1fda79a21e3 = [];
    level.var_1c6c766b95b77e8a = [];
    level._effect["youveBeenNaughty_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_naughty_limb");
    level._effect["youveBeenNaughty_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_naughty_torso");
    level._effect["youveBeenNaughty_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_naughty_head");
    level._effect["youveBeenNice_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_nice_limb");
    level._effect["youveBeenNice_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_nice_torso");
    level._effect["youveBeenNice_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_nice_head");
    level._effect["vDay_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_vday_limb");
    level._effect["vDay_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_vday_torso");
    level._effect["vDay_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_vday_head");
    level._effect["bCell_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_bcell_limb");
    level._effect["bCell_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_bcell_torso");
    level._effect["bCell_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_bcell_head");
    level._effect["bCell_nogore_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_bcell_nogore_limb");
    level._effect["bCell_nogore_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_bcell_nogore_torso");
    level._effect["bCell_nogore_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_bcell_nogore_head");
    level._effect["paddy_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_paddy_limb");
    level._effect["paddy_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_paddy_torso");
    level._effect["paddy_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_paddy_head");
    level._effect["easter_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_easter_limb");
    level._effect["easter_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_easter_torso");
    level._effect["easter_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_easter_head");
    level._effect["easter_nogore_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_easter_nogore_limb");
    level._effect["easter_nogore_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_easter_nogore_torso");
    level._effect["easter_nogore_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_easter_nogore_head");
    level._effect["scifi_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi_limb");
    level._effect["scifi_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi_torso");
    level._effect["scifi_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi_head");
    level._effect["scifi_origin"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi_death_mesh");
    level._effect["scifi2_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi2_limb");
    level._effect["scifi2_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi2_torso");
    level._effect["scifi2_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi2_head");
    level._effect["scifi2_origin"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi2_death_mesh");
    level._effect["scifi3_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi3_limb");
    level._effect["scifi3_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi3_torso");
    level._effect["scifi3_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi3_head");
    level._effect["scifi3_origin"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_scifi3_death_mesh");
    level._effect["420_death"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_fatal_weed_sh");
    level._effect["hitscan"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_hitscan_fatal");
    level._effect["thor"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_thor_fatal");
    level._effect["thor_chest"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_thor_fatal_chest");
    level._effect["golden_gun_limb"] = loadfx("vfx/jup/weapon/_mtx/s1/impact/terminus_goldengun/vfx_imp_mtx_s1_terminus_goldengun_limb");
    level._effect["golden_gun_torso"] = loadfx("vfx/jup/weapon/_mtx/s1/impact/terminus_goldengun/vfx_imp_mtx_s1_terminus_goldengun_torso");
    level._effect["golden_gun_head"] = loadfx("vfx/jup/weapon/_mtx/s1/impact/terminus_goldengun/vfx_imp_mtx_s1_terminus_goldengun_head");
    level._effect["golden_gun_origin"] = loadfx("vfx/jup/weapon/_mtx/s1/impact/terminus_goldengun/vfx_imp_mtx_s1_terminus_goldengun_death_mesh");
    level._effect["soulEater_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_souleater_limb");
    level._effect["soulEater_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_souleater_torso");
    level._effect["soulEater_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_souleater_head");
    level._effect["soulEater_death"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_soul_fatal");
    level._effect["crash_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_crash_limb");
    level._effect["crash_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_crash_torso");
    level._effect["crash_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_crash_head");
    level._effect["cthulhu_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_cthulhu_limb");
    level._effect["cthulhu_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_cthulhu_torso");
    level._effect["cthulhu_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_cthulhu_head");
    level._effect["cthulhu_nogore_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_cthulhu_nogore_limb");
    level._effect["cthulhu_nogore_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_cthulhu_nogore_torso");
    level._effect["cthulhu_nogore_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_cthulhu_nogore_head");
    level._effect["akihabara_fatal"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_akihabara_fatal");
    level._effect["hlander_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_hlander_limb");
    level._effect["hlander_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_hlander_torso");
    level._effect["hlander_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_hlander_head");
    level._effect["hlander_nogore_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_hlander_nogore_limb");
    level._effect["hlander_nogore_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_hlander_nogore_torso");
    level._effect["hlander_nogore_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_hlander_nogore_head");
    level._effect["nicki_limb"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_nicki_limb");
    level._effect["nicki_torso"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_nicki_torso");
    level._effect["nicki_head"] = loadfx("vfx/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_nicki_head");
    if (getdvarint(@"mgl", 0) != 0) {
        level._effect["sbandit_limb"] = loadfx("vfx/mgl/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_sbandit_limb");
        level._effect["sbandit_torso"] = loadfx("vfx/mgl/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_sbandit_torso");
        level._effect["sbandit_head"] = loadfx("vfx/mgl/iw9/core/weapons/impacts/mtx/vfx_imp_mtx_sbandit_head");
    }
    function_503e263494654df9("naughtyDeath", &function_35f65f87520b27c7, &function_36f3c1f20204b13);
    function_503e263494654df9("niceDeath", &function_44af174fb8b3375a, &function_777c1f2e7f15d92e);
    function_503e263494654df9("vDay", &function_322b81ee84a7c335, &function_337b80f7ff25b0c9);
    function_503e263494654df9("pShock", &function_876682da843d662f, &function_f7bca22a37224d8b);
    function_503e263494654df9("bCell", &function_88d1b8b5885326c9, &function_1a406edd298ed8ad);
    function_503e263494654df9("paddy", &function_be4d915ec8789015, &function_583f9260e6221231);
    function_503e263494654df9("shredder", &function_d16a994853c4015e, &function_1b5dfb950d2e6dd2);
    function_503e263494654df9("sbandit", &function_7b6c0e34238a0cfa, &function_436125459cf039e);
    function_503e263494654df9("electricAnime", &function_2068876afa7ffdc2, &function_f3274abe8bbcac04);
    function_503e263494654df9("easter", &function_d82f09c700769a23, &function_f98648e1dc6e63cf);
    function_503e263494654df9("scifi", &function_10c37a77a215e653, &function_52506c3cfde54aa7);
    function_503e263494654df9("scifi2", &function_a5719d2611ccb58b, &function_38f459f70ea411a7);
    function_503e263494654df9("scifi3", &function_be8fb6c49c81dcf6, &function_2d04b4ad2bc66462);
    function_503e263494654df9("420", &function_6b4eebd31e8d283d, &function_fd4087de9db4cdf1);
    function_503e263494654df9("hitscan", &function_3b499b70dcadea7, &function_a02b4e369b2cbcb3);
    function_503e263494654df9("thor", &function_dcf8ef2cc3ba7666, &function_3e92a8e47dbf91aa);
    function_503e263494654df9("kd", &function_f78733b19768dd1c, &function_bdcfc88e185572c8);
    function_503e263494654df9("cdl", &function_cd4c63d7f51297ac, &function_1ebe98051052c08);
    function_503e263494654df9("soulEater", &function_41e8cf00b189fe93, &function_362790d530cb554f);
    function_503e263494654df9("crash", &function_2a39a3e5a451239e, &function_ff45d70ef7fd700a);
    function_503e263494654df9("akihabara", &function_f2ab411194e3af0b, &function_a93d4e4d31895d77);
    function_503e263494654df9("magma", &function_fa73d41da55ed368, &function_836e832ef348cb0c);
    function_503e263494654df9("cthulhu", &function_3530b11955a74bae, &function_f6820874f2f4b7fa);
    function_503e263494654df9("hlander", &function_66bd08d233abc229, &function_487ad6a4de40bcf5);
    function_503e263494654df9("bnoir", &function_662ae8585ca5045d, &function_ae90d417fbdba2a9);
    function_503e263494654df9("goldengun", &function_8dcf23df7efcf5f8, &function_ce2c35cf68d5b3fc);
    function_503e263494654df9("nicki", &function_43765ffd912971f9, &function_98c6559ade501e3d);
    function_ca61bb01d1162121("isSoulEaterMeleeDeath", &isSoulEaterMeleeDeath, &function_362790d530cb554f);
    function_ca61bb01d1162121("isNoirMeleeDeath", &isNoirMeleeDeath, &function_ae90d417fbdba2a9);
    function_a180a5874c8cbe0b("flameSkullCharm", &function_2627a7eaeb3541e5, &function_d0003cb59ba90631);
    function_a180a5874c8cbe0b("crystamSkullCharm", &function_1d7a9b121434df64, &function_9dba84e77ba81e68);
    function_a180a5874c8cbe0b("starlightCharm", &function_763547f85193043, &function_9e037532d806bfaf);
    function_a180a5874c8cbe0b("soulEaterCharm", &function_244de2be6dd725f3, &function_7ac629d7829da1df);
    function_7d893cf076538f0d("reactive_kill_streak_2stage", &function_7e8329133ea16786);
    function_7d893cf076538f0d("reactive_match_kills_2stage", &function_882b5ea6e5345b31);
    function_7d893cf076538f0d("reactive_soul_collect_1stage", &function_d05f99b2455baa0a);
    function_7d893cf076538f0d("reactive_movement", &function_40c8094dda4e218f);
    function_7d893cf076538f0d("reactive_downgradable_kill_streak_3stage", &function_777eed4426971f45);
    function_7d893cf076538f0d("reactive_enchantment", &function_7ec064f982949e9);
    function_144b37d5935ee55e("reactive_kill");
    function_144b37d5935ee55e("reactive_soul_collect");
    function_a92b5d21a4b45b0();
    if (issharedfuncdefined("aggregator", "registerOnPlayerSpawnCallback")) {
        [[ getsharedfunc("aggregator", "registerOnPlayerSpawnCallback") ]](&function_c72573fb42d0cdbc);
    }
    /#
        thread function_96be6291f27c1e20();
    #/
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2bb5
// Size: 0x75
function function_503e263494654df9(sname, conditionfunc, var_7b85d041fe0490b6) {
    fxfuncs = spawnstruct();
    fxfuncs.conditions = conditionfunc;
    fxfuncs.deatheffect = var_7b85d041fe0490b6;
    assertex(!isdefined(level.var_fb690b0442393f26[sname]), "multiple DeathFxFuncs init'd with the same name: <" + sname + ">");
    level.var_fb690b0442393f26[sname] = fxfuncs;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2c32
// Size: 0x75
function function_ca61bb01d1162121(sname, conditionfunc, var_7b85d041fe0490b6) {
    fxfuncs = spawnstruct();
    fxfuncs.conditions = conditionfunc;
    fxfuncs.deatheffect = var_7b85d041fe0490b6;
    assertex(!isdefined(level.var_7546f688873b4ce4[sname]), "multiple DeathFxFuncs init'd with the same name: <" + sname + ">");
    level.var_7546f688873b4ce4[sname] = fxfuncs;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2caf
// Size: 0x5d
function function_a180a5874c8cbe0b(sname, var_76db26f25e7dbac7, var_ba46ec67c5caf4a2) {
    var_7bdc9702e6500422 = spawnstruct();
    var_7bdc9702e6500422.var_d7d02abbc34dd7d2 = var_76db26f25e7dbac7;
    var_7bdc9702e6500422.var_ba46ec67c5caf4a2 = var_ba46ec67c5caf4a2;
    /#
        function_7e5803a5e15369eb(sname);
    #/
    level.var_a3d1147a42b2fd91[sname] = var_7bdc9702e6500422;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2d14
// Size: 0x48
function function_7d893cf076538f0d(sname, var_ba46ec67c5caf4a2) {
    var_7bdc9702e6500422 = spawnstruct();
    var_7bdc9702e6500422.var_ba46ec67c5caf4a2 = var_ba46ec67c5caf4a2;
    /#
        function_7e5803a5e15369eb(sname);
    #/
    level.var_8507c1fda79a21e3[sname] = var_7bdc9702e6500422;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2d64
// Size: 0x3b
function function_144b37d5935ee55e(sname, var_ba46ec67c5caf4a2) {
    var_7bdc9702e6500422 = spawnstruct();
    /#
        function_7e5803a5e15369eb(sname);
    #/
    level.var_1c6c766b95b77e8a[sname] = var_7bdc9702e6500422;
}

/#

    // Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
    // Params 1
    // Checksum 0x0, Offset: 0x2da7
    // Size: 0x77, Type: dev
    function function_7e5803a5e15369eb(sname) {
        assertex(!isdefined(level.var_a3d1147a42b2fd91[sname]), "<dev string:x1c>" + sname + "<dev string:x52>");
        assertex(!isdefined(level.var_8507c1fda79a21e3[sname]), "<dev string:x1c>" + sname + "<dev string:x52>");
        assertex(!isdefined(level.var_1c6c766b95b77e8a[sname]), "<dev string:x1c>" + sname + "<dev string:x52>");
    }

#/

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2e26
// Size: 0x64
function function_a92b5d21a4b45b0() {
    level.var_40e77024dc6bae59 = [];
    level.var_40e77024dc6bae59["match_kill_thresholds_2stage"] = function_b7c399cd6018f474();
    level.var_40e77024dc6bae59["kill_streak_thresholds_2stage"] = function_15b4833097caf079();
    level.var_40e77024dc6bae59["kill_streak_thresholds_souleater"] = function_a1852b80a8ff86f6();
    level.var_40e77024dc6bae59["downgradable_kill_streak_thresholds_3stage"] = function_287113bfbe3cbd0c();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2e92
// Size: 0x10
function function_c72573fb42d0cdbc() {
    function_48acda7f56f30aab();
    function_1f5695ce1654709d();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x2eaa
// Size: 0x196
function function_48acda7f56f30aab() {
    if (function_2947be89ddf09115()) {
        return;
    }
    function_35c927994920a75("match_kills", 0);
    function_35c927994920a75("kill_streak", 0);
    function_35c927994920a75("downgradable_kill_streak", 0);
    function_35c927994920a75("reactive_kills", 0);
    function_35c927994920a75("souls_collected_count", 0);
    function_35c927994920a75("movement_state", "neutral");
    function_35c927994920a75("vfx_enabled", 1);
    function_35c927994920a75("enchanted_weapons", []);
    function_35c927994920a75("last_reactive_kill_time", -99999);
    function_35c927994920a75("last_reticle_kill_time", -99999);
    function_35c927994920a75("soul_ents_in_flight", []);
    function_35c927994920a75("is_throwing_grenade", 0);
    foreach (scriptableid, var_7bdc9702e6500422 in level.var_a3d1147a42b2fd91) {
        function_5b5e6de151e0fecd(scriptableid, "neutral");
    }
    foreach (scriptableid, var_7bdc9702e6500422 in level.var_8507c1fda79a21e3) {
        function_4fa6004e1f4bd807(scriptableid, "neutral");
    }
    foreach (var_7bdc9702e6500422 in level.var_1c6c766b95b77e8a) {
        function_68444e56728a13a6(scriptableid);
    }
    thread mtx_manageoffhands();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3048
// Size: 0xc, Type: bool
function function_2947be89ddf09115() {
    return isdefined(self.var_e7a9752e4f4c7d97);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x305d
// Size: 0x63
function function_b7c399cd6018f474() {
    if (isdefined(level.mtxkillthresholdstage1) && level.mtxkillthresholdstage1 > 0) {
        if (isdefined(level.mtxkillthresholdstage2) && level.mtxkillthresholdstage2 > 0) {
            return [level.mtxkillthresholdstage1, level.mtxkillthresholdstage2];
        }
    }
    return [10, 20];
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x30c9
// Size: 0xf
function function_15b4833097caf079() {
    return [2, 5];
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x30e1
// Size: 0x4
function function_a1852b80a8ff86f6() {
    return 3;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0
// Checksum 0x0, Offset: 0x30ee
// Size: 0x15
function function_d4e38ad2ae67fd38() {
    return [2, 5, 8];
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x310c
// Size: 0x15
function function_287113bfbe3cbd0c() {
    return [1, 2, 3];
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1
// Checksum 0x0, Offset: 0x312a
// Size: 0x28
function function_b939bc4f3a6d4fdc(weapon) {
    function_a71517a0b579ed46(weapon);
    function_79e98e41624be7fc();
    function_e6c5c00872a14e28();
    function_81837d4d838c9fe4();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0
// Checksum 0x0, Offset: 0x315a
// Size: 0x17
function function_7c62c6c14aba289b() {
    function_48acda7f56f30aab();
    function_e6c5c00872a14e28();
    function_6c9a431ebf770006();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x3179
// Size: 0x74
function function_eceb462b367e4b04(deathdata) {
    if (isdefined(deathdata.attacker) && isplayer(deathdata.attacker)) {
        deathdata.attacker function_5c55ca428dd7b66b(self, deathdata.objweapon, deathdata.meansofdeath);
    }
    function_af1adc73dffafd19(deathdata.objweapon, deathdata.meansofdeath);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 4, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x31f5
// Size: 0x2d
function function_1dd3a521ea9ecf27(attacker, objweapon, meansofdeath, hitloc) {
    return function_a952714a4c2f5c6f(attacker, objweapon, meansofdeath, hitloc);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 4
// Checksum 0x0, Offset: 0x322b
// Size: 0x47
function function_bbee2e46ab15a720(attacker, objweapon, meansofdeath, hitloc) {
    if (isdefined(attacker) && isplayer(attacker)) {
        attacker function_5c55ca428dd7b66b(self, objweapon, meansofdeath);
    }
    return function_a952714a4c2f5c6f(attacker, objweapon, meansofdeath, hitloc);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0
// Checksum 0x0, Offset: 0x327b
// Size: 0x29
function function_943511ab1f39db66() {
    self endon("death_or_disconnect");
    self endon("shockStick_haywireApplied");
    function_d7fa97d4f0f98c1();
    self waittill("haywire_cleared");
    wait 1;
    function_bf1775a0a246bdf8();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x32ac
// Size: 0x32, Type: bool
function function_92d9b05be48fe03e(entity) {
    return isdefined(entity) && isdefined(entity.model) && entity.model == "military_shooting_target_armor_01_assembly";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x32e7
// Size: 0x2f
function function_d7fa97d4f0f98c1() {
    if (!isdefined(self.var_e7a9752e4f4c7d97)) {
        return;
    }
    self.var_e7a9752e4f4c7d97["vfx_enabled"] = 0;
    function_45f7158271bbf93();
    function_98b9a56ebaec7205();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x331e
// Size: 0x30
function function_bf1775a0a246bdf8() {
    if (!isdefined(self.var_e7a9752e4f4c7d97)) {
        return;
    }
    self.var_e7a9752e4f4c7d97["vfx_enabled"] = 1;
    function_79e98e41624be7fc();
    function_1f5695ce1654709d();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0
// Checksum 0x0, Offset: 0x3356
// Size: 0x8
function function_8114951a631bd6a6() {
    return function_d05f99b2455baa0a();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1
// Checksum 0x0, Offset: 0x3367
// Size: 0x12
function function_150370c11a6c880(objweapon) {
    return function_36ee14b7476fd18c(objweapon);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 4, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3382
// Size: 0xe8
function private function_a952714a4c2f5c6f(attacker, objweapon, meansofdeath, hitloc) {
    if (meansofdeath == "MOD_SUICIDE") {
        return 0;
    }
    if (meansofdeath == "MOD_MELEE") {
        var_4f9e2cc6f3c3696a = level.var_7546f688873b4ce4;
    } else {
        var_4f9e2cc6f3c3696a = level.var_fb690b0442393f26;
    }
    foreach (var_78d10f1cffcb27f6 in var_4f9e2cc6f3c3696a) {
        if ([[ var_78d10f1cffcb27f6.conditions ]](objweapon)) {
            corpsedeleted = self [[ var_78d10f1cffcb27f6.deatheffect ]](self.body, attacker, hitloc);
            assertex(isdefined(corpsedeleted), "All fxFuncs.deathEffect must return true if body deleted, false if not");
            return corpsedeleted;
        }
    }
    return 0;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3473
// Size: 0xad
function private function_5c55ca428dd7b66b(victim, weapon, meansofdeath) {
    if (!isenemykill(victim, meansofdeath)) {
        return;
    }
    self.var_e7a9752e4f4c7d97["match_kills"]++;
    self.var_e7a9752e4f4c7d97["kill_streak"]++;
    self.var_e7a9752e4f4c7d97["downgradable_kill_streak"]++;
    function_ba3a5a6cdabc71f0("reactive_kill_streak_2stage");
    function_ba3a5a6cdabc71f0("reactive_match_kills_2stage");
    function_ba3a5a6cdabc71f0("reactive_downgradable_kill_streak_3stage");
    thread function_b4ebf862900a4d38();
    if (isdefined(weapon)) {
        if (function_1b1244617e1e02e9(weapon, meansofdeath)) {
            thread function_bb48ea90ef425e51();
        }
        if (function_ab36993386930071(weapon)) {
            thread function_1ade8d50b72171d2();
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3528
// Size: 0x40
function private function_af1adc73dffafd19(objweapon, meansofdeath) {
    function_d4e4935b9938f870();
    function_ba3a5a6cdabc71f0("reactive_kill_streak_2stage");
    function_ba3a5a6cdabc71f0("reactive_downgradable_kill_streak_3stage");
    function_45f7158271bbf93();
    function_db40ec5717136688();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3570
// Size: 0x3b, Type: bool
function private isenemykill(victim, meansofdeath) {
    if (!isdefined(meansofdeath) || "meansOfDeath" == "MOD_SUICIDE") {
        return false;
    }
    if (!isdefined(victim) || victim == self) {
        return false;
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x35b4
// Size: 0x6a
function private mtx_manageoffhands() {
    self notify("mtx_manageOffhands");
    self endon("mtx_manageOffhands");
    self endon("death_or_disconnect");
    while (true) {
        self waittill("weapon_switch_started");
        if (self isthrowinggrenade()) {
            self.var_e7a9752e4f4c7d97["is_throwing_grenade"] = 1;
            function_45f7158271bbf93();
            self waittill("offhand_end");
            self.var_e7a9752e4f4c7d97["is_throwing_grenade"] = 0;
            function_79e98e41624be7fc();
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3626
// Size: 0xac
function private function_79e98e41624be7fc() {
    var_50af9aeeffb058ed = 0;
    if (isdefined(self.currentweapon) && function_6505b038fb96bb28()) {
        foreach (var_7bdc9702e6500422 in level.var_a3d1147a42b2fd91) {
            if ([[ var_7bdc9702e6500422.var_d7d02abbc34dd7d2 ]](self.currentweapon)) {
                thread function_dfc52c6f1ae59baf(scriptableid, var_7bdc9702e6500422, self.currentweapon);
                var_50af9aeeffb058ed = 1;
                break;
            }
        }
    }
    if (!var_50af9aeeffb058ed) {
        function_45f7158271bbf93();
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x36da
// Size: 0x5e
function private function_1c97fa306b0fd5ae(scriptableid) {
    if (isdefined(self.currentweapon) && function_6505b038fb96bb28()) {
        var_7bdc9702e6500422 = level.var_a3d1147a42b2fd91[scriptableid];
        if (function_58b324aae22d277f(scriptableid, var_7bdc9702e6500422, self.currentweapon)) {
            function_dfc52c6f1ae59baf(scriptableid, var_7bdc9702e6500422, self.currentweapon);
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3740
// Size: 0x6b
function private function_dfc52c6f1ae59baf(scriptableid, var_7bdc9702e6500422, weapon) {
    if (!isdefined(weapon)) {
        return;
    }
    state = [[ var_7bdc9702e6500422.var_ba46ec67c5caf4a2 ]](weapon);
    if ([[ var_7bdc9702e6500422.var_d7d02abbc34dd7d2 ]](weapon)) {
        self setscriptablepartstate("mtxVfxCharm", state);
        self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"][scriptableid] = state;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x37b3
// Size: 0x83
function private function_45f7158271bbf93() {
    foreach (scriptablestate in self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"]) {
        if (scriptablestate != "neutral") {
            self setscriptablepartstate("mtxVfxCharm", "neutral");
            self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"][scriptableid] = "neutral";
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x383e
// Size: 0x26, Type: bool
function private function_6505b038fb96bb28() {
    if (self.var_e7a9752e4f4c7d97["is_throwing_grenade"] || istrue(self.ishaywire)) {
        return false;
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x386d
// Size: 0x47, Type: bool
function private function_58b324aae22d277f(scriptableid, var_7bdc9702e6500422, weapon) {
    state = [[ var_7bdc9702e6500422.var_ba46ec67c5caf4a2 ]](weapon);
    return state != self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"][scriptableid];
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x38bd
// Size: 0x53
function private function_1f5695ce1654709d() {
    foreach (var_7bdc9702e6500422 in level.var_8507c1fda79a21e3) {
        function_ba3a5a6cdabc71f0(scriptableid);
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3918
// Size: 0x3e
function private function_ba3a5a6cdabc71f0(scriptableid) {
    if (function_6429a0d0c36d7ea()) {
        var_7bdc9702e6500422 = level.var_8507c1fda79a21e3[scriptableid];
        if (function_c8cda6bd2f765d41(scriptableid, var_7bdc9702e6500422)) {
            function_a134ba0b1c11a0e9(scriptableid, var_7bdc9702e6500422);
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x395e
// Size: 0x53
function private function_6c9a431ebf770006() {
    foreach (var_7bdc9702e6500422 in level.var_8507c1fda79a21e3) {
        function_6dd7d4f0881173bb(scriptableid);
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x39b9
// Size: 0x2a
function private function_6dd7d4f0881173bb(scriptableid) {
    var_7bdc9702e6500422 = level.var_8507c1fda79a21e3[scriptableid];
    function_a134ba0b1c11a0e9(scriptableid, var_7bdc9702e6500422);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x39eb
// Size: 0x6b
function private function_a134ba0b1c11a0e9(scriptableid, var_7bdc9702e6500422) {
    state = [[ var_7bdc9702e6500422.var_ba46ec67c5caf4a2 ]]();
    if (!self getscriptableparthasstate(scriptableid, state)) {
        println("<dev string:x54>" + state + "<dev string:x7b>" + scriptableid);
        return;
    }
    self setscriptablepartstate(scriptableid, state);
    self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"][scriptableid] = state;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3a5e
// Size: 0x7f
function private function_98b9a56ebaec7205() {
    foreach (scriptableid, scriptablestate in self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"]) {
        if (scriptablestate != "neutral") {
            self setscriptablepartstate(scriptableid, "neutral");
            self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"][scriptableid] = "neutral";
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3ae5
// Size: 0x18, Type: bool
function private function_6429a0d0c36d7ea() {
    if (!self.var_e7a9752e4f4c7d97["vfx_enabled"]) {
        return false;
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3b06
// Size: 0x3e, Type: bool
function private function_c8cda6bd2f765d41(scriptableid, var_7bdc9702e6500422) {
    state = [[ var_7bdc9702e6500422.var_ba46ec67c5caf4a2 ]]();
    return state != self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"][scriptableid];
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3b4d
// Size: 0x70
function private function_a2ff3959a0b6827e(scriptableid) {
    if (function_5bcad624c23d5c6f()) {
        state = self.var_e7a9752e4f4c7d97["mtx_scriptable_toggle_ids"][scriptableid];
        if (state == "toggle0") {
            newstate = "toggle1";
        } else {
            newstate = "toggle0";
        }
        self setscriptablepartstate(scriptableid, newstate);
        self.var_e7a9752e4f4c7d97["mtx_scriptable_toggle_ids"][scriptableid] = newstate;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3bc5
// Size: 0x18, Type: bool
function private function_5bcad624c23d5c6f() {
    if (!self.var_e7a9752e4f4c7d97["vfx_enabled"]) {
        return false;
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1
// Checksum 0x0, Offset: 0x3be6
// Size: 0x5e, Type: bool
function function_bb839bb513295f10(weapon) {
    if (!isdefined(weapon)) {
        return false;
    }
    if (!isdefined(weapon.basename) || !isdefined(weapon.variantid)) {
        return false;
    }
    if (weapon.basename == "iw9_me_sword01_mp" && weapon.variantid == 2) {
        return true;
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3c4d
// Size: 0x16
function private function_2627a7eaeb3541e5(weapon) {
    return weapon hasattachment("cos_iw9_156");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3c6c
// Size: 0x10
function private function_d0003cb59ba90631(weapon) {
    return "flameSkullActive";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3c85
// Size: 0x16
function private function_1d7a9b121434df64(weapon) {
    return weapon hasattachment("cos_iw9_445");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3ca4
// Size: 0x16
function private function_763547f85193043(weapon) {
    return weapon hasattachment("cos_iw9_465");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3cc3
// Size: 0x16
function private function_244de2be6dd725f3(weapon) {
    return weapon hasattachment("cos_iw9_446");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3ce2
// Size: 0x10
function private function_9dba84e77ba81e68(weapon) {
    return "crystalSkullActive";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3cfb
// Size: 0x10
function private function_9e037532d806bfaf(weapon) {
    return "starlightActive";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3d14
// Size: 0x10
function private function_7ac629d7829da1df(weapon) {
    return "soulEaterActive";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3d2d
// Size: 0x1b
function private function_882b5ea6e5345b31() {
    return function_6e3b6fe1ed05b664("stage1", "stage2", @"hash_a0c0a5bf060c7bf2");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3d51
// Size: 0x10f
function private function_6e3b6fe1ed05b664(stage1, stage2, debugdvar) {
    stage1killthreshold = level.var_40e77024dc6bae59["match_kill_thresholds_2stage"][0];
    stage2killthreshold = level.var_40e77024dc6bae59["match_kill_thresholds_2stage"][1];
    state = "neutral";
    if (self.var_e7a9752e4f4c7d97["match_kills"] >= stage2killthreshold) {
        state = stage2;
    } else if (self.var_e7a9752e4f4c7d97["match_kills"] >= stage1killthreshold) {
        state = stage1;
    }
    /#
        debugstates = getdvarint(debugdvar);
        if (debugstates >= 0) {
            switch (debugstates) {
            case 0:
                state = "<dev string:x96>";
                break;
            case 1:
                state = stage1;
                break;
            case 2:
                state = stage2;
                break;
            default:
                assertmsg("<dev string:x9e>");
                break;
            }
        }
    #/
    return state;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3e69
// Size: 0x1b
function private function_7e8329133ea16786() {
    return function_b7ea1ae194665383("stage1", "stage2", @"hash_e5d7c5b83ec14d85");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3e8d
// Size: 0x10f
function private function_b7ea1ae194665383(stage1, stage2, debugdvar) {
    stage1killthreshold = level.var_40e77024dc6bae59["kill_streak_thresholds_2stage"][0];
    stage2killthreshold = level.var_40e77024dc6bae59["kill_streak_thresholds_2stage"][1];
    state = "neutral";
    if (self.var_e7a9752e4f4c7d97["kill_streak"] >= stage2killthreshold) {
        state = stage2;
    } else if (self.var_e7a9752e4f4c7d97["kill_streak"] >= stage1killthreshold) {
        state = stage1;
    }
    /#
        debugstates = getdvarint(debugdvar);
        if (debugstates >= 0) {
            switch (debugstates) {
            case 0:
                state = "<dev string:x96>";
                break;
            case 1:
                state = stage1;
                break;
            case 2:
                state = stage2;
                break;
            default:
                assertmsg("<dev string:x9e>");
                break;
            }
        }
    #/
    return state;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3fa5
// Size: 0x2f
function private function_777eed4426971f45() {
    return function_ad8d1b9c1ea44000("reactive_downgradable_kill_streak_3stage", "stage1", "stage1_dec", "stage2", "stage2_dec", "stage3", @"hash_e001a97b368816c9");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 7, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x3fdd
// Size: 0x24a
function private function_ad8d1b9c1ea44000(part, stage1, stage1_dec, stage2, stage2_dec, stage3, debugdvar) {
    stage1killthreshold = level.var_40e77024dc6bae59["downgradable_kill_streak_thresholds_3stage"][0];
    stage2killthreshold = level.var_40e77024dc6bae59["downgradable_kill_streak_thresholds_3stage"][1];
    stage3killthreshold = level.var_40e77024dc6bae59["downgradable_kill_streak_thresholds_3stage"][2];
    var_31ab0ca66477a686 = getdvarint(@"hash_19443de5a3697190", -1);
    var_6ea0f438ba552065 = getdvarint(@"hash_7b707b9e08a2a8fd", -1);
    var_141b73584fb989b0 = getdvarint(@"hash_e225d9e8775ceae", -1);
    if (var_31ab0ca66477a686 >= 0) {
        stage1killthreshold = var_31ab0ca66477a686;
    }
    if (var_6ea0f438ba552065 >= 0) {
        stage2killthreshold = var_6ea0f438ba552065;
    }
    if (var_141b73584fb989b0 >= 0) {
        stage3killthreshold = var_141b73584fb989b0;
    }
    curstate = self getscriptablepartstate(part, 0);
    state = undefined;
    if (self.var_e7a9752e4f4c7d97["downgradable_kill_streak"] >= stage3killthreshold) {
        state = stage3;
    } else if (self.var_e7a9752e4f4c7d97["downgradable_kill_streak"] >= stage2killthreshold) {
        if (curstate == stage3 || curstate == stage2_dec) {
            state = stage2_dec;
        } else {
            state = stage2;
        }
    } else if (self.var_e7a9752e4f4c7d97["downgradable_kill_streak"] >= stage1killthreshold) {
        if (curstate == stage3 || curstate == stage2 || curstate == stage2_dec || curstate == stage1_dec) {
            state = stage1_dec;
        } else {
            state = stage1;
        }
    } else {
        state = "neutral";
    }
    /#
        debugstates = getdvarint(debugdvar);
        if (debugstates >= 0) {
            switch (debugstates) {
            case 0:
                state = "<dev string:x96>";
                break;
            case 1:
                state = stage1;
                break;
            case 2:
                state = stage2;
                break;
            case 3:
                state = stage3;
                break;
            default:
                assertmsg("<dev string:xc2>");
                break;
            }
        }
    #/
    thread mtx_monitorreactivekillstreak3stagedecay();
    return state;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4230
// Size: 0xb2
function private mtx_monitorreactivekillstreak3stagedecay() {
    self notify("mtx_monitorReactiveKillstreak3StageDecay");
    self endon("death_or_disconnect");
    self endon("mtx_monitorReactiveKillstreak3StageDecay");
    decaytime = getdvarfloat(@"hash_17bc5fdc392ba0b3", 20000) / 1000;
    while (true) {
        wait decaytime;
        /#
            debugstates = -1;
            debugstates = getdvarint(@"hash_e001a97b368816c9");
            if (debugstates >= 0) {
                self notify("<dev string:xe9>");
            }
        #/
        self.var_e7a9752e4f4c7d97["downgradable_kill_streak"]--;
        if (self.var_e7a9752e4f4c7d97["downgradable_kill_streak"] < 0) {
            self.var_e7a9752e4f4c7d97["downgradable_kill_streak"] = 0;
        }
        thread function_ba3a5a6cdabc71f0("reactive_downgradable_kill_streak_3stage");
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x42ea
// Size: 0xb9
function private function_d05f99b2455baa0a() {
    stage1killthreshold = level.var_40e77024dc6bae59["kill_streak_thresholds_souleater"];
    state = "neutral";
    if (self.var_e7a9752e4f4c7d97["souls_collected_count"] >= stage1killthreshold) {
        state = "stage1";
    }
    /#
        debugstates = getdvarint(@"hash_cf86c6012f506ac8");
        if (debugstates >= 0) {
            switch (debugstates) {
            case 0:
                state = "<dev string:x96>";
                break;
            case 1:
                state = "<dev string:x112>";
                break;
            default:
                assertmsg("<dev string:x119>");
                break;
            }
        }
    #/
    return state;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x43ac
// Size: 0x82
function private function_40c8094dda4e218f() {
    /#
        debugstates = getdvarint(@"hash_beff73861be066d");
        if (debugstates >= 0) {
            switch (debugstates) {
            case 0:
                return "<dev string:x96>";
            case 1:
                return "<dev string:x112>";
            default:
                assertmsg("<dev string:x13a>" + debugstates + "<dev string:x157>");
                break;
            }
        }
    #/
    return self.var_e7a9752e4f4c7d97["movement_state"];
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4437
// Size: 0x25
function private getweaponname(weapon) {
    if (isdefined(weapon)) {
        return weapon.basename;
    }
    return "NONE";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4464
// Size: 0xc5
function private function_7ec064f982949e9() {
    /#
        debugstates = getdvarint(@"hash_8d73f9a1e40b4f01");
        if (debugstates >= 0) {
            switch (debugstates) {
            case 0:
                return "<dev string:x96>";
            case 1:
                return "<dev string:x112>";
            default:
                assertmsg("<dev string:x188>" + debugstates + "<dev string:x157>");
                break;
            }
        }
    #/
    weaponname = getweaponname(self.currentweapon);
    weaponstate = self.var_e7a9752e4f4c7d97["enchanted_weapons"][weaponname];
    if (isdefined(weaponstate) && weaponstate == 1) {
        return "stage1";
    }
    return "neutral";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4531
// Size: 0x4d, Type: bool
function private ismovementoperator() {
    if (isdefined(self.operatorcustomization) && isdefined(self.operatorcustomization.skinref)) {
        if (self.operatorcustomization.skinref + "" == "370") {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4587
// Size: 0x45, Type: bool
function private ismovementweapon(weapon) {
    if (isdefined(weapon) && weapon.basename == "iw9_sm_aviktor_mp") {
        return (isdefined(weapon.variantid) && weapon.variantid == 25);
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x45d5
// Size: 0x2f
function private function_81837d4d838c9fe4() {
    if (function_ee73ce9f8e9e7938(self.currentweapon)) {
        thread function_dd5e7e7d9dcdc45(self.currentweapon);
        return;
    }
    function_30f8126cb8555725();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x460c
// Size: 0x6b, Type: bool
function private function_ee73ce9f8e9e7938(weapon) {
    /#
        bypass = getdvarint(@"hash_d5bfe694a8598141");
        if (bypass == 1) {
            return true;
        }
    #/
    if (isdefined(weapon) && weapon.basename == "iw9_sn_india_mp") {
        return (isdefined(weapon.variantid) && weapon.variantid == 14);
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4680
// Size: 0x67
function private function_dd5e7e7d9dcdc45(weapon) {
    self notify("inspect_update_thread");
    self endon("death_or_disconnect");
    self endon("inspect_update_thread");
    weaponname = weapon.basename;
    function_ba3a5a6cdabc71f0("reactive_enchantment");
    while (true) {
        self waittill("weapon_inspect");
        function_670fe78573af87eb(weaponname);
        function_ba3a5a6cdabc71f0("reactive_enchantment");
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x46ef
// Size: 0x7f
function private function_1279657a7f30ae15(state) {
    if (!function_ee73ce9f8e9e7938(self.currentweapon) || !isdefined(self.var_e7a9752e4f4c7d97["enchanted_weapons"])) {
        return;
    }
    if (state != 0 && state != 1) {
        assertmsg("Enchantment state set to <" + state + ">, valid values are 0 or 1 ints");
    }
    self.var_e7a9752e4f4c7d97["enchanted_weapons"][getweaponname(self.currentweapon)] = state;
    function_6d5278c2d03fa5df();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4776
// Size: 0x3a
function private function_670fe78573af87eb(weaponname) {
    currentstate = function_7ec064f982949e9();
    if (currentstate == "neutral") {
        function_1279657a7f30ae15(1);
        return;
    }
    function_1279657a7f30ae15(0);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x47b8
// Size: 0xa
function private function_30f8126cb8555725() {
    self notify("inspect_update_thread");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x47ca
// Size: 0x30
function private function_e6c5c00872a14e28() {
    if (ismovementoperator() || ismovementweapon(self.currentweapon)) {
        thread function_e6a59e9b581f1af6();
        return;
    }
    function_d9c8739eb93ab7d9();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4802
// Size: 0x112
function private function_e6a59e9b581f1af6() {
    self notify("movement_update_thread");
    self endon("death_or_disconnect");
    self endon("movement_update_thread");
    currentstate = self.var_e7a9752e4f4c7d97["movement_state"];
    var_8224573f9ab4d7a8 = 0;
    while (true) {
        movement = self getnormalizedmovement();
        movement = abs(movement[0]) + abs(movement[1]);
        if (movement > 0.7 && !self playerads() > 0 && self getstance() == "stand") {
            var_8224573f9ab4d7a8 = 1;
        } else {
            var_8224573f9ab4d7a8 = 0;
        }
        if (self issprinting() || !self isonground() || self isdiving() || self issprintsliding() || var_8224573f9ab4d7a8) {
            targetstate = "neutral";
            delaytime = 0;
        } else {
            targetstate = "stage1";
            delaytime = 0;
        }
        if (currentstate != targetstate) {
            childthread function_7ae9c5df682996ef(targetstate, delaytime);
            currentstate = targetstate;
        }
        wait 0.1;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x491c
// Size: 0x41
function private function_7ae9c5df682996ef(state, delaytime) {
    self notify("newMovementState");
    self endon("newMovementState");
    wait delaytime;
    self.var_e7a9752e4f4c7d97["movement_state"] = state;
    function_ba3a5a6cdabc71f0("reactive_movement");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4965
// Size: 0xa
function private function_d9c8739eb93ab7d9() {
    self notify("movement_update_thread");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4977
// Size: 0xe7
function private function_b4ebf862900a4d38() {
    self notify("updating_reactive_kills");
    self endon("death_or_disconnect");
    self endon("updating_reactive_kills");
    if (!isdefined(self getscriptablepartstate("reactive_kill", 1))) {
        println("<dev string:x1a8>");
        return;
    }
    while (true) {
        time = gettime();
        timesincelastkill = time - self.var_e7a9752e4f4c7d97["last_reactive_kill_time"];
        if (timesincelastkill >= 600) {
            if (self.var_e7a9752e4f4c7d97["match_kills"] > self.var_e7a9752e4f4c7d97["reactive_kills"]) {
                function_a2ff3959a0b6827e("reactive_kill");
                self.var_e7a9752e4f4c7d97["last_reactive_kill_time"] = time;
                self.var_e7a9752e4f4c7d97["reactive_kills"]++;
            } else {
                return;
            }
            waittime = 0.6;
        } else {
            waittime = (600 - timesincelastkill) / 1000;
        }
        wait waittime;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4a66
// Size: 0x3b
function private function_a71517a0b579ed46(weapon) {
    if (function_b376b213145194d3(weapon)) {
        thread function_e56763dbb208985c(weapon);
    }
    if (function_70d9fde7ab8fe4f4(weapon)) {
        thread function_3d36736882540029(weapon);
        return;
    }
    function_bcdeea59d1c8c709();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4aa9
// Size: 0x26, Type: bool
function private function_ab36993386930071(weapon) {
    if (function_a124f473c9b83542(weapon)) {
        return true;
    }
    if (function_74ee609c2cece3b0(weapon)) {
        return true;
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4ad8
// Size: 0x32, Type: bool
function private function_70d9fde7ab8fe4f4(weapon) {
    /#
        bypass = getdvarint(@"hash_d5b99091b7c0443e");
        if (bypass == 1) {
            return true;
        }
    #/
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4b13
// Size: 0x32
function private function_1ade8d50b72171d2() {
    self setclientomnvar("ui_reticle_mtx_action2", self.var_e7a9752e4f4c7d97["match_kills"]);
    self.var_e7a9752e4f4c7d97["last_reticle_kill_time"] = gettime();
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4b4d
// Size: 0x1d
function private function_b92e7556d13a2d52() {
    self setclientomnvar("ui_reticle_mtx_action2", self.var_e7a9752e4f4c7d97["souls_collected_count"]);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4b72
// Size: 0x2d
function private function_6d5278c2d03fa5df() {
    self setclientomnvar("ui_reticle_mtx_inspect", self.var_e7a9752e4f4c7d97["enchanted_weapons"][getweaponname(self.currentweapon)]);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4ba7
// Size: 0x1d
function private function_511d0cb4a6fe51d2() {
    self setclientomnvar("ui_reticle_mtx_focus", self.var_e7a9752e4f4c7d97["mtx_focus"]);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4bcc
// Size: 0x89
function private function_3d36736882540029(weapon) {
    self notify("mtx_focus_thread");
    self endon("death_or_disconnect");
    self endon("mtx_focus_thread");
    self endon("weapon_change");
    function_35c927994920a75("mtx_focus", 0);
    focusstate = 0;
    while (true) {
        if (isdefined(self.focus) && focusstate != self.focus) {
            focusstate = self.focus;
            self.var_e7a9752e4f4c7d97["mtx_focus"] = focusstate;
            function_511d0cb4a6fe51d2();
        }
        waitframe();
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4c5d
// Size: 0xa
function private function_bcdeea59d1c8c709() {
    self notify("mtx_focus_thread");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4c6f
// Size: 0x5b
function private function_e56763dbb208985c(weapon) {
    function_35c927994920a75("hearts_broken", 0);
    function_35c927994920a75("hearts_broken_incrementing", 0);
    if (function_f2626cc5d4205f(weapon)) {
        self setclientomnvar("ui_reticle_mtx_action2", self.var_e7a9752e4f4c7d97["hearts_broken"]);
        return;
    }
    self setclientomnvar("ui_reticle_mtx_action2", -1);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4cd2
// Size: 0x9e
function private function_bb48ea90ef425e51() {
    self endon("death_or_disconnect");
    self.var_e7a9752e4f4c7d97["hearts_broken"]++;
    if (self.var_e7a9752e4f4c7d97["hearts_broken_incrementing"]) {
        return;
    }
    self.var_e7a9752e4f4c7d97["hearts_broken_incrementing"] = 1;
    wait 0.1;
    while (true) {
        currentcount = self getclientomnvar("ui_reticle_mtx_action2");
        if (currentcount >= self.var_e7a9752e4f4c7d97["hearts_broken"]) {
            self.var_e7a9752e4f4c7d97["hearts_broken_incrementing"] = 0;
            return;
        }
        self setclientomnvar("ui_reticle_mtx_action2", currentcount + 1);
        wait 0.57;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4d78
// Size: 0x45
function private function_db40ec5717136688() {
    if (isdefined(self.var_e7a9752e4f4c7d97) && isdefined(self.var_e7a9752e4f4c7d97["hearts_broken"])) {
        self.var_e7a9752e4f4c7d97["hearts_broken"] = 0;
        self.var_e7a9752e4f4c7d97["hearts_broken_incrementing"] = 0;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4dc5
// Size: 0x3e, Type: bool
function private function_b376b213145194d3(weapon) {
    return isdefined(weapon.scope) && weapon.scope == "hybrid03" && weapon.scopevarindex == 4;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4e0c
// Size: 0x3e, Type: bool
function private function_a124f473c9b83542(weapon) {
    return isdefined(weapon.scope) && weapon.scope == "reflex02_tall" && weapon.scopevarindex == 27;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4e53
// Size: 0x89, Type: bool
function private function_74ee609c2cece3b0(weapon) {
    if (isdefined(weapon.scope)) {
        if (gettime() - self.var_e7a9752e4f4c7d97["last_reticle_kill_time"] > 1770) {
            if (weapon.scope == "reflex07_tall" && weapon.scopevarindex == 18) {
                return true;
            }
            if (weapon.scope == "fourx02" && weapon.scopevarindex == 11) {
                return true;
            }
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4ee5
// Size: 0x3e, Type: bool
function private function_78edd771b80bb678(weapon) {
    return isdefined(weapon.scope) && weapon.scope == "bar_ar_longhvy_scope_p52" && weapon.scopevarindex == 1;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x4f2c
// Size: 0x3e, Type: bool
function private function_69ddd69e3aa4e4c9(weapon) {
    return isdefined(weapon.scope) && weapon.scope == "fourx04" && weapon.scopevarindex == 13;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x4f73
// Size: 0xc, Type: bool
function private function_ea45a0c788f3200c(weapon) {
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4f88
// Size: 0x3e, Type: bool
function private function_f2626cc5d4205f(weapon) {
    return isdefined(weapon.modifier) && weapon.modifier == "ammo_9s" && weapon.modifiervarindex == 2;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x4fcf
// Size: 0x36, Type: bool
function private function_1b1244617e1e02e9(weapon, meansofdeath) {
    return function_b376b213145194d3(weapon) && function_f2626cc5d4205f(weapon) && isdefined(meansofdeath) && meansofdeath != "MOD_MELEE";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x500e
// Size: 0x3e, Type: bool
function private function_35f65f87520b27c7(objweapon) {
    return isdefined(objweapon.modifier) && objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 2;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5055
// Size: 0x3e, Type: bool
function private function_44af174fb8b3375a(objweapon) {
    return isdefined(objweapon.modifier) && objweapon.modifier == "ammo_50b" && objweapon.modifiervarindex == 1;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x509c
// Size: 0x3e, Type: bool
function private function_322b81ee84a7c335(objweapon) {
    return isdefined(objweapon.modifier) && objweapon.modifier == "ammo_bolt_gas" && objweapon.modifiervarindex == 1;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x50e3
// Size: 0x6d, Type: bool
function private function_876682da843d662f(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 3) {
            return true;
        }
        if (objweapon.modifier == "ammo_762s_hv" && objweapon.modifiervarindex == 1) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5159
// Size: 0x3e, Type: bool
function private function_88d1b8b5885326c9(objweapon) {
    return isdefined(objweapon.modifier) && objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 5;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x51a0
// Size: 0x3e, Type: bool
function private function_be4d915ec8789015(objweapon) {
    return isdefined(objweapon.modifier) && objweapon.modifier == "ammo_338nm_hv" && objweapon.modifiervarindex == 1;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x51e7
// Size: 0x6d, Type: bool
function private function_d82f09c700769a23(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_9p" && objweapon.modifiervarindex == 7) {
            return true;
        }
        if (objweapon.modifier == "ammo_5x28" && objweapon.modifiervarindex == 2) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x525d
// Size: 0x6d, Type: bool
function private function_10c37a77a215e653(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_4x30" && objweapon.modifiervarindex == 2) {
            return true;
        }
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 13) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x52d3
// Size: 0x6d, Type: bool
function private function_a5719d2611ccb58b(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_45acp" && objweapon.modifiervarindex == 5) {
            return true;
        }
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 19) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5349
// Size: 0x6d, Type: bool
function private function_be8fb6c49c81dcf6(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_50b" && objweapon.modifiervarindex == 3) {
            return true;
        }
        if (objweapon.modifier == "ammo_5x28" && objweapon.modifiervarindex == 4) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x53bf
// Size: 0x6d, Type: bool
function private function_d16a994853c4015e(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_556n_p43" && objweapon.modifiervarindex == 7) {
            return true;
        }
        if (objweapon.modifier == "ammo_12g" && objweapon.modifiervarindex == 2) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5435
// Size: 0x3e, Type: bool
function private function_7b6c0e34238a0cfa(objweapon) {
    return isdefined(objweapon.modifier) && objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 6;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x547c
// Size: 0xce, Type: bool
function private function_2068876afa7ffdc2(objweapon) {
    if (isdefined(objweapon.basename)) {
        switch (objweapon.basename) {
        case #"hash_c7a00ceeee2cd52":
        case #"hash_9702698078eb7241":
        case #"hash_b10f0ebdc1fb569b":
        case #"hash_d8fc49c2b6acc257":
            return true;
        default:
            break;
        }
    }
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_277f" && objweapon.modifiervarindex == 1) {
            return true;
        }
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 12) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5553
// Size: 0x3e, Type: bool
function private function_6b4eebd31e8d283d(objweapon) {
    return isdefined(objweapon.modifier) && objweapon.modifier == "ammo_12g" && objweapon.modifiervarindex == 3;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x559a
// Size: 0x6d, Type: bool
function private function_3b499b70dcadea7(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_277f_cp" && objweapon.modifiervarindex == 1) {
            return true;
        }
        if (objweapon.modifier == "ammo_408c" && objweapon.modifiervarindex == 1) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5610
// Size: 0x6d, Type: bool
function private function_dcf8ef2cc3ba7666(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 11) {
            return true;
        }
        if (objweapon.modifier == "ammo_50b_he" && objweapon.modifiervarindex == 2) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5686
// Size: 0x6d, Type: bool
function private function_f78733b19768dd1c(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_408c" && objweapon.modifiervarindex == 3) {
            return true;
        }
        if (objweapon.modifier == "ammo_545s" && objweapon.modifiervarindex == 3) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x56fc
// Size: 0x6d, Type: bool
function private function_cd4c63d7f51297ac(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 15) {
            return true;
        }
        if (objweapon.modifier == "ammo_300nm_hv" && objweapon.modifiervarindex == 4) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5772
// Size: 0x7d, Type: bool
function private function_41e8cf00b189fe93(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_556n_hv" && objweapon.modifiervarindex == 8) {
            return true;
        }
        if (objweapon.modifier == "ammo_9p" && objweapon.modifiervarindex == 10) {
            return true;
        }
    } else if (function_36ee14b7476fd18c(objweapon)) {
        return true;
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x57f8
// Size: 0x3e, Type: bool
function private function_36ee14b7476fd18c(objweapon) {
    return objweapon.basename == "throwingknife_mp" && isdefined(objweapon.variantid) && objweapon.variantid == 1;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x583f
// Size: 0x44, Type: bool
function private isSoulEaterMeleeDeath(objweapon) {
    if (isdefined(objweapon.receiver)) {
        if (objweapon.receiver == "iw9_me_knife" && objweapon.receivervarindex == 39) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x588c
// Size: 0x44, Type: bool
function private isNoirMeleeDeath(objweapon) {
    if (isdefined(objweapon.receiver)) {
        if (objweapon.receiver == "iw9_me_sword01" && objweapon.receivervarindex == 4) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x58d9
// Size: 0x6d, Type: bool
function private function_2a39a3e5a451239e(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_45acp" && objweapon.modifiervarindex == 3) {
            return true;
        }
        if (objweapon.modifier == "ammo_300wm_hv" && objweapon.modifiervarindex == 4) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x594f
// Size: 0x6d, Type: bool
function private function_f2ab411194e3af0b(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 17) {
            return true;
        }
        if (objweapon.modifier == "ammo_12g" && objweapon.modifiervarindex == 5) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x59c5
// Size: 0x6d, Type: bool
function private function_fa73d41da55ed368(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_blk_ap_p43" && objweapon.modifiervarindex == 1) {
            return true;
        }
        if (objweapon.modifier == "ammo_50p" && objweapon.modifiervarindex == 2) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5a3b
// Size: 0x44, Type: bool
function private function_3530b11955a74bae(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_408c_he" && objweapon.modifiervarindex == 2) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5a88
// Size: 0xd2, Type: bool
function private function_66bd08d233abc229(objweapon) {
    if (isdefined(objweapon.basename) && (objweapon.basename == "super_laser_charge_mp" || objweapon.basename == "high_jump_mp")) {
        return true;
    }
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_556n" && objweapon.modifiervarindex == 22) {
            return true;
        }
        if (objweapon.modifier == "ammo_556n_p43" && objweapon.modifiervarindex == 24) {
            return true;
        }
        if (objweapon.modifier == "ammo_5x28" && objweapon.modifiervarindex == 3) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5b63
// Size: 0x6d, Type: bool
function private function_662ae8585ca5045d(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_408c_he" && objweapon.modifiervarindex == 3) {
            return true;
        }
        if (objweapon.modifier == "ammo_blk" && objweapon.modifiervarindex == 4) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5bd9
// Size: 0x22, Type: bool
function private function_8dcf23df7efcf5f8(objweapon) {
    return isdefined(objweapon) && objweapon.basename == "jup_pi_goldengun_mp";
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5c04
// Size: 0x6d, Type: bool
function private function_43765ffd912971f9(objweapon) {
    if (isdefined(objweapon.modifier)) {
        if (objweapon.modifier == "ammo_12g" && objweapon.modifiervarindex == 11) {
            return true;
        }
        if (objweapon.modifier == "ammo_277f" && objweapon.modifiervarindex == 4) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5c7a
// Size: 0x34, Type: bool
function private function_36f3c1f20204b13(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "youveBeenNaughty_limb", "youveBeenNaughty_torso", "youveBeenNaughty_head");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5cb7
// Size: 0x34, Type: bool
function private function_777c1f2e7f15d92e(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "youveBeenNice_limb", "youveBeenNice_torso", "youveBeenNice_head");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5cf4
// Size: 0x34, Type: bool
function private function_337b80f7ff25b0c9(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "vDay_limb", "vDay_torso", "vDay_head");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5d31
// Size: 0x56, Type: bool
function private function_1a406edd298ed8ad(corpstable, attacker, hitloc) {
    if (isdismembermentenabled()) {
        function_687ba52e53e097ac(corpstable, "bCell_limb", "bCell_torso", "bCell_head");
    } else {
        function_687ba52e53e097ac(corpstable, "bCell_nogore_limb", "bCell_nogore_torso", "bCell_nogore_head");
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5d90
// Size: 0x29, Type: bool
function private function_f7bca22a37224d8b(corpstable, attacker, hitloc) {
    function_dfcee2ebe02a6ae7(corpstable, "purple_shock");
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5dc2
// Size: 0x34, Type: bool
function private function_583f9260e6221231(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "paddy_limb", "paddy_torso", "paddy_head");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5dff
// Size: 0x29, Type: bool
function private function_1b5dfb950d2e6dd2(corpstable, attacker, hitloc) {
    function_dfcee2ebe02a6ae7(corpstable, "shredder");
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5e31
// Size: 0x34, Type: bool
function private function_436125459cf039e(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "sbandit_limb", "sbandit_torso", "sbandit_head");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5e6e
// Size: 0x56, Type: bool
function private function_f98648e1dc6e63cf(corpstable, attacker, hitloc) {
    if (isdismembermentenabled()) {
        function_687ba52e53e097ac(corpstable, "easter_limb", "easter_torso", "easter_head");
    } else {
        function_687ba52e53e097ac(corpstable, "easter_nogore_limb", "easter_nogore_torso", "easter_nogore_head");
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5ecd
// Size: 0x29, Type: bool
function private function_f3274abe8bbcac04(corpstable, attacker, hitloc) {
    function_dfcee2ebe02a6ae7(corpstable, "electricAnime");
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5eff
// Size: 0x45, Type: bool
function private function_52506c3cfde54aa7(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "scifi_limb", "scifi_torso", "scifi_head");
    function_988bd2fed09e41c("tag_origin", "scifi_origin");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5f4d
// Size: 0x45, Type: bool
function private function_38f459f70ea411a7(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "scifi2_limb", "scifi2_torso", "scifi2_head");
    function_988bd2fed09e41c("tag_origin", "scifi2_origin");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5f9b
// Size: 0x45, Type: bool
function private function_2d04b4ad2bc66462(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "scifi3_limb", "scifi3_torso", "scifi3_head");
    function_988bd2fed09e41c("tag_origin", "scifi3_origin");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x5fe9
// Size: 0x2d, Type: bool
function private function_fd4087de9db4cdf1(corpstable, attacker, hitloc) {
    function_988bd2fed09e41c("j_spineupper", "420_death");
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x601f
// Size: 0x2d, Type: bool
function private function_a02b4e369b2cbcb3(corpstable, attacker, hitloc) {
    function_988bd2fed09e41c("j_spineupper", "hitscan");
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6055
// Size: 0x47, Type: bool
function private function_3e92a8e47dbf91aa(corpstable, attacker, hitloc) {
    function_988bd2fed09e41c("tag_origin", "thor");
    function_988bd2fed09e41c("j_spineupper", "thor_chest");
    delete_corpse(corpstable);
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x60a5
// Size: 0x29, Type: bool
function private function_bdcfc88e185572c8(corpstable, attacker, hitloc) {
    function_dfcee2ebe02a6ae7(corpstable, "kd");
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x60d7
// Size: 0x29, Type: bool
function private function_1ebe98051052c08(corpstable, attacker, hitloc) {
    function_dfcee2ebe02a6ae7(corpstable, "cdl");
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6109
// Size: 0x5c
function private function_362790d530cb554f(corpstable, attacker, hitloc) {
    deletebody = 0;
    function_687ba52e53e097ac(corpstable, "soulEater_limb", "soulEater_torso", "soulEater_head", undefined, deletebody);
    function_988bd2fed09e41c("tag_origin", "soulEater_death");
    attacker thread function_694e1b7805093c52(corpstable);
    return deletebody;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x616e
// Size: 0x34, Type: bool
function private function_ff45d70ef7fd700a(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "crash_limb", "crash_torso", "crash_head");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x61ab
// Size: 0x36, Type: bool
function private function_a93d4e4d31895d77(corpstable, attacker, hitloc) {
    function_988bd2fed09e41c("tag_origin", "akihabara_fatal");
    delete_corpse(corpstable);
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x61ea
// Size: 0x37, Type: bool
function private function_836e832ef348cb0c(corpstable, attacker, hitloc) {
    if (corpstable isscriptable()) {
        corpstable setscriptablepartstate("burning", "flareup", 0);
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x622a
// Size: 0x56, Type: bool
function private function_f6820874f2f4b7fa(corpstable, attacker, hitloc) {
    if (isdismembermentenabled()) {
        function_687ba52e53e097ac(corpstable, "cthulhu_limb", "cthulhu_torso", "cthulhu_head");
    } else {
        function_687ba52e53e097ac(corpstable, "cthulhu_nogore_limb", "cthulhu_nogore_torso", "cthulhu_nogore_head");
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6289
// Size: 0x56, Type: bool
function private function_487ad6a4de40bcf5(corpstable, attacker, hitloc) {
    if (isdismembermentenabled()) {
        function_687ba52e53e097ac(corpstable, "hlander_limb", "hlander_torso", "hlander_head");
    } else {
        function_687ba52e53e097ac(corpstable, "hlander_nogore_limb", "hlander_nogore_torso", "hlander_nogore_head");
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x62e8
// Size: 0x43, Type: bool
function private function_ae90d417fbdba2a9(corpstable, attacker, hitloc) {
    if (hitloc == "head") {
        function_dfcee2ebe02a6ae7(corpstable, "bnoir_head");
    } else {
        function_dfcee2ebe02a6ae7(corpstable, "bnoir");
    }
    return false;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6334
// Size: 0x45, Type: bool
function private function_ce2c35cf68d5b3fc(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "golden_gun_limb", "golden_gun_torso", "golden_gun_head");
    function_988bd2fed09e41c("tag_origin", "golden_gun_origin");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6382
// Size: 0x34, Type: bool
function private function_98c6559ade501e3d(corpstable, attacker, hitloc) {
    function_687ba52e53e097ac(corpstable, "nicki_limb", "nicki_torso", "nicki_head");
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x63bf
// Size: 0xef
function private function_694e1b7805093c52(corpstable) {
    soulent = spawn("script_model", corpstable.origin + (0, 0, 40));
    soulent setmodel("vfx_scriptable_souleater");
    soulent function_fca5bdbe24070d20("soulEater", self.team);
    self.var_e7a9752e4f4c7d97["soul_ents_in_flight"] = array_add(self.var_e7a9752e4f4c7d97["soul_ents_in_flight"], soulent);
    success = function_f9ffc273b1f19a07(soulent);
    if (istrue(success)) {
        thread function_54eaad56eecc69e2();
    } else {
        function_671264d7659ab6ab(soulent);
    }
    if (isdefined(soulent)) {
        if (isdefined(self) && isdefined(self.var_e7a9752e4f4c7d97)) {
            self.var_e7a9752e4f4c7d97["soul_ents_in_flight"] = array_remove(self.var_e7a9752e4f4c7d97["soul_ents_in_flight"], soulent);
        }
        soulent delete();
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x4
// Checksum 0x0, Offset: 0x64b6
// Size: 0x4c
function private function_c30cfdffd08468e1() {
    self notify("stop_soulweapon_swap_logic");
    self endon("stop_soulweapon_swap_logic");
    self endon("death_or_disconnet");
    level endon("game_ended");
    while (true) {
        self waittill("weapon_switch_started", weapon);
        if (!function_41e8cf00b189fe93(weapon)) {
            self notify("stop_soul_suck");
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x650a
// Size: 0x319, Type: bool
function private function_f9ffc273b1f19a07(soulent) {
    self endon("death_or_disconnet");
    level endon("game_ended");
    var_27b0c9ac22b57a8a = gettime();
    movetime = function_2a5698d5505f5108(soulent);
    hovertime = function_e7680a7e93beee63(soulent, var_27b0c9ac22b57a8a, movetime);
    destinationtime = var_27b0c9ac22b57a8a + movetime + hovertime;
    soulent.destinationtime = destinationtime;
    soulent setscriptablepartstate("soulEater", "hover");
    soulent moveto(soulent.origin + (0, 0, 15), 0.7);
    wait hovertime / 1000;
    soulent setscriptablepartstate("soulEater", "suck");
    var_9f854e807c5cd5ac = gettime();
    zoffsetmax = undefined;
    yoffsetmax = undefined;
    zoffset = undefined;
    yoffset = undefined;
    baseorigin = soulent.origin;
    thread function_1dec486d84b0373(soulent, movetime);
    while (true) {
        if (!isdefined(self)) {
            return false;
        }
        timepassed = gettime() - var_9f854e807c5cd5ac;
        remainingtime = movetime - timepassed;
        timefraction = min(1, (timepassed + level.frameduration) / movetime);
        timeslice = level.frameduration * timefraction;
        if (remainingtime > timeslice) {
            movefraction = timeslice / remainingtime;
        } else {
            movefraction = 1;
        }
        if (remainingtime <= 0) {
            break;
        }
        var_f16cf0133810cf98 = factor_value(5, 0, self playerads());
        f = anglestoforward(self getplayerangles()) * 20;
        u = anglestoup(self getplayerangles()) * -9;
        r = anglestoright(self getplayerangles()) * var_f16cf0133810cf98;
        targetorigin = self geteye() + f + u + r;
        vectotarget = targetorigin - baseorigin;
        dirtotarget = vectornormalize(vectotarget);
        dist = length(vectotarget);
        if (!isdefined(zoffsetmax)) {
            zoffsetmax = function_f9bc9077b9e35705(dist);
            yoffsetmax = randomfloatrange(-1.5, 1.5) * zoffsetmax;
        }
        zoffset = function_aeac529c62ced2c0(movetime, timepassed + level.frameduration, zoffsetmax);
        yoffset = function_aeac529c62ced2c0(movetime, timepassed + level.frameduration, yoffsetmax);
        dirr = rotatevector(dirtotarget, (0, 90, 0));
        yoffset = dirr * yoffset;
        zoffset = (0, 0, zoffset);
        offset = dist * movefraction * dirtotarget;
        baseorigin += offset;
        soulent.origin = baseorigin + zoffset + yoffset;
        waitframe();
    }
    return true;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x682c
// Size: 0x5d
function private function_2a5698d5505f5108(soulent) {
    dist = length(soulent.origin - self.origin);
    factor = normalize_value(300, 2000, dist);
    return factor_value(0.4, 1, factor) * 1000;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6892
// Size: 0xd0
function private function_e7680a7e93beee63(soulent, var_27b0c9ac22b57a8a, movetime) {
    self.var_e7a9752e4f4c7d97["soul_ents_in_flight"] = array_removeundefined(self.var_e7a9752e4f4c7d97["soul_ents_in_flight"]);
    var_8b7e3d529e9eec0c = 700;
    if (self.var_e7a9752e4f4c7d97["soul_ents_in_flight"][0] == soulent) {
        return var_8b7e3d529e9eec0c;
    }
    var_2394d10885bad3ee = self.var_e7a9752e4f4c7d97["soul_ents_in_flight"][self.var_e7a9752e4f4c7d97["soul_ents_in_flight"].size - 2].destinationtime - var_27b0c9ac22b57a8a;
    var_b2caae9952cee2f5 = var_2394d10885bad3ee + 300;
    var_6957fe7344a1b0bc = var_b2caae9952cee2f5 - movetime * 1000;
    return max(var_8b7e3d529e9eec0c, var_6957fe7344a1b0bc);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x696a
// Size: 0x2e
function function_f9bc9077b9e35705(var_9c81708edcfd5d10) {
    factor = normalize_value(300, 1000, var_9c81708edcfd5d10);
    return factor_value(7, 25, factor);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 3, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x69a1
// Size: 0x68
function function_aeac529c62ced2c0(movetime, timepassed, offsetmax) {
    if (timepassed > movetime) {
        return 1;
    }
    halfmovetime = movetime * 0.5;
    if (timepassed > halfmovetime) {
        frac = (timepassed - halfmovetime) / halfmovetime;
    } else {
        frac = timepassed / halfmovetime;
        frac = 1 - frac;
    }
    frac *= frac;
    frac = 1 - frac;
    return frac * offsetmax;
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6a12
// Size: 0x65
function private function_54eaad56eecc69e2() {
    self endon("death_or_disconnet");
    level endon("game_ended");
    function_a2ff3959a0b6827e("reactive_soul_collect");
    self.var_e7a9752e4f4c7d97["souls_collected_count"]++;
    if (isdefined(self.currentweapon) && function_78edd771b80bb678(self.currentweapon)) {
        function_b92e7556d13a2d52();
    }
    wait 0.3;
    function_ba3a5a6cdabc71f0("reactive_soul_collect_1stage");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6a7f
// Size: 0x1c
function private function_671264d7659ab6ab(soulent) {
    soulent setscriptablepartstate("soulEater", "vanish");
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6aa3
// Size: 0x88
function private function_29913642fdc3e09c(corpstable) {
    linkedchildren = corpstable getlinkedchildren();
    foreach (child in linkedchildren) {
        if (isdefined(child.equipmentref) && child.equipmentref == "equip_throwing_knife") {
            child unlink();
        }
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6b33
// Size: 0x8a
function private function_1dec486d84b0373(ent, movetime) {
    self endon("death_or_disconnet");
    level endon("game_ended");
    delay_time = (movetime - 300) / 1000;
    wait delay_time;
    if (getomnvar("ui_firing_range_has_started") == 1) {
        self playsound("iw9_weap_mtx_souleater_absorb");
        return;
    }
    if (isdefined(self.team)) {
        self playsoundtoteam("iw9_weap_mtx_souleater_absorb", self.team, undefined, self);
        return;
    }
    self playsoundtoplayer("iw9_weap_mtx_souleater_absorb", self);
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 6, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6bc5
// Size: 0xd8
function private function_687ba52e53e097ac(corpstable, limbfx, torsofx, headfx, sfx, deletebody) {
    if (!isdefined(deletebody)) {
        deletebody = 1;
    }
    function_988bd2fed09e41c("j_shoulder_ri", limbfx);
    function_988bd2fed09e41c("j_shoulder_le", limbfx);
    function_988bd2fed09e41c("j_elbow_ri", limbfx);
    function_988bd2fed09e41c("j_elbow_le", limbfx);
    function_988bd2fed09e41c("j_hip_ri", limbfx);
    function_988bd2fed09e41c("j_hip_le", limbfx);
    function_988bd2fed09e41c("j_knee_ri", limbfx);
    function_988bd2fed09e41c("j_knee_le", limbfx);
    function_988bd2fed09e41c("j_spineupper", torsofx);
    function_988bd2fed09e41c("j_head", headfx);
    if (isdefined(sfx)) {
        self playsound(sfx);
    }
    if (istrue(deletebody)) {
        delete_corpse(corpstable);
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6ca5
// Size: 0x2a
function private function_dfcee2ebe02a6ae7(corpstable, state) {
    if (corpstable isscriptable()) {
        corpstable setscriptablepartstate("mtxDeath", state, 0);
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6cd7
// Size: 0x59
function private delete_corpse(corpstable) {
    if (!isdefined(corpstable)) {
        return;
    }
    function_29913642fdc3e09c(corpstable);
    if (isdefined(corpstable.targetname) && corpstable.targetname == "player_corpse") {
        corpstable hide();
        return;
    }
    if (isagent(self)) {
        thread function_faa96c1d7a25fc9c(corpstable);
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 1, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6d38
// Size: 0x18
function private function_faa96c1d7a25fc9c(corpsetable) {
    waitframe();
    if (isdefined(corpsetable)) {
        corpsetable delete();
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6d58
// Size: 0x130
function private function_988bd2fed09e41c(tag, fx) {
    if (function_92d9b05be48fe03e(self)) {
        switch (tag) {
        case #"hash_b68fa57896eba8d3":
            tag = "j_cosmetic_spine";
            break;
        case #"hash_270342211f93c022":
            tag = "j_cosmetic_shoulder_ri";
            break;
        case #"hash_274912211fcb218c":
            tag = "j_cosmetic_shoulder_le";
            break;
        case #"hash_d6c67a869aa3949f":
            tag = "j_cosmetic_elbow_ri";
            break;
        case #"hash_d70b82869ad9bb31":
            tag = "j_cosmetic_elbow_le";
            break;
        case #"hash_74dd72dc5d3dc459":
        case #"hash_74e38adc5d42674f":
            tag = "j_cosmetic_hip";
            break;
        case #"hash_87e17a385203b93f":
        case #"hash_882682385239dfd1":
            tag = "j_cosmetic_knee";
            break;
        case #"hash_de9ffaed3aaf2f50":
            tag = "j_cosmetic_head";
            break;
        }
    }
    org = self gettagorigin(tag);
    ang = self gettagangles(tag);
    playfx(level._effect[fx], org, anglestoforward(ang), anglestoup(ang));
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6e90
// Size: 0x66
function private function_5b5e6de151e0fecd(name, value) {
    function_3bd8d57c42967dfc();
    if (!isdefined(self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"])) {
        self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"] = [];
    }
    if (!isdefined(self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"][name])) {
        self.var_e7a9752e4f4c7d97["mtx_scriptable_charm_ids"][name] = value;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6efe
// Size: 0x66
function private function_4fa6004e1f4bd807(name, value) {
    function_3bd8d57c42967dfc();
    if (!isdefined(self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"])) {
        self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"] = [];
    }
    if (!isdefined(self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"][name])) {
        self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"][name] = value;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6f6c
// Size: 0x6a
function private function_68444e56728a13a6(name, value) {
    function_3bd8d57c42967dfc();
    if (!isdefined(self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"])) {
        self.var_e7a9752e4f4c7d97["mtx_scriptable_toggle_ids"] = [];
    }
    if (!isdefined(self.var_e7a9752e4f4c7d97["mtx_scriptable_generic_ids"][name])) {
        self.var_e7a9752e4f4c7d97["mtx_scriptable_toggle_ids"][name] = "toggle0";
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 2, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x6fde
// Size: 0x36
function private function_35c927994920a75(name, value) {
    function_3bd8d57c42967dfc();
    if (!isdefined(self.var_e7a9752e4f4c7d97[name])) {
        self.var_e7a9752e4f4c7d97[name] = value;
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x701c
// Size: 0x19
function private function_3bd8d57c42967dfc() {
    if (!isdefined(self.var_e7a9752e4f4c7d97)) {
        self.var_e7a9752e4f4c7d97 = [];
    }
}

// Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
// Params 0, eflags: 0x6 linked
// Checksum 0x0, Offset: 0x703d
// Size: 0x65
function private function_d4e4935b9938f870() {
    self.var_e7a9752e4f4c7d97["is_throwing_grenade"] = 0;
    self.var_e7a9752e4f4c7d97["kill_streak"] = 0;
    self.var_e7a9752e4f4c7d97["downgradable_kill_streak"] = 0;
    self.var_e7a9752e4f4c7d97["reactive_kills"] = self.var_e7a9752e4f4c7d97["match_kills"];
    self.var_e7a9752e4f4c7d97["souls_collected_count"] = 0;
}

/#

    // Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
    // Params 0, eflags: 0x4
    // Checksum 0x0, Offset: 0x70aa
    // Size: 0x1cb, Type: dev
    function private function_96be6291f27c1e20() {
        setdvar(@"hash_a0c0a5bf060c7bf2", -1);
        setdvar(@"hash_e5d7c5b83ec14d85", -1);
        setdvar(@"hash_cf86c6012f506ac8", -1);
        setdvar(@"hash_beff73861be066d", -1);
        setdvar(@"hash_4db0d2c2cd85d418", -1);
        setdvar(@"hash_2391c05a8700227f", -1);
        setdvar(@"hash_e001a97b368816c9", -1);
        setdvar(@"hash_8d73f9a1e40b4f01", -1);
        setdvar(@"hash_2ebdafd7eec10a70", -1);
        setdvar(@"hash_d5bfe694a8598141", -1);
        setdvar(@"hash_d5b99091b7c0443e", -1);
        var_bce73f6463c9b237 = -1;
        var_b43d15be227caed0 = -1;
        var_4283931c53ed41b0 = -1;
        movementstate = -1;
        var_683e84a7ba8a976f = -1;
        var_40631789cc951deb = -1;
        while (true) {
            var_bce73f6463c9b237 = function_50ea8811ea838718("<dev string:x1dd>", @"hash_a0c0a5bf060c7bf2", var_bce73f6463c9b237);
            var_b43d15be227caed0 = function_50ea8811ea838718("<dev string:x1f9>", @"hash_e5d7c5b83ec14d85", var_b43d15be227caed0);
            var_4283931c53ed41b0 = function_50ea8811ea838718("<dev string:x215>", @"hash_cf86c6012f506ac8", var_4283931c53ed41b0);
            movementstate = function_50ea8811ea838718("<dev string:x232>", @"hash_beff73861be066d", movementstate);
            var_683e84a7ba8a976f = function_50ea8811ea838718("<dev string:x244>", @"hash_e001a97b368816c9", var_683e84a7ba8a976f);
            var_40631789cc951deb = function_50ea8811ea838718("<dev string:x26d>", @"hash_8d73f9a1e40b4f01", var_40631789cc951deb);
            function_4c07717228f2249b("<dev string:x282>", @"hash_4db0d2c2cd85d418");
            function_4c07717228f2249b("<dev string:x290>", @"hash_2391c05a8700227f");
            waitframe();
        }
    }

    // Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
    // Params 3, eflags: 0x4
    // Checksum 0x0, Offset: 0x727d
    // Size: 0x82, Type: dev
    function private function_50ea8811ea838718(key, dvar, var_61a9be095f4f77ea) {
        if (getdvarint(dvar) != var_61a9be095f4f77ea) {
            foreach (player in level.players) {
                player function_ba3a5a6cdabc71f0(key);
            }
        }
        return getdvarint(dvar);
    }

    // Namespace namespace_e2785bb1da360f91 / namespace_46e942396566f2da
    // Params 2, eflags: 0x4
    // Checksum 0x0, Offset: 0x7307
    // Size: 0x7d, Type: dev
    function private function_4c07717228f2249b(key, dvar) {
        if (getdvarint(dvar) > -1) {
            foreach (player in level.players) {
                player function_a2ff3959a0b6827e(key);
            }
        }
        setdvar(dvar, -1);
    }

#/
