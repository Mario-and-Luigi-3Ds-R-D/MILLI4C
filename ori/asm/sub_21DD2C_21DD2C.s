PUSH            {R4-R11,LR}
SUB             SP, SP, #0x64
MOV             R5, R0
MOV             R2, #0x18
MOV             R1, #0
ADD             R0, SP, #0x88+var_58
BL              sub_110BE4
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0x88+var_48]
LDR             R0, =_ZTV9DummyRock; `vtable for'DummyRock ...
MOV             R4, #0
ADD             R1, R0, #8
ADD             R0, R0, #0x348
STR             R0, [SP,#0x88+var_7C]
STR             R1, [SP,#0x88+var_74]
LDR             R1, =dword_6ED9B8
LDR             R0, =0x758
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
MOVEQ           R1, #0
BEQ             loc_21DDB8
LDR             R1, [R5,#4]
LDR             R2, =0x1428D
MOV             R12, #1
ADD             R3, SP, #0x88+var_58
LDRB            R2, [R2,R1]
STR             R12, [SP,#0x88+var_88]
BL              sub_580DD4
LDR             R1, [SP,#0x88+var_74]
STR             R1, [R0]
LDR             R1, [SP,#0x88+var_7C]
STR             R1, [R0,#0xE0]
MOV             R1, R0
ADD             R0, R5, R4,LSL#2
VLDR            S1, =-16.0
STR             R1, [R0,#0x13C]
LDR             R3, [R1,#0x5E0]
VLDR            S0, =16.0
VLDR            S2, =32.0
BIC             R3, R3, #7
STR             R3, [R1,#0x5E0]
LDR             R12, [R0,#0x13C]
LDR             R2, =0x14184
LDR             R3, [R12,#0x640]
LDR             R11, [R12,#0x644]
BIC             R3, R3, #7
STR             R3, [R12,#0x640]
LDR             R8, [R0,#0x13C]
BIC             R6, R3, #0x38 ; '8'
BIC             R3, R6, #0x1C0
BIC             R10, R3, #0x38000
STR             R6, [R8,#0x640]
STR             R11, [R8,#0x644]
LDR             R6, [R0,#0x13C]
BIC             R7, R10, #0x1C0000
BIC             R12, R7, #0xE00000
BIC             R9, R12, #0x7000000
STR             R3, [R6,#0x640]
STR             R11, [R6,#0x644]
LDR             R3, [R0,#0x13C]
BIC             R1, R9, #0x38000000
STR             R10, [R3,#0x640]
STR             R11, [R3,#0x644]
LDR             R3, [R0,#0x13C]
STR             R7, [R3,#0x640]
STR             R11, [R3,#0x644]
LDR             R3, [R0,#0x13C]
STR             R12, [R3,#0x640]!
STR             R11, [R3,#4]
LDR             R3, [R0,#0x13C]
STR             R9, [R3,#0x640]
STR             R11, [R3,#0x644]
LDR             R3, [R0,#0x13C]
ADD             R3, R3, #0x640
STM             R3, {R1,R11}
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S1, [R1,#0x1BC]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S0, [R1,#0x1C0]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S1, [R1,#0x1C4]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S0, [R1,#0x1C8]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S2, [R1,#0x1CC]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S1, [R1,#0x224]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S0, [R1,#0x228]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S1, [R1,#0x22C]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S0, [R1,#0x230]
LDR             R1, [R0,#0x13C]
ADD             R1, R1, #0x400
VSTR            S2, [R1,#0x234]
LDR             R1, [R0,#0x13C]
VSTR            S1, [R1,#0x150]
LDR             R1, [R0,#0x13C]
LDR             R3, =0x1428D
ADD             R4, R4, #1
CMP             R4, #2
VSTR            S0, [R1,#0x154]
LDR             R1, [R0,#0x13C]
VSTR            S1, [R1,#0x158]
LDR             R1, [R0,#0x13C]
VSTR            S0, [R1,#0x15C]
LDR             R1, [R0,#0x13C]
VSTR            S2, [R1,#0x160]
LDR             R1, [R0,#0x13C]
LDR             R0, [R5,#4]
LDRB            R3, [R3,R0]
ADD             R2, R2, R3,LSL#2
STR             R1, [R0,R2]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x14000
LDRB            R1, [R0,#0x28D]
ADD             R1, R1, #1
STRB            R1, [R0,#0x28D]
BLT             loc_21DD68
ADD             SP, SP, #0x64 ; 'd'
POP             {R4-R11,PC}
