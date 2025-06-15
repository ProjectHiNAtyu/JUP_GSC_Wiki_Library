// scripts\engine\dev.gsc  (26AEEAA01EAA6490.gscc) (size: 465 Bytes / 0x1d1 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x429f3482 (1117729922)
// size ...... 465 (0x1d1)
// includes .. 1   (offset: 0x60)
// strings ... 0   (offset: 0x1b1)
// dev strs .. 2   (offset: 0x1b1)
// exports ... 1   (offset: 0x115)
// cseg ...... 0x68 + 0xad (0x115)
// imports ... 4   (offset: 0x13d)
// animtree1 . 0   (offset: 0x1d1)
// animtree2 . 0   (offset: 0x1d1)
#using scripts\engine\utility;

#namespace dev;

/#

    // Namespace dev / scripts\engine\dev
    // Params 2
    // Checksum 0x0, Offset: 0x70
    // Size: 0xa5, Type: dev
    function function_4da869df964b68db(dvarname, var_d4bb121b87421c8) {
        setdevdvar(dvarname, "<dev string:x1c>");
        while (true) {
            waitframe();
            dvarvalue = getdvar(dvarname);
            if (dvarvalue == "<dev string:x1c>") {
                continue;
            }
            setdevdvar(dvarname, "<dev string:x1c>");
            tokens = strtok(dvarvalue, "<dev string:x1d>");
            if (!isdefined(tokens) || tokens.size < 1) {
                continue;
            }
            command = tokens[0];
            arglist = array_slice(tokens, 1);
            [[ var_d4bb121b87421c8 ]](command, arglist);
        }
    }

#/
