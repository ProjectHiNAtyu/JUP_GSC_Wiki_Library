// scripts\engine\easing.gsc  (53D2A081452B2162.gscc) (size: 3647 Bytes / 0xe3f / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x88c69b20 (2294717216)
// size ...... 3647 (0xe3f)
// includes .. 1   (offset: 0xc9)
// strings ... 13  (offset: 0xd9f)
// dev strs .. 0   (offset: 0xe3f)
// exports ... 16  (offset: 0x82f)
// cseg ...... 0xd1 + 0x75e (0x82f)
// imports ... 26  (offset: 0xaaf)
// animtree1 . 0   (offset: 0xe3f)
// animtree2 . 0   (offset: 0xe3f)
#using scripts\engine\utility;

#namespace easing;

// Namespace easing / scripts\engine\easing
// Params 0
// Checksum 0x0, Offset: 0xd9
// Size: 0x108
function ease_init() {
    level.ease_funcs = [];
    level.ease_funcs["linear"] = &ease_linear;
    level.ease_funcs["power"] = &ease_power;
    level.ease_funcs["quadratic"] = &function_5076f55422e87aca;
    level.ease_funcs["cubic"] = &ease_cubic;
    level.ease_funcs["quartic"] = &function_651839ae5c237167;
    level.ease_funcs["quintic"] = &function_8ed1dfbb99ebbffb;
    level.ease_funcs["exponential"] = &function_7c81847ebfb3f5b3;
    level.ease_funcs["logarithmic"] = &function_26eb6629640c404b;
    level.ease_funcs["sine"] = &ease_sine;
    level.ease_funcs["back"] = &ease_back;
    level.ease_funcs["elastic"] = &function_d66c45282cb1cbcf;
    level.ease_funcs["bounce"] = &ease_bounce;
}

// Namespace easing / scripts\engine\easing
// Params 5
// Checksum 0x0, Offset: 0x1e9
// Size: 0x38
function ease_linear(start, end, pct, ease_in, ease_out) {
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 6
// Checksum 0x0, Offset: 0x22a
// Size: 0x4b
function ease_power(start, end, pct, ease_in, ease_out, power) {
    pct = easepower(pct, power, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 5
// Checksum 0x0, Offset: 0x27e
// Size: 0x44
function function_5076f55422e87aca(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 2, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 5
// Checksum 0x0, Offset: 0x2cb
// Size: 0x44
function ease_cubic(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 3, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 5
// Checksum 0x0, Offset: 0x318
// Size: 0x44
function function_651839ae5c237167(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 4, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 5
// Checksum 0x0, Offset: 0x365
// Size: 0x44
function function_8ed1dfbb99ebbffb(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 5, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 6
// Checksum 0x0, Offset: 0x3b2
// Size: 0x4b
function function_7c81847ebfb3f5b3(start, end, pct, ease_in, ease_out, scale) {
    pct = easeexponential(pct, scale, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 6
// Checksum 0x0, Offset: 0x406
// Size: 0x4b
function function_26eb6629640c404b(start, end, pct, ease_in, ease_out, log_base) {
    pct = easelogarithmic(pct, log_base, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 5
// Checksum 0x0, Offset: 0x45a
// Size: 0x42
function ease_sine(start, end, pct, ease_in, ease_out) {
    pct = easesine(pct, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 7
// Checksum 0x0, Offset: 0x4a5
// Size: 0x55
function ease_back(start, end, pct, ease_in, ease_out, var_210d57017070b86f, power) {
    pct = easeback(pct, var_210d57017070b86f, power, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 8
// Checksum 0x0, Offset: 0x503
// Size: 0x5f
function function_d66c45282cb1cbcf(start, end, pct, ease_in, ease_out, amplitude, frequency, fade_scalar) {
    pct = easeelastic(pct, amplitude, frequency, fade_scalar, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 7
// Checksum 0x0, Offset: 0x56b
// Size: 0x55
function ease_bounce(start, end, pct, ease_in, ease_out, bounces, decay_scalar) {
    pct = easebounce(pct, bounces, decay_scalar, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing / scripts\engine\easing
// Params 9
// Checksum 0x0, Offset: 0x5c9
// Size: 0x61
function ease_dvar(dvar, value, time, ease_type, ease_in, ease_out, ease_param1, ease_param2, ease_param3) {
    function_5a51a4e5eec18b00(&setdvar, dvar, value, time, ease_type, ease_in, ease_out, ease_param1, ease_param2, ease_param3);
}

// Namespace easing / scripts\engine\easing
// Params 9
// Checksum 0x0, Offset: 0x632
// Size: 0x61
function function_106f0697ee4d2c55(dvar, value, time, ease_type, ease_in, ease_out, ease_param1, ease_param2, ease_param3) {
    function_5a51a4e5eec18b00(&setsaveddvar, dvar, value, time, ease_type, ease_in, ease_out, ease_param1, ease_param2, ease_param3);
}

// Namespace easing / scripts\engine\easing
// Params 10, eflags: 0x4
// Checksum 0x0, Offset: 0x69b
// Size: 0x194
function private function_5a51a4e5eec18b00(dvar_func, dvar, value, time, ease_type, ease_in, ease_out, ease_param1, ease_param2, ease_param3) {
    assert(isdefined(level.ease_funcs));
    assert(isdefined(level.ease_funcs[ease_type]));
    dvar_name = function_f28fd66285fa2c9(dvar);
    level notify("ease_dvar_" + dvar_name);
    level endon("ease_dvar_" + dvar_name);
    start_value = getdvarfloat(dvar);
    cur_value = start_value;
    cur_time = 0;
    while (cur_time < time) {
        cur_time += level.framedurationseconds;
        pct = min(1, cur_time / time);
        if (isdefined(ease_param3)) {
            cur_value = [[ level.ease_funcs[ease_type] ]](start_value, value, pct, ease_in, ease_out, ease_param1, ease_param2, ease_param3);
        } else if (isdefined(ease_param2)) {
            cur_value = [[ level.ease_funcs[ease_type] ]](start_value, value, pct, ease_in, ease_out, ease_param1, ease_param2);
        } else if (isdefined(ease_param1)) {
            cur_value = [[ level.ease_funcs[ease_type] ]](start_value, value, pct, ease_in, ease_out, ease_param1);
        } else {
            cur_value = [[ level.ease_funcs[ease_type] ]](start_value, value, pct, ease_in, ease_out);
        }
        builtin [[ dvar_func ]](dvar, cur_value);
        waitframe();
    }
    builtin [[ dvar_func ]](dvar, value);
}

