// scripts\mp\animatedmodels.gsc  (5C483C780DB0B4AD.gscc) (size: 994 Bytes / 0x3e2 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x83a2e62 (138030690)
// size ...... 994 (0x3e2)
// includes .. 2   (offset: 0x89)
// strings ... 2   (offset: 0x3ca)
// dev strs .. 0   (offset: 0x3e2)
// exports ... 2   (offset: 0x252)
// cseg ...... 0x99 + 0x1b9 (0x252)
// imports ... 10  (offset: 0x2a2)
// animtree1 . 0   (offset: 0x3e2)
// animtree2 . 0   (offset: 0x3e2)
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace animatedmodels;

// Namespace animatedmodels / scripts\mp\animatedmodels
// Params 0
// Checksum 0x0, Offset: 0xa1
// Size: 0x126
function main() {
    if (!isdefined(level.anim_prop_models)) {
        level.anim_prop_models = [];
    }
    model_keys = getarraykeys(level.anim_prop_models);
    foreach (model_key in model_keys) {
        anim_keys = getarraykeys(level.anim_prop_models[model_key]);
        foreach (anim_key in anim_keys) {
            precachempanim(level.anim_prop_models[model_key][anim_key]);
        }
    }
    waittillframeend();
    level.init_animatedmodels = [];
    animated_models = getentarray("animated_model", "targetname");
    array_thread_amortized(animated_models, &animatemodel, 0.05);
    level.init_animatedmodels = undefined;
}

// Namespace animatedmodels / scripts\mp\animatedmodels
// Params 0
// Checksum 0x0, Offset: 0x1cf
// Size: 0x83
function animatemodel() {
    if (isdefined(self.animation)) {
        animation = self.animation;
    } else {
        keys = getarraykeys(level.anim_prop_models[self.model]);
        animkey = keys[randomint(keys.size)];
        animation = level.anim_prop_models[self.model][animkey];
    }
    self scriptmodelplayanim(animation);
    self willneverchange();
}

