// scripts\common\damage_tuning.gsc  (439FA02B5251FA5B.gscc) (size: 2249 Bytes / 0x8c9 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x6c455002 (1816481794)
// size ...... 2249 (0x8c9)
// includes .. 0   (offset: 0x153)
// strings ... 5   (offset: 0x88d)
// dev strs .. 0   (offset: 0x8c9)
// exports ... 4   (offset: 0x659)
// cseg ...... 0x153 + 0x506 (0x659)
// imports ... 12  (offset: 0x6f9)
// animtree1 . 0   (offset: 0x8c9)
// animtree2 . 0   (offset: 0x8c9)
#namespace damage_tuning;

// Namespace damage_tuning / scripts\common\damage_tuning
// Params 0
// Checksum 0x0, Offset: 0x15b
// Size: 0x81
function init() {
    level.var_be6a42242be00b66 = isdefined(level.gametypebundle) && istrue(level.gametypebundle.var_53fc2c66905a7332);
    /#
        if (getdvarint(@"hash_e600610a3da3e873", 0) > 0) {
            level.var_be6a42242be00b66 = 0;
        }
    #/
    if (istrue(level.var_be6a42242be00b66) && !function_950c8234f03299d4()) {
        /#
            function_5013853947770621(#"damage tuning");
        #/
        level.var_be6a42242be00b66 = 0;
        return;
    }
}

// Namespace damage_tuning / scripts\common\damage_tuning
// Params 2
// Checksum 0x0, Offset: 0x1e4
// Size: 0x16b
function function_4a2ecb33b6adeb85(damagedata, var_e913079a5ffda56d) {
    if (!level.var_be6a42242be00b66) {
        return 0;
    }
    objweapon = damagedata.objweapon;
    meansofdeath = damagedata.meansofdeath;
    var_b66e269a387db351 = var_e913079a5ffda56d.var_b66e269a387db351;
    if (!isdefined(var_b66e269a387db351)) {
        assertmsg("Must provide disablesToKill.");
        return;
    }
    if (isstring(meansofdeath)) {
        meansofdeath = function_1823ff50bb28148d(meansofdeath);
    }
    thisweaponclass = weaponclass(objweapon);
    if (isstring(thisweaponclass)) {
        thisweaponclass = function_1823ff50bb28148d(thisweaponclass);
    }
    foreach (var_e1e1bfdd0ed6864f in var_b66e269a387db351) {
        if (isdefined(var_e1e1bfdd0ed6864f.weaponclass) && var_e1e1bfdd0ed6864f.weaponclass != thisweaponclass) {
            continue;
        }
        if (isdefined(var_e1e1bfdd0ed6864f.meansofdeath) && var_e1e1bfdd0ed6864f.meansofdeath != meansofdeath) {
            continue;
        }
        if (isdefined(var_e1e1bfdd0ed6864f.damagemodcategory) && var_e1e1bfdd0ed6864f.damagemodcategory != var_e1e1bfdd0ed6864f.damagemodcategory) {
            continue;
        }
        return var_e1e1bfdd0ed6864f.var_b66e269a387db351;
    }
}

// Namespace damage_tuning / scripts\common\damage_tuning
// Params 6, eflags: 0x2 linked
// Checksum 0x0, Offset: 0x357
// Size: 0x2c4
function getmodifieddamageusingdamagetuning(attacker, objweapon, mod, amount, maxhealth, damage_tuning) {
    multipliers = damage_tuning.damagemultipliers;
    hitstokill = damage_tuning.var_aaf772ef14275e0b;
    if (!isdefined(multipliers)) {
        assertmsg("Must provide multipliers when calculating modified anti-killstreak damage.");
        return amount;
    }
    if (!isdefined(hitstokill)) {
        assertmsg("Must provide hits to kill matrix when calculating modified anti-killstreak damage.");
        return amount;
    }
    if (isstring(mod)) {
        mod = function_1823ff50bb28148d(mod);
    }
    thisweaponclass = weaponclass(objweapon);
    if (isstring(thisweaponclass)) {
        thisweaponclass = function_1823ff50bb28148d(thisweaponclass);
    }
    damageamount = amount;
    foreach (var_a5c813dce206559b in hitstokill) {
        if (isdefined(var_a5c813dce206559b.weaponclass) && var_a5c813dce206559b.weaponclass != thisweaponclass) {
            continue;
        }
        if (isdefined(var_a5c813dce206559b.meansofdeath) && var_a5c813dce206559b.meansofdeath != mod) {
            continue;
        }
        if (isdefined(var_a5c813dce206559b.damagemodcategory) && var_a5c813dce206559b.damagemodcategory != objweapon.damagemodcategory) {
            continue;
        }
        var_b41d21142ce58d82 = var_a5c813dce206559b.hitstokill;
        if (var_b41d21142ce58d82 <= 0) {
            assertmsg("Cannot have " + var_b41d21142ce58d82 + " hits to kill. Must use a positive number.");
            continue;
        }
        damageamount = int(ceil(float(self.maxhealth) / var_b41d21142ce58d82));
        return damageamount;
    }
    foreach (currentmultiplier in multipliers) {
        if (isdefined(currentmultiplier.weaponclass) && currentmultiplier.weaponclass != thisweaponclass) {
            continue;
        }
        if (isdefined(currentmultiplier.meansofdeath) && currentmultiplier.meansofdeath != mod) {
            continue;
        }
        if (isdefined(currentmultiplier.damagemodcategory) && currentmultiplier.damagemodcategory != objweapon.damagemodcategory) {
            continue;
        }
        var_b2646ba6b5716a4e = currentmultiplier.multiplier;
        damageamount = int(ceil(var_b2646ba6b5716a4e * amount));
        return damageamount;
    }
    return int(damageamount);
}

// Namespace damage_tuning / scripts\common\damage_tuning
// Params 2
// Checksum 0x0, Offset: 0x624
// Size: 0x35
function setupdamagetuning(var_e913079a5ffda56d, maxhealth) {
    if (!istrue(level.var_be6a42242be00b66)) {
        return;
    }
    self.var_e913079a5ffda56d = var_e913079a5ffda56d;
    self.maxhealth = maxhealth;
}

