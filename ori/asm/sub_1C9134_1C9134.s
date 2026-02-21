PUSH            {R4-R6,LR}
BL              sub_11C444
MOV             R4, R0
ADD             R0, R0, #0x13400
ADD             R0, R0, #0x3CC
MOV             R5, #0
LDR             R1, =0x137E0
STR             R5, [R0]
LDR             R0, =dword_6E1320
STR             R5, [R1,R4]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1C9190
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1C9190
LDR             R0, =flt_6E1324
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R2, =flt_6E1324
ADD             R3, R4, #0x13400
ADD             R3, R3, #0x3E4
ADD             R1, R4, #0x10000
LDM             R2, {R0,R2}
ADD             R1, R1, #0x3700
STM             R3, {R0,R2}
MOV             R2, #0xFFFFFFFF
LDR             R0, =0x137EC
REV             R2, R2
STR             R2, [R0,R4]
ADD             R2, R0, #5
MVN             R0, R2
SUB             R3, R4, R0
AND             R0, R2, R0,ASR#13
STRB            R5, [R0,R4]
STRB            R5, [R4,R2]
STRB            R5, [R3]
STRH            R5, [R1,#0xF4]
STRH            R5, [R1,#0xF6]
ADD             R0, R4, #0x13000
STRH            R5, [R1,#0xF8]
ADD             R0, R0, #0x7D0
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x13400
ADD             R0, R0, #0x3D8
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
MOV             R0, R4
POP             {R4-R6,PC}
