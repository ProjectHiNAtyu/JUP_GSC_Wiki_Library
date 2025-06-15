// scripts\engine\throttle.gsc  (3214E6FCDCE468A7.gscc) (size: 5550 Bytes / 0x15ae / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xea3af0d (245608205)
// size ...... 5550 (0x15ae)
// includes .. 1   (offset: 0x372)
// strings ... 34  (offset: 0x1386)
// dev strs .. 1   (offset: 0x15a2)
// exports ... 13  (offset: 0xd3a)
// cseg ...... 0x37a + 0x9c0 (0xd3a)
// imports ... 29  (offset: 0xf42)
// animtree1 . 0   (offset: 0x15ae)
// animtree2 . 0   (offset: 0x15ae)
#using scripts\engine\utility;

#namespace throttle;

// Namespace throttle / scripts\engine\throttle
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x382
// Size: 0x27
function private function_9520a7d8b5aee737(throttle) {
    while (isdefined(throttle)) {
        function_4707c765d202d592(throttle);
        wait throttle.updaterate_;
    }
}

// Namespace throttle / scripts\engine\throttle
// Params 1, eflags: 0x4
// Checksum 0x0, Offset: 0x3b1
// Size: 0xac
function private function_4707c765d202d592(throttle) {
    processed = 0;
    foreach (item in throttle.queue_) {
        if (!isdefined(item)) {
            continue;
        }
        throttle.queue_ = array_remove(throttle.queue_, item);
        item notify(throttle.var_35615e062783af3e);
        processed++;
        if (processed >= throttle.processlimit_) {
            break;
        }
    }
}

// Namespace throttle / scripts\engine\throttle
// Params 4
// Checksum 0x0, Offset: 0x465
// Size: 0xb0
function throttle_initialize(name, processlimit, updaterate, queuelimit) {
    assert(isdefined(name) && isstring(name));
    throttle = spawnstruct();
    throttle.queue_ = [];
    throttle.var_35615e062783af3e = name + "_wake_up";
    throttle.processlimit_ = default_to(processlimit, 1);
    throttle.updaterate_ = default_to(updaterate, level.framedurationseconds);
    throttle.queuelimit_ = queuelimit;
    thread function_9520a7d8b5aee737(throttle);
    return throttle;
}

// Namespace throttle / scripts\engine\throttle
// Params 2
// Checksum 0x0, Offset: 0x51e
// Size: 0xaf
function function_f632348cbb773537(throttle, entity) {
    while (isdefined(throttle.queuelimit_) && throttle.queue_.size > throttle.queuelimit_) {
        function_4707c765d202d592(throttle);
    }
    if (!isdefined(entity)) {
        return;
    }
    if (!isent(entity) && !isstruct(entity)) {
        return;
    }
    if (!array_contains(throttle.queue_, entity)) {
        throttle.queue_[throttle.queue_.size] = entity;
    }
    entity endon("death");
    entity endon("delete");
    entity waittill(throttle.var_35615e062783af3e);
}

// Namespace throttle / scripts\engine\throttle
// Params 2
// Checksum 0x0, Offset: 0x5d5
// Size: 0x25
function function_11ab6d104bf77779(throttle, entity) {
    return array_contains(throttle.queue_, entity);
}

// Namespace throttle / scripts\engine\throttle
// Params 2
// Checksum 0x0, Offset: 0x603
// Size: 0x31
function function_8ce6c42c18618555(throttle, entity) {
    throttle.queue_ = array_remove(throttle.queue_, entity);
}

// Namespace throttle / scripts\engine\throttle
// Params 0
// Checksum 0x0, Offset: 0x63c
// Size: 0x25
function function_ffc20a0cd9408d3e() {
    throttle_ut_initialize();
    throttle_ut_queue();
    throttle_ut_queue_10();
    throttle_ut_queue_10_threaded();
    throttle_ut_leave_queue();
}

// Namespace throttle / scripts\engine\throttle
// Params 1
// Checksum 0x0, Offset: 0x669
// Size: 0x1e
function test_print(msg) {
    /#
        msg = "<dev string:x1c>" + msg;
        println(msg);
    #/
}

// Namespace throttle / scripts\engine\throttle
// Params 0
// Checksum 0x0, Offset: 0x68f
// Size: 0x258
function throttle_ut_initialize() {
    test_print("BEGIN throttle_UT_initialize");
    test_throttle = throttle_initialize("test_throttle_1", 1, level.framedurationseconds);
    test_print("CALL - throttle_initialize( test_throttle_1, " + 1 + ", " + level.framedurationseconds + ")");
    assert(isarray(test_throttle.queue_) && test_throttle.queue_.size == 0);
    assert(test_throttle.var_35615e062783af3e == "test_throttle_1" + "_wake_up");
    assert(test_throttle.processlimit_ == 1);
    assert(test_throttle.updaterate_ == level.framedurationseconds);
    assert(test_throttle.queuelimit_ == undefined);
    test_throttle = throttle_initialize("test_throttle_2", 2, level.framedurationseconds);
    test_print("CALL - throttle_initialize( test_throttle_2, " + 2 + ", " + level.framedurationseconds + ")");
    assert(test_throttle.processlimit_ == 2);
    test_throttle = throttle_initialize("test_throttle_queueLimit", 1, level.framedurationseconds, 3);
    test_print("CALL - throttle_initialize( test_throttle_queueLimit, " + 1 + ", " + level.framedurationseconds + ", " + 3 + ")");
    assert(test_throttle.queuelimit_ == 3);
    test_throttle = throttle_initialize("test_throttle_defaults");
    test_print("CALL - throttle_initialize( test_throttle_defaults )");
    assert(isarray(test_throttle.queue_) && test_throttle.queue_.size == 0);
    assert(test_throttle.var_35615e062783af3e == "test_throttle_defaults" + "_wake_up");
    assert(test_throttle.processlimit_ == 1);
    assert(test_throttle.updaterate_ == level.framedurationseconds);
    assert(test_throttle.queuelimit_ == undefined);
    test_print("END throttle_UT_initialize");
}

