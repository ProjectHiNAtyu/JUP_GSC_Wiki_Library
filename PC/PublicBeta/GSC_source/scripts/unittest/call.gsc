// scripts\unittest\call.gsc  (9D0561FF8DED2FB.gscc) (size: 3270 Bytes / 0xcc6 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x34a40116 (883163414)
// size ...... 3270 (0xcc6)
// includes .. 1   (offset: 0x175)
// strings ... 21  (offset: 0xb66)
// dev strs .. 0   (offset: 0xcc6)
// exports ... 6   (offset: 0x666)
// cseg ...... 0x17d + 0x4e9 (0x666)
// imports ... 33  (offset: 0x756)
// animtree1 . 0   (offset: 0xcc6)
// animtree2 . 0   (offset: 0xcc6)
#using scripts\unittest\util;

#namespace unittest_call;

// Namespace unittest_call / scripts\unittest\call
// Params 0
// Checksum 0x0, Offset: 0x185
// Size: 0xe
function noargs() {
    test_print("noargs");
}

// Namespace unittest_call / scripts\unittest\call
// Params 1
// Checksum 0x0, Offset: 0x19b
// Size: 0x25
function onearg(a) {
    if (!isdefined(a)) {
        a = "<undefined>";
    }
    test_print("onearg: " + a);
}

// Namespace unittest_call / scripts\unittest\call
// Params 3
// Checksum 0x0, Offset: 0x1c8
// Size: 0x39
function multiarg(a, b, c) {
    test_print("multiarg: " + a + " " + b + " " + c);
}

// Namespace unittest_call / scripts\unittest\call
// Params 1
// Checksum 0x0, Offset: 0x209
// Size: 0x2f
function recurse_internal(n) {
    if (n > 0) {
        test_print("recurse_internal: " + n);
        return recurse_internal(n - 1);
    }
    return n;
}

// Namespace unittest_call / scripts\unittest\call
// Params 1
// Checksum 0x0, Offset: 0x240
// Size: 0x1f
function recurse(n) {
    test_print("recurse: " + recurse_internal(n));
}

// Namespace unittest_call / scripts\unittest\call
// Params 0
// Checksum 0x0, Offset: 0x267
// Size: 0x3ff
function main() {
    test_begin("Call");
    noargs();
    onearg(1);
    onearg("hi");
    onearg();
    multiarg(1, 2, 3);
    multiarg(1, "hi", 2);
    test_print("Method");
    s = spawnstruct();
    s noargs();
    s onearg(1);
    s onearg("hi");
    s onearg();
    s multiarg(1, 2, 3);
    s multiarg(1, "hi", 2);
    test_print("Thread");
    thread noargs();
    thread onearg(1);
    thread onearg("hi");
    thread onearg();
    thread multiarg(1, 2, 3);
    thread multiarg(1, "hi", 2);
    test_print("Method Thread");
    s thread noargs();
    s thread onearg(1);
    s thread onearg("hi");
    s thread onearg();
    s thread multiarg(1, 2, 3);
    s thread multiarg(1, "hi", 2);
    test_print("Child Thread");
    childthread noargs();
    childthread onearg(1);
    childthread onearg("hi");
    childthread onearg();
    childthread multiarg(1, 2, 3);
    childthread multiarg(1, "hi", 2);
    test_print("Method Child Thread");
    s childthread noargs();
    s childthread onearg(1);
    s childthread onearg("hi");
    s childthread onearg();
    s childthread multiarg(1, 2, 3);
    s childthread multiarg(1, "hi", 2);
    test_print("Function Pointer");
    var_bc867423ff8eb756 = &noargs;
    var_8b5a8f4beb53dfa4 = &onearg;
    var_8564d715b7cd5cd3 = &multiarg;
    [[ var_bc867423ff8eb756 ]]();
    [[ var_8b5a8f4beb53dfa4 ]](1);
    [[ var_8b5a8f4beb53dfa4 ]]("hi");
    [[ var_8b5a8f4beb53dfa4 ]]();
    [[ var_8564d715b7cd5cd3 ]](1, 2, 3);
    [[ var_8564d715b7cd5cd3 ]](1, "hi", 2);
    test_print("Method Pointer");
    s [[ var_bc867423ff8eb756 ]]();
    s [[ var_8b5a8f4beb53dfa4 ]](1);
    s [[ var_8b5a8f4beb53dfa4 ]]("hi");
    s [[ var_8b5a8f4beb53dfa4 ]]();
    s [[ var_8564d715b7cd5cd3 ]](1, 2, 3);
    s [[ var_8564d715b7cd5cd3 ]](1, "hi", 2);
    test_print("Thread Pointer");
    thread [[ var_bc867423ff8eb756 ]]();
    thread [[ var_8b5a8f4beb53dfa4 ]](1);
    thread [[ var_8b5a8f4beb53dfa4 ]]("hi");
    thread [[ var_8b5a8f4beb53dfa4 ]]();
    thread [[ var_8564d715b7cd5cd3 ]](1, 2, 3);
    thread [[ var_8564d715b7cd5cd3 ]](1, "hi", 2);
    test_print("Method Thread Pointer");
    s thread [[ var_bc867423ff8eb756 ]]();
    s thread [[ var_8b5a8f4beb53dfa4 ]](1);
    s thread [[ var_8b5a8f4beb53dfa4 ]]("hi");
    s thread [[ var_8b5a8f4beb53dfa4 ]]();
    s thread [[ var_8564d715b7cd5cd3 ]](1, 2, 3);
    s thread [[ var_8564d715b7cd5cd3 ]](1, "hi", 2);
    test_print("Child Thread Pointer");
    childthread [[ var_bc867423ff8eb756 ]]();
    childthread [[ var_8b5a8f4beb53dfa4 ]](1);
    childthread [[ var_8b5a8f4beb53dfa4 ]]("hi");
    childthread [[ var_8b5a8f4beb53dfa4 ]]();
    childthread [[ var_8564d715b7cd5cd3 ]](1, 2, 3);
    childthread [[ var_8564d715b7cd5cd3 ]](1, "hi", 2);
    test_print("Method Child Thread Pointer");
    s childthread [[ var_bc867423ff8eb756 ]]();
    s childthread [[ var_8b5a8f4beb53dfa4 ]](1);
    s childthread [[ var_8b5a8f4beb53dfa4 ]]("hi");
    s childthread [[ var_8b5a8f4beb53dfa4 ]]();
    s childthread [[ var_8564d715b7cd5cd3 ]](1, 2, 3);
    s childthread [[ var_8564d715b7cd5cd3 ]](1, "hi", 2);
    test_print("Misc Function Logic");
    recurse(10);
    test_end("Call");
}

