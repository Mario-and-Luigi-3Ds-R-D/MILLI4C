PUSH            {R0,R1,R4-R11,LR}
SUB             SP, SP, #0x3C
MOV             R8, R1
MOV             R9, #0
LDR             R7, =byte_6D2498
MOV             R2, #0
ADD             R3, SP, #0x68+var_58
ADD             R12, SP, #0x68+var_40
LDR             R0, [R7,#(dword_6D2528 - 0x6D2498)]
STR             R2, [SP,#0x68+var_48]
LDR             R1, [R7,#(dword_6D252C - 0x6D2498)]
ADD             R4, SP, #0x68+var_60
STR             R3, [SP,#0x68+var_64]
STR             R12, [SP,#0x68+var_68]
STM             R4, {R0-R2}
MOV             R5, R2
MOV             R11, R2
MOV             R6, #1
MOV             R3, R2
ADD             R1, SP, #0x68+var_50
ADD             R0, SP, #0x68+var_54
BL              sub_12A600
LDR             R1, =0xFBC00000
MOV             R4, R0
CMP             R1, R4,LSL#22
BEQ             loc_12A090
ANDS            R0, R4, #0x80000000
BMI             loc_12A078
LDR             R12, [R7,#(off_6D24E0 - 0x6D2498)]
CMP             R12, #0
BEQ             loc_12A078
LDR             R0, [SP,#0x68+var_58]
LDR             R3, [SP,#0x68+var_48]
STR             R0, [SP,#0x68+var_60]
LDR             R0, [SP,#0x68+var_40]
STR             R11, [SP,#0x68+var_68]
STR             R0, [SP,#0x68+var_64]
ADD             R0, SP, #0x68+var_54
LDM             R0, {R1,R2}
LDR             R0, [R7,#(dword_6D2520 - 0x6D2498)]
BLX             R12
MOV             R6, R0
CMP             R8, #0
LDRNE           R1, [SP,#0x68+var_58]
LDR             R5, [SP,#0x68+var_54]
LDR             R9, [SP,#0x68+var_50]
MOV             R10, R6
STRNE           R1, [R8]
SXTB            R0, R10
CMP             R0, #0
BEQ             loc_129FE4
ANDS            R0, R4, #0x80000000
BMI             loc_12A0B4
CMP             R9, #3
LDREQ           R0, [SP,#0x68+var_2C]
CMPEQ           R0, R5
BNE             loc_129FE4
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, R4
POP             {R4-R11,PC}
