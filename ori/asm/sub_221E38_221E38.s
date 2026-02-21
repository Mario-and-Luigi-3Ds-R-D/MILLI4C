LDR             R3, [R3]
NOP
PUSH            {R4-R9,LR}
SUB             SP, SP, #0x24
MOV             R8, #0
MOV             R4, R0
LDR             R0, =off_6BFDFC
MOV             R6, R3
STR             R8, [SP,#0x40+var_34]
STR             R8, [SP,#0x40+var_30]
STR             R8, [SP,#0x40+var_2C]
STR             R8, [SP,#0x40+var_28]
STR             R8, [SP,#0x40+var_24]
LDR             R3, [R0]; off_6BFE3C
MOV             R7, R2
ADD             R2, SP, #0x40+var_38
STR             R3, [SP,#0x40+var_38]
LDR             R3, [R3,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R0,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
MOV             R9, R2
STR             R0, [R2,R3]
MOV             R2, #1
ADD             R0, R9, #4
STR             R8, [SP,#0x40+var_28]
STR             R8, [SP,#0x40+var_24]
STR             R8, [SP,#0x40+var_30]
STR             R8, [SP,#0x40+var_2C]
BL              sub_10D7A8
ADD             R0, R9, #4
MOV             R1, SP
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R5, [SP,#0x40+var_40]
CMP             R5, #0
STREQ           R8, [R4]
BEQ             loc_221F0C
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, R5
LDR             R3, [R0,#0xC]
MOV             R0, R6
BLX             R3
MOV             R2, R0
STR             R0, [R4]
MOV             R3, R5
ADD             R0, R9, #4
MOV             R1, SP
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x40+var_34]
BICS            R0, R0, #1
BEQ             loc_221F34
LDR             R0, [SP,#0x40+var_34]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x40+var_34]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x40+var_34]
MOV             R1, R7
MOV             R2, #1
ADD             R0, R9, #4
STR             R8, [SP,#0x40+var_28]
STR             R8, [SP,#0x40+var_24]
STR             R8, [SP,#0x40+var_30]
STR             R8, [SP,#0x40+var_2C]
BL              sub_10D7A8
ADD             R0, R9, #4
MOV             R1, SP
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R6]
LDR             R5, [SP,#0x40+var_40]
MOV             R2, #0
LDR             R3, [R0,#0xC]
MOV             R1, R5
MOV             R0, R6
BLX             R3
ADD             R12, R9, #4
MOV             R2, R0
STR             R0, [R4,#4]
MOV             R3, R5
MOV             R1, SP
MOV             R0, R12
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x40+var_34]
BICS            R0, R0, #1
BEQ             loc_221FD8
LDR             R0, [SP,#0x40+var_34]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x40+var_34]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x40+var_34]
LDR             R0, [R4,#4]
STR             R0, [R4,#8]
LDR             R0, [SP,#0x40+var_34]
BICS            R0, R0, #1
BEQ             loc_222008
LDR             R0, [SP,#0x40+var_34]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x40+var_34]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x40+var_34]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R9,PC}
