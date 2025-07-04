// script_3f8889c16399185c  (3F8889C16399185C.gscc) (size: 2517 Bytes / 0x9d5 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xda4d124b (3662484043)
// size ...... 2517 (0x9d5)
// includes .. 1   (offset: 0x12f)
// strings ... 8   (offset: 0x975)
// dev strs .. 0   (offset: 0x9d5)
// exports ... 15  (offset: 0x55d)
// cseg ...... 0x137 + 0x426 (0x55d)
// imports ... 13  (offset: 0x7b5)
// animtree1 . 0   (offset: 0x9d5)
// animtree2 . 0   (offset: 0x9d5)
#using scripts\engine\utility;

#namespace namespace_a131188218d8b5c3;

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 0
// Checksum 0x0, Offset: 0x13f
// Size: 0x66
function function_766b80da1f882fc3() {
    assert(isdefined(level.gamemodebundle) && isdefined(level.gamemodebundle.ranktable), "ranktable in gamemodebundle is required.");
    ranktablebundle = getscriptbundle(level.gamemodebundle.ranktable);
    assert(isdefined(ranktablebundle), "mp ranktable undefined");
    return ranktablebundle;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x1ae
// Size: 0x2d
function getrankbundle(rankbundlename) {
    rankbundle = getscriptbundle(rankbundlename);
    assert(isdefined(rankbundle), "rank bundle undefined");
    return rankbundle;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x1e4
// Size: 0x54
function function_f44d7988af879414(rankid) {
    ranktablebundle = function_766b80da1f882fc3();
    assert(length(ranktablebundle.ranklist) > rankid);
    return getrankbundle(ranktablebundle.ranklist[rankid].rank);
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x241
// Size: 0x1c
function function_cd47cbfaa2de3623(rankid) {
    return function_f44d7988af879414(rankid).var_7118a72fe332609d;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 2
// Checksum 0x0, Offset: 0x266
// Size: 0x6c
function getrankinfoicon(rankid, prestigeid) {
    ranktablebundle = function_766b80da1f882fc3();
    if (isdefined(ranktablebundle.var_cdd7517c09cf8381) && length(ranktablebundle.var_cdd7517c09cf8381) > prestigeid) {
        return ranktablebundle.var_cdd7517c09cf8381[prestigeid];
    }
    return function_f44d7988af879414(rankid).icon;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x2da
// Size: 0x1c
function getrankinfolevel(rankid) {
    return function_f44d7988af879414(rankid).ingamerank;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x2ff
// Size: 0x1d
function getrankinfominxp(rankid) {
    return int(level.ranktable[rankid][0]);
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x325
// Size: 0x1e
function getrankinfoxpamt(rankid) {
    return int(level.ranktable[rankid][1]);
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x34c
// Size: 0x1e
function getrankinfomaxxp(rankid) {
    return int(level.ranktable[rankid][2]);
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x373
// Size: 0x1c
function function_997e0cd870844c1b(rankid) {
    return function_f44d7988af879414(rankid).var_7118a72fe332609d;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 0
// Checksum 0x0, Offset: 0x398
// Size: 0x57
function getrank() {
    rankxp = self.pers["rankxp"];
    rankid = self.pers["rank"];
    if (rankxp < getrankinfominxp(rankid) + getrankinfoxpamt(rankid)) {
        return rankid;
    }
    return getrankforxp(rankxp);
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x3f7
// Size: 0x63
function getrankforxp(xpval) {
    rankid = level.maxrank;
    if (xpval >= getrankinfominxp(rankid)) {
        return rankid;
    } else {
        rankid--;
    }
    while (rankid > 0) {
        if (xpval >= getrankinfominxp(rankid) && xpval < getrankinfominxp(rankid) + getrankinfoxpamt(rankid)) {
            return rankid;
        }
        rankid--;
    }
    return rankid;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 0
// Checksum 0x0, Offset: 0x463
// Size: 0x66
function function_b1e11b17e1fbded3() {
    assert(isdefined(level.gamemodebundle) && isdefined(level.gamemodebundle.weaponranktable), "weaponranktable in gamemodebundle is required.");
    var_c6e3b34739982959 = getscriptbundle(level.gamemodebundle.weaponranktable);
    assert(isdefined(var_c6e3b34739982959), "weapon ranktable asset undefined");
    return var_c6e3b34739982959;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x4d2
// Size: 0x2d
function function_91ce54da71d1008d(rankbundlename) {
    weaponrankbundle = getscriptbundle(rankbundlename);
    assert(isdefined(weaponrankbundle), "weapon rank bundle undefined");
    return weaponrankbundle;
}

// Namespace namespace_a131188218d8b5c3 / namespace_d26d07590ff1b1d2
// Params 1
// Checksum 0x0, Offset: 0x508
// Size: 0x54
function function_6bb67ea6b4f510ed(rankid) {
    ranktablebundle = function_b1e11b17e1fbded3();
    assert(length(ranktablebundle.weaponranklist) > rankid);
    return getrankbundle(ranktablebundle.weaponranklist[rankid].rank);
}

