PUSH            {R0,R1,R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R6, R0
ADD             R0, R0, #0x14400
STR             R0, [SP,#0x40+var_30]
LDR             R4, [R0]
CMP             R4, #2
BGE             loc_2AF4C4
LDR             R0, [SP,#0x40+var_28]
ADD             R9, R6, #0x10000
MOV             R11, #0
ADD             R9, R9, #0x3D00
RSB             R10, R0, R0,LSL#4
ADD             R0, R6, #0x13C00
ADD             R0, R0, #0x5C ; '\'
STR             R0, [SP,#0x40+var_34]
LDRH            R0, [R9,#4]
ADD             R1, R4, R0,LSL#1
LDR             R0, [R6,#4]
MOV             R8, R1
LDR             R0, [R0,#0x40]
ADD             R0, R0, R10,LSL#2
BL              sub_158E18
CMP             R4, #0
MOV             R5, R0
BEQ             loc_2AF468
CMP             R4, #1
BNE             loc_2AF48C
B               loc_2AF4D0
ADD             R0, SP, #0x40+var_3C
STR             R11, [SP,#0x40+var_40]; int
STM             R0, {R5,R11}
MOV             R2, R8; int
LDR             R0, [R6,#4]; int
LDR             R1, [SP,#0x40+var_28]; int
LDR             R3, [SP,#0x40+var_34]; int
BL              sub_532794
MOV             R7, R0
CMP             R5, #0
BEQ             loc_2AF49C
CMP             R7, #0
BEQ             loc_2AF508
ADD             R0, R6, R4,LSL#2
ADD             R1, R0, #0x13C00
ADD             R1, R1, #0xBC
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xC70
ADD             R4, R4, #1
STR             R5, [R1]
CMP             R4, #2
STR             R7, [R0]
BLT             loc_2AF434
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {R4-R11,PC}
CMP             R5, #0
MOVEQ           R7, #0
BEQ             loc_2AF49C
ADD             R0, SP, #0x40+var_3C
STR             R11, [SP,#0x40+var_40]; int
STM             R0, {R5,R11}
MOV             R2, R8; int
LDR             R0, [R6,#4]; int
LDR             R1, [SP,#0x40+var_28]; int
LDR             R3, [SP,#0x40+var_34]; int
BL              sub_532794
MOV             R7, R0
NOP
B               loc_2AF494
LDR             R0, [SP,#0x40+var_30]
STR             R4, [R0]
ADD             SP, SP, #0x1C
MOV             R0, #1
POP             {R4-R11,PC}
