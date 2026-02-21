PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0x1C
LDR             R0, =off_6CE970
LDR             R1, [R5,#0x8C]
ADD             R4, R5, #0x12C00
ADD             R4, R4, #0x54 ; 'T'
LDR             R2, [R0]
VLDR            S1, [R1,#0x374]
ADD             R0, R2, #0x100000
ADD             R0, R0, #0xC400
VLDR            S0, [R0,#(loc_10C4EC - 0x10C400)]
LDRD            R0, R1, [R1,#8]
VMUL.F32        S0, S0, S1
STRD            R0, R1, [SP,#0x30+var_24]
LDR             R1, =0xC00E
MOV             R0, R2
VSTR            S0, [SP,#0x30+var_1C]
BL              sub_52FACC
MOV             R6, R0
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R6
LDR             R3, [R0,#0x58]
MOV             R0, R4
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
MOV             R7, #0
MOV             R1, R7
MOV             R0, R4
STRB            R7, [R4,#0xF1]
BL              sub_502538
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xD
MOV             R0, R4
BL              sub_14C430
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
ADD             R1, SP, #0x30+var_24
MOV             R0, R4
BL              sub_14E984
MOV             R0, #1
STRB            R0, [R4,#0xF2]
MOV             R0, #0xFFFFFF00
MOV             R6, R4
REV             R0, R0
ADD             R4, R5, #0x10000
ADD             R4, R4, #0x2F80
STR             R0, [SP,#0x30+var_2C]
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [SP,#0x30+var_2C]
ADD             R1, SP, #0x30+var_2C
VLDR            S0, =4.0
STR             R0, [R4,#4]
STR             R0, [R4]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x30+var_2C]
ADD             R0, R6, #0x32C
BL              sub_4E665C
LDR             R0, =0x129EC
ADD             R6, R5, #0x12000
ADD             R6, R6, #0x9F0
LDR             R1, [R6]
LDR             R4, [R0,R5]
CMP             R1, R4
BEQ             loc_254F04
LDR             R0, [R4]
BL              sub_24A6B4
LDR             R0, [R6]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_254EEC
LDR             R0, [R5,#0x14]
LDR             R4, [R5,#0xC]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_254F24
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R4, [R5,#0x14]
LDR             R0, [R4]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R4
BLX             R2
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_254F58
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R5,#8]
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
