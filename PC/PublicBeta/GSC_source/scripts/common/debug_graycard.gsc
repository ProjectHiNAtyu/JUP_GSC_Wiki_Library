// scripts\common\debug_graycard.gsc  (30C42DCABD30A39B.gscc) (size: 4110 Bytes / 0x100e / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x36de591 (57533841)
// size ...... 4110 (0x100e)
// includes .. 2   (offset: 0x60)
// strings ... 0   (offset: 0xee2)
// dev strs .. 21  (offset: 0xee2)
// exports ... 11  (offset: 0x956)
// cseg ...... 0x70 + 0x8e6 (0x956)
// imports ... 30  (offset: 0xb0e)
// animtree1 . 0   (offset: 0x100e)
// animtree2 . 0   (offset: 0x100e)
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace debug_graycard;

/#

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 1
    // Checksum 0x0, Offset: 0x78
    // Size: 0xe1, Type: dev
    function init_graycard(handleplayerconnect) {
        setdevdvarifuninitialized(@"hash_a6381f8c58314102", "<dev string:x1c>");
        setdevdvarifuninitialized(@"hash_1dfb6641a37c41f1", "<dev string:x1c>");
        precachemodel("<dev string:x1e>");
        precachemodel("<dev string:x2e>");
        precachemodel("<dev string:x4e>");
        precachemodel("<dev string:x70>");
        precachemodel("<dev string:x8c>");
        precachemodel("<dev string:xa6>");
        precachemodel("<dev string:xba>");
        precachemodel("<dev string:xd0>");
        precachemodel("<dev string:xea>");
        if (!isdefined(level.debug)) {
            level.debug = spawnstruct();
        }
        level.debug.graycard = 0;
        if (isdefined(handleplayerconnect)) {
            thread onplayerconnect();
            return;
        }
        thread spplayerconnect();
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 0
    // Checksum 0x0, Offset: 0x161
    // Size: 0x2b, Type: dev
    function spplayerconnect() {
        while (!isdefined(level.player)) {
            waitframe();
        }
        level.player add_frame_event(&debug_gray_card);
    }

#/

// Namespace debug_graycard / scripts\common\debug_graycard
// Params 0
// Checksum 0x0, Offset: 0x194
// Size: 0x45
function onplayerconnect() {
    if (isdefined(level.func_run_lean_threads) && [[ level.func_run_lean_threads ]]()) {
        return;
    }
    /#
        for (;;) {
            level waittill("<dev string:x102>", player);
            player scripts\engine\utility::add_frame_event(&debug_gray_card_mp);
        }
    #/
}

/#

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 0
    // Checksum 0x0, Offset: 0x1e1
    // Size: 0xe, Type: dev
    function debug_gray_card_mp() {
        debug_gray_card(1);
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 1
    // Checksum 0x0, Offset: 0x1f7
    // Size: 0x1be, Type: dev
    function debug_gray_card(ismp) {
        if (!isdefined(ismp)) {
            ismp = 0;
        }
        if (getdvar(@"hash_a6381f8c58314102") == "<dev string:x10c>") {
            if (level.debug.graycard != 1) {
                remove_graycard_objects();
                create_graycard_object();
                level.debug.graycard = 1;
            }
            debug_graycard_buttons(ismp);
        } else if (getdvar(@"hash_a6381f8c58314102") == "<dev string:x1c>" && level.debug.graycard != 0) {
            remove_graycard_objects();
            level.debug.graycard = 0;
        }
        switch (getdvar(@"hash_1dfb6641a37c41f1")) {
        case #"hash_311010bc01bd3a0f":
            set_debug_models("<dev string:x2e>");
            break;
        case #"hash_31100fbc01bd387c":
            set_debug_models("<dev string:x4e>");
            break;
        case #"hash_311012bc01bd3d35":
            set_debug_models("<dev string:x70>");
            break;
        case #"hash_311011bc01bd3ba2":
            set_debug_models("<dev string:xa6>");
            break;
        case #"hash_31100cbc01bd33c3":
            set_debug_models("<dev string:x8c>");
            break;
        case #"hash_31100bbc01bd3230":
            set_debug_models("<dev string:xea>");
            break;
        case #"hash_31100ebc01bd36e9":
            set_debug_models("<dev string:xd0>");
            break;
        case #"hash_31100dbc01bd3556":
            set_debug_models("<dev string:x1e>");
            break;
        default:
            break;
        }
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 1
    // Checksum 0x0, Offset: 0x3bd
    // Size: 0x9d, Type: dev
    function set_debug_models(model) {
        if (isdefined(level.debug.graycard_objects)) {
            foreach (ent in level.debug.graycard_objects) {
                ent setmodel(model);
            }
        }
        if (isdefined(self.var_56868152de824f45)) {
            self.var_56868152de824f45 setmodel(model);
        }
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 0
    // Checksum 0x0, Offset: 0x462
    // Size: 0xa5, Type: dev
    function remove_graycard_objects() {
        if (isdefined(level.debug.graycard_objects)) {
            foreach (ent in level.debug.graycard_objects) {
                ent delete();
            }
            level.debug.graycard_objects = undefined;
        }
        if (isdefined(self.var_56868152de824f45)) {
            self.var_56868152de824f45 delete();
        }
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 0
    // Checksum 0x0, Offset: 0x50f
    // Size: 0x74, Type: dev
    function create_graycard_object() {
        self.var_56868152de824f45 = spawn_graycard();
        object = self.var_56868152de824f45;
        object.offset = 100;
        object.lastoffset = object.offset;
        object.copy_released = 1;
        object.offsetangles = (0, 0, 0);
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 0
    // Checksum 0x0, Offset: 0x58b
    // Size: 0x31, Type: dev
    function spawn_graycard() {
        model = spawn("<dev string:x11a>", self.origin);
        model setmodel("<dev string:xa6>");
        return model;
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 1
    // Checksum 0x0, Offset: 0x5c4
    // Size: 0x27d, Type: dev
    function debug_graycard_buttons(ismp) {
        if (!isdefined(self.var_56868152de824f45)) {
            return;
        }
        object = self.var_56868152de824f45;
        if (self buttonpressed("<dev string:x127>")) {
            object.offset += 5;
        }
        if (self buttonpressed("<dev string:x130>")) {
            object.offset -= 5;
        }
        if (self buttonpressed("<dev string:x139>")) {
            object.offsetangles += (0, 6, 0);
        }
        if (self buttonpressed("<dev string:x142>")) {
            object.offsetangles += (0, -6, 0);
        }
        if (self buttonpressed("<dev string:x14b>")) {
            object.offsetangles += (6, 0, 0);
        }
        if (self buttonpressed("<dev string:x159>")) {
            object.offsetangles += (-6, 0, 0);
        }
        if (self buttonpressed("<dev string:x167>")) {
            object.offsetangles = (0, 0, 0);
        }
        if (object.copy_released) {
            if (self buttonpressed("<dev string:x175>")) {
                create_copy(object);
                object.copy_released = 0;
            }
        } else if (!self buttonpressed("<dev string:x175>")) {
            object.copy_released = 1;
        }
        if (object.offset > 1000) {
            object.offset = 1000;
        }
        if (object.offset < 16) {
            object.offset = 16;
        }
        if (!ismp) {
            object unlink();
        }
        object.origin = self geteye() + anglestoforward(self getplayerangles()) * object.offset;
        object.angles = combineangles(self getplayerangles(), object.offsetangles);
        object.lastoffset = object.offset;
        if (!ismp) {
            object linkto(self);
        }
    }

    // Namespace debug_graycard / scripts\common\debug_graycard
    // Params 1
    // Checksum 0x0, Offset: 0x849
    // Size: 0x10d, Type: dev
    function create_copy(object) {
        copyobject = spawn_graycard();
        copyobject.origin = object.origin;
        copyobject.angles = object.angles;
        if (!isdefined(level.debug.graycard_objects)) {
            level.debug.graycard_objects = [copyobject];
            return;
        }
        if (level.debug.graycard_objects.size > 50) {
            level.debug.graycard_objects[0] delete();
            level.debug.graycard_objects = array_removeundefined(level.debug.graycard_objects);
        }
        level.debug.graycard_objects[level.debug.graycard_objects.size] = copyobject;
    }

#/