// Namespace throttle / scripts\engine\throttle
// Params 0
// Checksum 0x0, Offset: 0x8ef
// Size: 0xc3
function throttle_ut_queue() {
    test_print("BEGIN throttle_UT_queue");
    test_throttle = throttle_initialize("test_throttle_wait", 1, level.framedurationseconds);
    test_print("CALL - throttle_initialize( " + 1 + ", " + level.framedurationseconds + ")");
    entity = spawn("script_model", (0, 0, 0));
    function_f632348cbb773537(test_throttle, entity);
    test_print("CALL - wait_in_queue");
    isinqueue = function_11ab6d104bf77779(test_throttle, entity);
    test_print("Ent in queue: " + isinqueue);
    assert(!isinqueue);
    test_print("END throttle_UT_queue");
}

// Namespace throttle / scripts\engine\throttle
// Params 0
// Checksum 0x0, Offset: 0x9ba
// Size: 0x119
function throttle_ut_queue_10() {
    test_print("BEGIN throttle_UT_queue_10");
    test_throttle = throttle_initialize("test_throttle_wait", 1, level.framedurationseconds);
    test_print("CALL - throttle_initialize( " + 1 + ", " + level.framedurationseconds + ")");
    ents = [];
    for (i = 1; i <= 10; i++) {
        ents[ents.size] = spawn("script_model", (0, 0, 0));
        function_f632348cbb773537(test_throttle, ents[ents.size - 1]);
        test_print("CALL - wait_in_queue " + i);
        test_print("Time - " + gettime());
        test_print("Ents in Queue - " + test_throttle.queue_.size);
    }
    isinqueue = function_11ab6d104bf77779(test_throttle, ents[3]);
    test_print("Ent 3 in queue: " + isinqueue);
    assert(!isinqueue);
    test_print("END throttle_UT_queue_10");
}

// Namespace throttle / scripts\engine\throttle
// Params 0
// Checksum 0x0, Offset: 0xadb
// Size: 0x119
function throttle_ut_queue_10_threaded() {
    test_print("BEGIN throttle_UT_queue_10_threaded");
    test_throttle = throttle_initialize("test_throttle_wait", 1, level.framedurationseconds);
    test_print("CALL - throttle_initialize( " + 1 + ", " + level.framedurationseconds + ")");
    ents = [];
    for (i = 1; i <= 10; i++) {
        ents[ents.size] = spawn("script_model", (0, 0, 0));
        thread function_f632348cbb773537(test_throttle, ents[ents.size - 1]);
        test_print("CALL - wait_in_queue " + i);
        test_print("Time - " + gettime());
        test_print("Ents in Queue - " + test_throttle.queue_.size);
    }
    isinqueue = function_11ab6d104bf77779(test_throttle, ents[3]);
    test_print("Ent 3 in queue: " + isinqueue);
    assert(isinqueue);
    test_print("END throttle_UT_queue_10_threaded");
}

// Namespace throttle / scripts\engine\throttle
// Params 0
// Checksum 0x0, Offset: 0xbfc
// Size: 0x13e
function throttle_ut_leave_queue() {
    test_print("BEGIN throttle_UT_leave_queue");
    test_throttle = throttle_initialize("test_throttle_wait", 1, level.framedurationseconds);
    test_print("CALL - throttle_initialize( " + 1 + ", " + level.framedurationseconds + ")");
    ents = [];
    for (i = 1; i <= 10; i++) {
        ents[ents.size] = spawn("script_model", (0, 0, 0));
        thread function_f632348cbb773537(test_throttle, ents[ents.size - 1]);
        test_print("CALL - wait_in_queue " + i);
        test_print("Time - " + gettime());
    }
    isinqueue = function_11ab6d104bf77779(test_throttle, ents[3]);
    test_print("ent 3 in queue: " + isinqueue);
    assert(isinqueue);
    function_8ce6c42c18618555(test_throttle, ents[3]);
    test_print("CALL - leave_queue");
    isinqueue = function_11ab6d104bf77779(test_throttle, ents[3]);
    test_print("ent 3 in queue: " + isinqueue);
    assert(!isinqueue);
    test_print("END throttle_UT_leave_queue");
}

