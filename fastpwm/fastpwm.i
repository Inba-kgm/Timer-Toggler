# 0 "fastpwm.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "fastpwm.c"
# 1 "/usr/avr/include/avr/io.h" 1 3
# 93 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/sfr_defs.h" 1 3
# 124 "/usr/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/avr/include/inttypes.h" 1 3
# 35 "/usr/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/16.1.0/include/stdint.h" 1 3
# 9 "/usr/lib/gcc/avr/16.1.0/include/stdint.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "/usr/avr/include/stdint.h" 1 3
# 135 "/usr/avr/include/stdint.h" 3
typedef signed char int8_t;
typedef unsigned char uint8_t;



typedef int int16_t;
typedef unsigned int uint16_t;
typedef long int int32_t;
typedef long unsigned int uint32_t;
typedef long long int int64_t;
typedef long long unsigned int uint64_t;
# 157 "/usr/avr/include/stdint.h" 3
__extension__ typedef __int24 int24_t;
__extension__ typedef __uint24 uint24_t;
typedef int24_t int_least24_t;
typedef uint24_t uint_least24_t;
typedef int24_t int_fast24_t;
typedef uint24_t uint_fast24_t;
# 179 "/usr/avr/include/stdint.h" 3
typedef int16_t intptr_t;



typedef uint16_t uintptr_t;




typedef int_least24_t intptr24_t;




typedef uint_least24_t uintptr24_t;
# 204 "/usr/avr/include/stdint.h" 3
typedef int8_t int_least8_t;



typedef uint8_t uint_least8_t;



typedef int16_t int_least16_t;



typedef uint16_t uint_least16_t;
# 232 "/usr/avr/include/stdint.h" 3
typedef int32_t int_least32_t;



typedef uint32_t uint_least32_t;






typedef int64_t int_least64_t;





typedef uint64_t uint_least64_t;
# 263 "/usr/avr/include/stdint.h" 3
typedef int8_t int_fast8_t;



typedef uint8_t uint_fast8_t;



typedef int16_t int_fast16_t;



typedef uint16_t uint_fast16_t;
# 291 "/usr/avr/include/stdint.h" 3
typedef int32_t int_fast32_t;



typedef uint32_t uint_fast32_t;






typedef int64_t int_fast64_t;





typedef uint64_t uint_fast64_t;
# 329 "/usr/avr/include/stdint.h" 3
typedef int64_t intmax_t;



typedef uint64_t uintmax_t;
# 12 "/usr/lib/gcc/avr/16.1.0/include/stdint.h" 2 3
#pragma GCC diagnostic pop
# 36 "/usr/avr/include/inttypes.h" 2 3
# 1 "/usr/avr/include/bits/attribs.h" 1 3
# 37 "/usr/avr/include/inttypes.h" 2 3
# 77 "/usr/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;





typedef uint32_t uint_farptr_t;
# 125 "/usr/avr/include/avr/sfr_defs.h" 2 3
# 94 "/usr/avr/include/avr/io.h" 2 3
# 257 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/iom328p.h" 1 3
# 258 "/usr/avr/include/avr/io.h" 2 3
# 723 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/portpins.h" 1 3
# 724 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/common.h" 1 3
# 726 "/usr/avr/include/avr/io.h" 2 3



# 1 "/usr/avr/include/avr/version.h" 1 3
# 730 "/usr/avr/include/avr/io.h" 2 3







# 1 "/usr/avr/include/avr/fuse.h" 1 3
# 248 "/usr/avr/include/avr/fuse.h" 3
typedef struct
{
    uint8_t low;
    uint8_t high;
    uint8_t extended;
} __fuse_t;
# 738 "/usr/avr/include/avr/io.h" 2 3


# 1 "/usr/avr/include/avr/lock.h" 1 3
# 741 "/usr/avr/include/avr/io.h" 2 3
# 2 "fastpwm.c" 2
# 1 "/usr/avr/include/avr/interrupt.h" 1 3
# 3 "fastpwm.c" 2

# 3 "fastpwm.c"
int main(){
    
# 4 "fastpwm.c" 3
   (*(volatile uint8_t *)((0x04) + 0x20)) 
# 4 "fastpwm.c"
        |= (1<<
# 4 "fastpwm.c" 3
               1
# 4 "fastpwm.c"
                  );
 
# 5 "fastpwm.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 5 "fastpwm.c"
      |= (1<<1);
    
# 6 "fastpwm.c" 3
   (*(volatile uint8_t *)(0x80)) 
# 6 "fastpwm.c"
          |= (1<<7)|(1<<1);
    
# 7 "fastpwm.c" 3
   (*(volatile uint8_t *)(0x81)) 
# 7 "fastpwm.c"
          |= (1<<4)|(1<<3)|(1<<0)|(1<<2);
    
# 8 "fastpwm.c" 3
   (*(volatile uint16_t *)(0x86)) 
# 8 "fastpwm.c"
        = 31249;
    
# 9 "fastpwm.c" 3
   (*(volatile uint16_t *)(0x88)) 
# 9 "fastpwm.c"
         = 7812;
    while(1){

    }
}
