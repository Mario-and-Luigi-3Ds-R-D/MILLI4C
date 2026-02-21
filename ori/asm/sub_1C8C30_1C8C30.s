PUSH            {R4-R6,LR}
ADD             R5, R0, #0x13400
ADD             R5, R5, #0x3CC
MOV             R4, R0
LDR             R0, [R5]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_1C8C58
BL              sub_110D10
STR             R6, [R5]
ADD             R0, R4, #0x13000
ADD             R0, R0, #0x7D0
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x13400
ADD             R0, R0, #0x3D8
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
LDR             R0, =0x137E0
STR             R6, [R0,R4]
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1C8CC4
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C8CC4
LDR             R0, =flt_6E1324
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R2, =flt_6E1324
ADD             R3, R4, #0x13400
ADD             R3, R3, #0x3E4
ADD             R0, R4, #0x10000
LDM             R2, {R1,R2}
ADD             R0, R0, #0x3700
STM             R3, {R1,R2}
MOV             R1, #0xFFFFFFFF
LDR             R2, =0x137F1
REV             R1, R1
MVN             R3, R2
ADD             R2, R2, R4
SUB             R3, R4, R3
ADD             R4, R4, #0x13000
ADD             R4, R4, #0x7F0
STR             R1, [R0,#0xEC]
STRB            R6, [R4]
STRB            R6, [R2]
STRB            R6, [R3]
STRH            R6, [R0,#0xF4]
STRH            R6, [R0,#0xF6]
STRH            R6, [R0,#0xF8]
POP             {R4-R6,PC}
