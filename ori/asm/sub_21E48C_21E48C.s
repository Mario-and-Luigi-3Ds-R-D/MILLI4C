ADD             R3, R0, #4
MOV             R2, #0
STM             R3, {R1,R2}
MOV             R1, #0
STR             R2, [R0,#0xC]
MOV             R2, #8
ADD             R0, R0, #0x13C
B               sub_110BE4
