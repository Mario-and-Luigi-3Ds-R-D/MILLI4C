VLDM            R1, {S0-S2}
MOV             R1, #0
MOV             R2, #0x3F800000
STR             R1, [R0,#0x80]
STR             R2, [R0,#0x7C]
ADD             R3, R0, #0x8C
STR             R1, [R0,#0x84]
VSTR            S0, [R0,#0x88]
STM             R3, {R1,R2}
ADD             R3, R0, #0xA0
STR             R1, [R0,#0x94]
VSTR            S1, [R0,#0x98]
STR             R1, [R0,#0x9C]
STM             R3, {R1,R2}
VSTR            S2, [R0,#0xA8]
BX              LR
