// script_f430e9b819c8833  (F430E9B819C8833.gscc) (size: 12953 Bytes / 0x3299)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x60d20607 (1624376839)
// size ...... 12953 (0x3299)
// includes .. 0   (offset: 0x72a)
// strings ... 95  (offset: 0x2d4d)
// dev strs .. 0   (offset: 0x3299)
// exports ... 36  (offset: 0x1fdd)
// cseg ...... 0x72a + 0x18b3 (0x1fdd)
// imports ... 47  (offset: 0x257d)
// animtree1 . 0   (offset: 0x3299)
// animtree2 . 0   (offset: 0x3299)
#namespace benchmark;

// Namespace benchmark / scripts\common\benchmark
// Params 1
// Checksum 0x0, Offset: 0x732
// Size: 0x1c
function function_63abc2408f9ef4ba(name) {
    level.var_2b911118b9f2e6c0[name] = getsystemtimeinmicroseconds();
}

// Namespace benchmark / scripts\common\benchmark
// Params 1
// Checksum 0x0, Offset: 0x756
// Size: 0x68
function function_b41d4c50a5cb0a36(name) {
    time = getsystemtimeinmicroseconds();
    if (!isdefined(level.var_5abcc6f847b4e3ee[name])) {
        level.var_5abcc6f847b4e3ee[name] = 0;
    }
    diff = time - level.var_2b911118b9f2e6c0[name];
    level.var_5abcc6f847b4e3ee[name] += diff;
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x7c6
// Size: 0x59
function function_988c6c7c7776406c() {
    sysprint("Bench_ForLoopRef\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("ForLoopRef");
    for (i = 0; i < max_iterations; i++) {
    }
    function_b41d4c50a5cb0a36("ForLoopRef");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x827
// Size: 0x10b
function bench_foreach() {
    sysprint("Bench_ForEach\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    a = [];
    for (i = 0; i < 10000; i++) {
        a[i] = i;
    }
    function_63abc2408f9ef4ba("ForEach");
    foreach (v in a) {
    }
    function_b41d4c50a5cb0a36("ForEach");
    function_63abc2408f9ef4ba("ForEach_Val");
    foreach (x in a) {
    }
    function_b41d4c50a5cb0a36("ForEach_Val");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x93a
// Size: 0x119
function function_18cb5fb798c607cd() {
    sysprint("Bench_ForEachSetup\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    a = [];
    a[0] = 0;
    function_63abc2408f9ef4ba("ForEachSetup");
    for (i = 0; i < max_iterations; i++) {
        foreach (v in a) {
        }
    }
    function_b41d4c50a5cb0a36("ForEachSetup");
    function_63abc2408f9ef4ba("ForEachSetup_Val");
    for (i = 0; i < max_iterations; i++) {
        foreach (x in a) {
        }
    }
    function_b41d4c50a5cb0a36("ForEachSetup_Val");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xa5b
// Size: 0xba
function function_e4e266c2c4ebf49e() {
    sysprint("Bench_ForArray\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    a = [];
    function_63abc2408f9ef4ba("ForArray");
    function_63abc2408f9ef4ba("ForArray_Init");
    for (i = 0; i < 10000; i++) {
        a[i] = i;
    }
    function_b41d4c50a5cb0a36("ForArray_Init");
    function_63abc2408f9ef4ba("ForArray_Eval");
    for (i = 0; i < a.size; i++) {
        t = a[i];
    }
    function_b41d4c50a5cb0a36("ForArray_Eval");
    function_b41d4c50a5cb0a36("ForArray");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xb1d
// Size: 0x72
function function_723ebfcdaa798c34() {
    sysprint("Bench_ForLoopSetup\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("ForLoopSetup");
    for (i = 0; i < max_iterations; i++) {
        for (j = 0; j < 1; j++) {
        }
    }
    function_b41d4c50a5cb0a36("ForLoopSetup");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xb97
// Size: 0x76
function function_10f6d810677cee84() {
    sysprint("Bench_IfElse\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    a = 1;
    function_63abc2408f9ef4ba("IfElse");
    for (i = 0; i < max_iterations; i++) {
        if (a == 0) {
            a = 1;
            continue;
        }
        a = 0;
    }
    function_b41d4c50a5cb0a36("IfElse");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xc15
// Size: 0x95
function function_9628bf5282b8bafc() {
    sysprint("Bench_AllocVar\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    a = 0;
    function_63abc2408f9ef4ba("AllocVar");
    for (i = 0; i < max_iterations; i++) {
        if (i & 1) {
            x = 0;
            y = 1;
            z = 2;
        }
        a++;
    }
    function_b41d4c50a5cb0a36("AllocVar");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xcb2
// Size: 0x2
function function_41d5b4596b4cf805() {
    
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xcbc
// Size: 0x60
function function_dff6885d265db0fd() {
    sysprint("Bench_MinScriptFunction\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("MinScriptFunction");
    for (i = 0; i < max_iterations; i++) {
        function_41d5b4596b4cf805();
    }
    function_b41d4c50a5cb0a36("MinScriptFunction");
}

// Namespace benchmark / scripts\common\benchmark
// Params 1
// Checksum 0x0, Offset: 0xd24
// Size: 0xb
function function_efadcc2e0fb51aaa(a) {
    
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xd37
// Size: 0x6d
function function_2308f139d0ffbc41() {
    sysprint("Bench_OneArgScriptFunction\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    a = 0;
    function_63abc2408f9ef4ba("OneArgScriptFunction");
    for (i = 0; i < max_iterations; i++) {
        function_efadcc2e0fb51aaa(a);
    }
    function_b41d4c50a5cb0a36("OneArgScriptFunction");
}

// Namespace benchmark / scripts\common\benchmark
// Params 10
// Checksum 0x0, Offset: 0xdac
// Size: 0x53
function function_c7c4508ca492914f(a, b, c, d, e, f, g, h, j, k) {
    
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xe07
// Size: 0xf1
function function_76d6d0feedd3126b() {
    sysprint("Bench_MaxScriptFunc\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    a = 0;
    b = 1;
    c = 2;
    d = 3;
    e = 4;
    f = 5;
    g = 6;
    h = 7;
    j = 8;
    k = 9;
    function_63abc2408f9ef4ba("MaxScriptFunc");
    for (i = 0; i < max_iterations; i++) {
        function_c7c4508ca492914f(a, b, c, d, e, f, g, h, j, k);
    }
    function_b41d4c50a5cb0a36("MaxScriptFunc");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xf00
// Size: 0x69
function function_589fd6b13ca60155() {
    sysprint("Bench_BuiltinFunction\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("BuiltinFunction");
    for (i = 0; i < max_iterations; i++) {
        t = gettime();
    }
    function_b41d4c50a5cb0a36("BuiltinFunction");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0xf71
// Size: 0x9e
function function_cae58617e7945254() {
    sysprint("Bench_BuiltinMethod\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    p = level.players[0];
    if (!isdefined(p)) {
        function_63abc2408f9ef4ba("BuiltinMethod");
        function_b41d4c50a5cb0a36("BuiltinMethod");
        return;
    }
    function_63abc2408f9ef4ba("BuiltinMethod");
    for (i = 0; i < max_iterations; i++) {
        p allowfire(0);
    }
    function_b41d4c50a5cb0a36("BuiltinMethod");
    p allowfire(1);
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1017
// Size: 0xdc
function bench_variables() {
    sysprint("Bench_Variables\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("Variables");
    for (i = 0; i < max_iterations; i++) {
        a = 0;
        b = 1;
        c = 2;
        d = 3;
        e = 4;
        f = 5;
        g = 6;
        h = 7;
        j = 8;
        k = 9;
    }
    function_b41d4c50a5cb0a36("Variables");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x10fb
// Size: 0xfb
function bench_strings() {
    sysprint("Bench_Strings\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("Strings");
    for (i = 0; i < max_iterations; i++) {
        a = "foo";
        b = "foo";
        c = "foo2";
        d = "foo2";
        e = a == b;
        f = c == a;
        g = a + b;
        h = c + d;
        j = a + c;
        k = d + a;
    }
    function_b41d4c50a5cb0a36("Strings");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x11fe
// Size: 0xf4
function bench_arrays() {
    sysprint("Bench_Arrays\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("Arrays");
    for (i = 0; i < max_iterations; i++) {
        function_63abc2408f9ef4ba("Arrays_Number");
        a = [];
        a[0] = 0;
        a[1] = 1;
        x = a[0] + a[1];
        a[0] = undefined;
        a[1] = undefined;
        function_b41d4c50a5cb0a36("Arrays_Number");
        function_63abc2408f9ef4ba("Arrays_String");
        a = [];
        a["foo"] = 0;
        a["bar"] = 1;
        x = a["foo"] + a["bar"];
        a["foo"] = undefined;
        a["bar"] = undefined;
        function_b41d4c50a5cb0a36("Arrays_String");
    }
    function_b41d4c50a5cb0a36("Arrays");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x12fa
// Size: 0x296
function bench_fields() {
    sysprint("Bench_Fields\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    s = spawnstruct();
    level.s = spawnstruct();
    function_63abc2408f9ef4ba("Fields");
    for (i = 0; i < max_iterations; i++) {
        function_63abc2408f9ef4ba("Fields_Local");
        s.foo = 0;
        s.bar = 1;
        s.sum = s.foo + s.bar;
        s.foo = "hi";
        s.msg = s.foo + s.bar;
        s.foo = undefined;
        s.bar = undefined;
        function_b41d4c50a5cb0a36("Fields_Local");
        function_63abc2408f9ef4ba("Fields_Level");
        level.foo = 0;
        level.bar = 1;
        level.sum = level.foo + level.bar;
        level.foo = "hi";
        level.msg = level.foo + level.bar;
        level.foo = undefined;
        level.bar = undefined;
        function_b41d4c50a5cb0a36("Fields_Level");
        function_63abc2408f9ef4ba("Fields_Level_Nested");
        level.s.foo = 0;
        level.s.bar = 1;
        level.s.sum = level.s.foo + level.s.bar;
        level.s.foo = "hi";
        level.s.msg = level.s.foo + level.s.bar;
        level.s.foo = undefined;
        level.s.bar = undefined;
        function_b41d4c50a5cb0a36("Fields_Level_Nested");
    }
    function_b41d4c50a5cb0a36("Fields");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1598
// Size: 0x1a6
function function_713ed9ae70c22b36() {
    sysprint("Bench_Ops\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    s = spawnstruct();
    function_63abc2408f9ef4ba("Ops");
    x = 0;
    s.x = 0;
    for (i = 0; i < max_iterations; i++) {
        function_63abc2408f9ef4ba("Ops_Local");
        x += i;
        x += 2;
        function_b41d4c50a5cb0a36("Ops_Local");
        function_63abc2408f9ef4ba("Ops_Object");
        s.x += i;
        s.x += 2;
        function_b41d4c50a5cb0a36("Ops_Object");
    }
    function_b41d4c50a5cb0a36("Ops");
    function_63abc2408f9ef4ba("OpsCast");
    x = "a";
    s.x = "a";
    for (i = 0; i < max_iterations; i++) {
        function_63abc2408f9ef4ba("OpsCast_Local");
        y = x + i;
        y = x + 2;
        function_b41d4c50a5cb0a36("OpsCast_Local");
        function_63abc2408f9ef4ba("OpsCast_Object");
        s.y = s.x + i;
        s.y = s.x + 2;
        function_b41d4c50a5cb0a36("OpsCast_Object");
    }
    function_b41d4c50a5cb0a36("OpsCast");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1746
// Size: 0x2
function function_9cd6cc4b2f8e5e8f() {
    
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1750
// Size: 0x6d
function function_c0c13c7d2f02753b() {
    sysprint("Bench_FunctionPointer\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    f = &function_9cd6cc4b2f8e5e8f;
    function_63abc2408f9ef4ba("FunctionPointer");
    for (i = 0; i < max_iterations; i++) {
        [[ f ]]();
    }
    function_b41d4c50a5cb0a36("FunctionPointer");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x17c5
// Size: 0x7e
function function_56f6defb83c08190() {
    sysprint("Bench_MethodPointer\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    f = &function_9cd6cc4b2f8e5e8f;
    s = spawnstruct();
    function_63abc2408f9ef4ba("MethodPointer");
    for (i = 0; i < max_iterations; i++) {
        s [[ f ]]();
    }
    function_b41d4c50a5cb0a36("MethodPointer");
}

// Namespace benchmark / scripts\common\benchmark
// Params 2
// Checksum 0x0, Offset: 0x184b
// Size: 0xab
function function_e9372cb2b92b01e7(waittime, var_8942d67f3b4bb0f) {
    level endon("bench_thread_end");
    while (true) {
        wait waittime;
        function_63abc2408f9ef4ba("Thread_Function");
        f0 = 0;
        f1 = 1;
        even = 0;
        for (i = 0; i < var_8942d67f3b4bb0f; i++) {
            f = f0 + f1;
            f0 = f1;
            f1 = f;
            if (f % 2 == 0) {
                val = 1;
                continue;
            }
            val = 0;
        }
        function_b41d4c50a5cb0a36("Thread_Function");
    }
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x18fe
// Size: 0xa0
function bench_threads() {
    sysprint("Bench_Threads\n");
    max_threads = 100;
    function_63abc2408f9ef4ba("Threads");
    waittime = 0.01;
    for (i = 0; i < max_threads; i++) {
        level thread function_e9372cb2b92b01e7(waittime, i);
        waittime += 0.01;
        if (waittime > 0.5) {
            waittime = 0.01;
        }
    }
    function_b41d4c50a5cb0a36("Threads");
    sysprint("Bench_Threads_Wait\n");
    wait 1;
    sysprint("Bench_Threads_Notify\n");
    level notify("bench_thread_end");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x19a6
// Size: 0x75
function function_1cb0315d0cdacba4() {
    sysprint("Bench_getdvars\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("GetDvars");
    for (i = 0; i < max_iterations; i++) {
        test = getdvarint(@"hash_939ffa702b7da068", 10000);
    }
    function_b41d4c50a5cb0a36("GetDvars");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1a23
// Size: 0x69
function function_d5bce87878a08018() {
    sysprint("Bench_setdvars\n");
    max_iterations = getdvarint(@"hash_939ffa702b7da068", 10000);
    function_63abc2408f9ef4ba("SetDvars");
    for (i = 0; i < max_iterations; i++) {
        setdvar(@"hash_e717cc3034fbdf76", i);
    }
    function_b41d4c50a5cb0a36("SetDvars");
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1a94
// Size: 0x2d
function function_8193a06614f54e87() {
    sysprint("Bench_Start\n");
    i = 0;
    level.var_2b911118b9f2e6c0 = [];
    level.var_5abcc6f847b4e3ee = [];
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1ac9
// Size: 0xf0
function function_4912bd03f307546c() {
    sysprint("Bench_End\n");
    i = 0;
    s = "\n";
    foreach (v in level.var_5abcc6f847b4e3ee) {
        s += k;
        s += ",";
    }
    sysprint(s);
    s = "";
    foreach (v in level.var_5abcc6f847b4e3ee) {
        s += v / 1000;
        s += ",";
    }
    s += "\n";
    sysprint(s);
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1bc1
// Size: 0x2b9
function benchmark() {
    test_vars = [];
    if (getdvarint(@"hash_44e9f4a106f9b4a1", 0) > 0) {
        num_vars = getdvarint(@"hash_44e9f4a106f9b4a1", 0);
        for (i = 0; i < num_vars; i++) {
            test_vars[i] = i;
        }
    }
    function_8193a06614f54e87();
    if (shouldbench("0")) {
        function_988c6c7c7776406c();
        wait 0.05;
    }
    if (shouldbench("I")) {
        function_723ebfcdaa798c34();
        wait 0.05;
    }
    if (shouldbench("1")) {
        function_e4e266c2c4ebf49e();
        wait 0.05;
    }
    if (shouldbench("J")) {
        function_18cb5fb798c607cd();
        wait 0.05;
    }
    if (shouldbench("2")) {
        bench_foreach();
        wait 0.05;
    }
    if (shouldbench("3")) {
        function_10f6d810677cee84();
        wait 0.05;
    }
    if (shouldbench("K")) {
        function_9628bf5282b8bafc();
        wait 0.05;
    }
    if (shouldbench("4")) {
        function_dff6885d265db0fd();
        wait 0.05;
    }
    if (shouldbench("5")) {
        function_2308f139d0ffbc41();
        wait 0.05;
    }
    if (shouldbench("6")) {
        function_76d6d0feedd3126b();
        wait 0.05;
    }
    if (shouldbench("7")) {
        function_589fd6b13ca60155();
        wait 0.05;
    }
    if (shouldbench("8")) {
        function_cae58617e7945254();
        wait 0.05;
    }
    if (shouldbench("9")) {
        bench_variables();
        wait 0.05;
    }
    if (shouldbench("A")) {
        bench_arrays();
        wait 0.05;
    }
    if (shouldbench("B")) {
        bench_fields();
        wait 0.05;
    }
    if (shouldbench("C")) {
        function_713ed9ae70c22b36();
        wait 0.05;
    }
    if (shouldbench("D")) {
        function_c0c13c7d2f02753b();
        wait 0.05;
    }
    if (shouldbench("E")) {
        function_56f6defb83c08190();
        wait 0.05;
    }
    if (shouldbench("F")) {
        bench_threads();
        wait 0.05;
    }
    if (shouldbench("G")) {
        function_1cb0315d0cdacba4();
        wait 0.05;
    }
    if (shouldbench("H")) {
        function_d5bce87878a08018();
        wait 0.05;
    }
    if (shouldbench("L")) {
        bench_strings();
        wait 0.05;
    }
    function_4912bd03f307546c();
}

// Namespace benchmark / scripts\common\benchmark
// Params 1
// Checksum 0x0, Offset: 0x1e82
// Size: 0x31, Type: bool
function shouldbench(a) {
    if (issubstr(getdvar(@"hash_86ef66e581c77f50", ""), a + ",")) {
        return true;
    }
    return false;
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1ebc
// Size: 0x8a
function main() {
    level thread function_41e013dcb5b7b2a();
    setdvarifuninitialized(@"hash_939ffa702b7da068", 10000);
    setdvarifuninitialized(@"hash_5217b32eb9c32512", 0);
    setdvarifuninitialized(@"hash_44e9f4a106f9b4a1", 0);
    setdvarifuninitialized(@"hash_86ef66e581c77f50", "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,");
    while (true) {
        while (getdvarint(@"hash_5217b32eb9c32512", 0) == 0) {
            wait 1;
        }
        benchmark();
        setdvar(@"hash_5217b32eb9c32512", 0);
    }
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1f4e
// Size: 0x3c
function leak() {
    a = spawnstruct();
    b = spawnstruct();
    a.next = b;
    b.next = a;
}

// Namespace benchmark / scripts\common\benchmark
// Params 0
// Checksum 0x0, Offset: 0x1f92
// Size: 0x4b
function function_41e013dcb5b7b2a() {
    setdvarifuninitialized(@"hash_8c14a9cfaca224d4", 0);
    while (true) {
        while (getdvarint(@"hash_8c14a9cfaca224d4", 0) == 0) {
            wait 1;
        }
        leak();
        setdvar(@"hash_8c14a9cfaca224d4", 0);
    }
}

