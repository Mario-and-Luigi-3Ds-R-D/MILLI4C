NOP
PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R0, #0
CMP             R2, #0
LDR             R4, =byte_6E1170
SUB             SP, SP, #0x24
MOV             R6, R1
MOV             R8, R3
MOV             R7, R0
BEQ             loc_122A40
LDR             R3, [R4,#(off_6E1174 - 0x6E1170)]; dword_69B120
ADD             LR, SP, #0x40+var_30
LDR             R2, [R3,#(dword_69B138 - 0x69B120)]
LDR             R9, [R3,#(dword_69B12C - 0x69B120)]
LDR             R12, [R3]
LDRD            R0, R1, [R3,#(dword_69B130 - 0x69B120)]
LDR             R3, [R3,#(dword_69B13C - 0x69B120)]
STR             R9, [SP,#0x40+var_34]
STR             R12, [SP,#0x40+var_40]
STM             LR, {R0-R3}
MOV             R0, #5
STRB            R0, [SP,#0x40+var_40]
ADD             R0, SP, #0x40+var_3C
STRB            R7, [SP,#0x40+var_40+3]
STM             R0, {R5,R6}
BL              sub_129DA8
MOV             R1, SP
ADD             R0, R0, #0x58 ; 'X'
BL              sub_129940
ANDS            R0, R0, #0x80000000
BMI             loc_122A8C
LDR             R3, [R4,#(off_6E1174 - 0x6E1170)]; dword_69B120
ADD             R9, SP, #0x40+var_30
LDR             R0, [R3],#0x10
LDM             R3, {R1-R3}
STR             R0, [SP,#0x40+var_40]
MOV             R0, #1
STM             R9, {R1-R3}
STRB            R0, [SP,#0x40+var_40]
LDRB            R0, [R4]
STR             R7, [SP,#0x40+var_24]
STRB            R0, [SP,#0x40+var_40+3]
ADD             R0, SP, #0x40+var_3C
STM             R0, {R5,R6,R8}
BL              sub_129DA8
MOV             R1, SP
ADD             R0, R0, #0x58 ; 'X'
BL              sub_129940
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R9,PC}
