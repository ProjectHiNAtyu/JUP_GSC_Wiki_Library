// scripts\common\string.gsc  (2ED63158B46A6D6F.gscc) (size: 804 Bytes / 0x324 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0xab117b9 (179378105)
// size ...... 804 (0x324)
// includes .. 0   (offset: 0x61)
// strings ... 1   (offset: 0x2ec)
// dev strs .. 2   (offset: 0x300)
// exports ... 5   (offset: 0x1c8)
// cseg ...... 0x61 + 0x167 (0x1c8)
// imports ... 3   (offset: 0x290)
// animtree1 . 0   (offset: 0x324)
// animtree2 . 0   (offset: 0x324)
#namespace string;

// Namespace string / scripts\common\string
// Params 1
// Checksum 0x0, Offset: 0x69
// Size: 0x1d
function to_string(var) {
    if (isdefined(var)) {
        return ("" + var);
    }
    return "";
}

// Namespace string / scripts\common\string
// Params 1
// Checksum 0x0, Offset: 0x8f
// Size: 0x19, Type: bool
function function_46b9c00bb0535aa3(str) {
    return !isdefined(str) || str == "";
}

/#

    // Namespace string / scripts\common\string
    // Params 3
    // Checksum 0x0, Offset: 0xb1
    // Size: 0x50, Type: dev
    function rjust(str_input, n_length, str_fill) {
        if (!isdefined(str_fill)) {
            str_fill = "<dev string:x1c>";
        }
        str_input = to_string(str_input);
        n_fill_length = n_length - str_input.size;
        str_fill = fill(n_fill_length, str_fill);
        return str_fill + str_input;
    }

    // Namespace string / scripts\common\string
    // Params 3
    // Checksum 0x0, Offset: 0x109
    // Size: 0x50, Type: dev
    function ljust(str_input, n_length, str_fill) {
        if (!isdefined(str_fill)) {
            str_fill = "<dev string:x1c>";
        }
        str_input = to_string(str_input);
        n_fill_length = n_length - str_input.size;
        str_fill = fill(n_fill_length, str_fill);
        return str_input + str_fill;
    }

    // Namespace string / scripts\common\string
    // Params 2
    // Checksum 0x0, Offset: 0x161
    // Size: 0x67, Type: dev
    function fill(n_length, str_fill) {
        if (!isdefined(str_fill) || str_fill == "<dev string:x1e>") {
            str_fill = "<dev string:x1c>";
        }
        str_return = "<dev string:x1e>";
        while (n_length > 0) {
            str = getsubstr(str_fill, 0, n_length);
            n_length -= str.size;
            str_return += str;
        }
        return str_return;
    }

#/
