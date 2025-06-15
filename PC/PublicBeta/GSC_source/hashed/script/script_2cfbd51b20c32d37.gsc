// script_2cfbd51b20c32d37  (2CFBD51B20C32D37.gscc) (size: 470 Bytes / 0x1d6 / GSC)
// magic .... 0xa0d4353478a vm: Call of Duty: Modern Warfare III (PC)
// crc: 0x715a83d6 (1901757398)
// size ...... 470 (0x1d6)
// includes .. 4   (offset: 0x6f)
// strings ... 2   (offset: 0x1be)
// dev strs .. 0   (offset: 0x1d6)
// exports ... 4   (offset: 0xfe)
// cseg ...... 0x8f + 0x6f (0xfe)
// imports ... 1   (offset: 0x19e)
// animtree1 . 0   (offset: 0x1d6)
// animtree2 . 0   (offset: 0x1d6)
#using scripts\anim\battlechatter;
#using scripts\anim\utility_common;
#using scripts\common\utility;
#using scripts\engine\utility;

#namespace battlechatter_wrapper;

// Namespace battlechatter_wrapper / scripts\anim\battlechatter_wrapper
// Params 1
// Checksum 0x0, Offset: 0x97
// Size: 0xb
function evaluatemoveevent(var_76af5757c71b312c) {
    
}

// Namespace battlechatter_wrapper / scripts\anim\battlechatter_wrapper
// Params 0
// Checksum 0x0, Offset: 0xaa
// Size: 0x2
function evaluatereloadevent() {
    
}

// Namespace battlechatter_wrapper / scripts\anim\battlechatter_wrapper
// Params 2
// Checksum 0x0, Offset: 0xb4
// Size: 0x2a
function function_f56c2de6db70455f(enemytype, enemy) {
    executeevent("spotted", [enemytype, enemy]);
}

// Namespace battlechatter_wrapper / scripts\anim\battlechatter_wrapper
// Params 1
// Checksum 0x0, Offset: 0xe6
// Size: 0x18
function evaluateattackevent(type) {
    executeevent("attack", type);
}

