LDR             R0, [R0,#0xB0]
NOP
PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, =off_6CE970
SUB             SP, SP, #0x10
MOV             R3, #0
MOV             R5, SP
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1A0DD4
LDR             R1, =off_6BB4F8
MOV             R4, R0
STM             R0, {R1,R6}
MOV             R1, #2
LDR             R2, [R6,#0x5C]
STRB            R1, [R0,#0xC]!
STR             R2, [R0,#4]
LDR             R2, [R6,#0x5C]
ADD             R0, R4, #0x14
ADD             R2, R2, #0x24 ; '$'
VLDM            R2, {S0-S2}
VSTM            R0, {S0-S1}
LDR             R0, =off_6CE388
VSTR            S2, [R4,#0x1C]
STRB            R1, [R4,#8]
LDR             R0, [R0]
BL              sub_1A2638
MOV             R0, R4
STR             R0, [SP,#0x20+var_20]
ADD             R0, R5, #4
STR             R0, [SP,#0x20+var_18]
STR             R0, [SP,#0x20+var_1C]
MOV             R1, R5
MOV             R2, #0
MOV             R0, R6
BL              sub_61E434
LDR             R1, [SP,#0x20+var_18]
ADD             R0, SP, #0x20+var_1C
CMP             R1, R0
BNE             loc_1A0E1C
LDR             R0, [SP,#0x20+var_20]
CMP             R0, #0
BEQ             loc_1A0E1C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x20+var_1C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
