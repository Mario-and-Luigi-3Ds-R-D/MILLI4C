PUSH            {R4-R9,LR}
SUB             SP, SP, #0x24
ADD             R4, SP, #0x40+arg_0
ORR             R1, R1, R2,LSL#16
LDM             R4, {R5-R7}
LDR             R4, =byte_6E1170
ORR             R2, R5, R6,LSL#16
LDR             R9, [R4,#(off_6E1174 - 0x6E1170)]; dword_69B120
LDR             R12, [R9]
LDRD            R8, R9, [R9,#(dword_69B138 - 0x69B120)]
STR             R12, [SP,#0x40+var_40]
MOV             R12, #3
STRD            R8, R9, [SP,#0x40+var_28]
STRB            R12, [SP,#0x40+var_40]
LDRB            R12, [R4]
ADD             R4, SP, #0x40+var_3C
STRB            R12, [SP,#0x40+var_40+3]
STM             R4, {R0,R3}
ADD             R4, SP, #0x40+var_34
STM             R4, {R1,R2,R7}
BL              sub_129DA8
MOV             R1, SP
ADD             R0, R0, #0x58 ; 'X'
BL              sub_129940
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R9,PC}
