PUSH            {R4-R7,LR}
SUB             SP, SP, #0x24
MOV             R5, R1
LDR             R12, [SP,#0x24+arg_0]
ADD             R7, SP, #8
MOV             R6, #0
MOV             R1, #1
ORR             R2, R2, #0x2000000
STR             R3, [SP,#0x24+var_20]
STR             R12, [SP,#0x24+var_24]
STM             R7, {R1,R2,R6}
MOV             R2, #3
LDR             R7, =off_6D1648
STRB            R1, [SP,#0x24+var_C]
STR             R2, [SP,#0x24+var_10]
STRB            R6, [SP,#0x24+var_B]
LDR             R1, [R7,#0x1C+var_1C]
MOV             R4, R0
MOV             R0, SP
LDR             R1, [R1,#0xBC]
ADD             R1, R1, #0xD0
BL              sub_4BE588
STR             R0, [R4,#4]
LDR             R0, [R7,#0x1C+var_1C]
MOV             R2, R6
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0xD0
ADD             R0, R4, #4
BL              sub_4BC2E8
LDR             R0, [R7,#0x1C+var_1C]
LDR             R1, [R4,#4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0xD0
BL              sub_4AC1CC
STR             R0, [R4,#8]
LDR             R0, [R5,#0x164]
LDR             R1, [R4,#4]
LDR             R0, [R0]
LDR             R0, [R0,#0x3C]
LDR             R2, [R0,#0x274]!
CMP             R2, #0
ADDNE           R0, R0, R2
MOVEQ           R0, R6
STR             R0, [SP,#0x24+var_8]
ADD             R0, SP, #0x24+var_8
BL              sub_4BEF8C
LDR             R0, [R5,#0x164]
LDR             R0, [R0]
LDR             R0, [R0,#0x3C]
STR             R6, [R0,#0x2B0]
LDR             R0, [R5,#0x164]
LDR             R1, [R4,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x3C]
LDR             R2, [R0,#0x274]!
CMP             R2, #0
ADDNE           R0, R0, R2
MOVEQ           R0, R6
STR             R0, [SP,#0x24+var_8]
ADD             R0, SP, #0x24+var_8
BL              sub_4BEF8C
LDR             R0, [R5,#0x164]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x3C]
STR             R6, [R0,#0x2B0]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
