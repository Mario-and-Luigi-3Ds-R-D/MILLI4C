LDR             R1, [R0,#0x104]
CMP             R1, #0
BEQ             loc_1FF810
VLDR            S2, [R0,#0x18]
VLDR            S5, [R0,#0xE4]
VLDR            S0, [R0,#0x20]
VLDR            S3, [R0,#0xEC]
VADD.F32        S2, S2, S5
VLDR            S1, [R0,#0x1C]
VLDR            S4, [R0,#0xE8]
LDR             R0, [R0,#0x104]
MOV             R1, #0
VADD.F32        S1, S1, S4
MOV             R2, #0x3F800000
STR             R1, [R0,#0x80]
STR             R2, [R0,#0x7C]
VADD.F32        S0, S0, S3
ADD             R3, R0, #0x8C
STR             R1, [R0,#0x84]
VSTR            S2, [R0,#0x88]
STM             R3, {R1,R2}
ADD             R3, R0, #0xA0
STR             R1, [R0,#0x94]
VSTR            S1, [R0,#0x98]
STR             R1, [R0,#0x9C]
STM             R3, {R1,R2}
VSTR            S0, [R0,#0xA8]
BX              LR
LDR             R2, =dword_68BC30
ADD             R0, R0, #0xFC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
BX              LR
