PUSH            {R4-R7,LR}
MOV             R5, R1
MOV             R4, R0
LDRB            R1, [R0,#0xC1]
LDRH            R0, [R0,#0xC8]
SUB             SP, SP, #0x34
MOV             R6, R2
MOV             R7, R3
MOV             R1, R1,LSL#1
BL              sub_127F6C
CMP             R6, #0xFF
STRH            R1, [R4,#0xC8]
BEQ             loc_29ED94
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x15000
ADD             R1, R1, #0x13C
AND             R0, R6, #0xFF
ADD             R0, R0, R1
AND             R2, R7, #0xFF
LDRB            R1, [R0,#0x1B8]
VLDR            S0, =2.0
MOV             R3, #1
MOV             R0, R4
BL              sub_29EC9C
LDR             R0, [R5]
STR             R0, [R4,#0xCC]
LDR             R0, [R5,#4]
STR             R0, [R4,#0xD0]
LDR             R0, [R5,#8]
STR             R0, [R4,#0xD4]
LDR             R1, [R4,#0xAC]
MOV             R0, SP
BL              sub_1169CC
VLDR            S0, [R4,#0xCC]
VLDR            S1, [R4,#0xF8]
MOV             R1, SP
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_3C]
VLDR            S0, [R4,#0xD0]
VLDR            S1, [R4,#0xFC]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_2C]
LDR             R0, [R4,#0xD4]
STR             R0, [SP,#0x48+var_1C]
LDR             R0, [R4,#0xA4]
BL              sub_593188
LDR             R1, =unk_68A5A4
MOV             R0, #5
STRB            R0, [R4,#0xBC]
ADD             R4, R4, #0x114
LDRD            R0, R1, [R1,#(off_68A5D8 - 0x68A5A4)]
STM             R4, {R0,R1}
ADD             SP, SP, #0x34 ; '4'
POP             {R4-R7,PC}
