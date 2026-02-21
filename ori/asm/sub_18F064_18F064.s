PUSH            {R4-R9,LR}
MOV             R6, R0
MOV             R5, R1
SUB             SP, SP, #0x3C
LDR             R0, [R0]
MOV             R8, R2
MOV             R7, R3
LDR             R1, [R0,#0x2E0]
MOV             R0, R6
BLX             R1
MOVS            R4, R0
BEQ             loc_18F200
MOV             R0, SP
BL              sub_234BEC
MOV             R0, SP
BL              sub_234B48
LDM             R5, {R0-R2}
ADD             R9, SP, #0x58+var_30
VLDR            S0, =-1.5708
ADD             R3, R7, R7,LSL#1
STM             R9, {R0-R2}
LDR             R0, =off_6D1648
VSTR            S0, [SP,#0x58+var_48]
LDR             R0, [R0]
LDR             R0, [R0,#0x68]
ADD             R9, R0, R3,LSL#5
LDR             R0, [R6]
LDR             R1, [R0,#0x2D8]
MOV             R0, R6
BLX             R1
MOVS            R5, R0
BEQ             loc_18F208
MOV             R2, #1
MOV             R1, #5
STRB            R2, [R5,#0x68]
MOV             R0, #0
STRB            R1, [R5,#0x6A]
MOV             R1, R0
STRB            R0, [R5,#0x69]
LDR             R0, =sub_190DEC
ADD             R2, R5, #0x114
STM             R2, {R0,R1}
ADD             R0, R6, #0x13800
ADD             R1, R5, #0x104
ADD             R0, R0, #0x368
BL              sub_2018EC
MOV             R1, #0
ADD             R0, R4, #8
STR             R5, [R4,#0xAC]
STR             R1, [R0,#0xAC]
MOV             R1, R9
ADD             R0, R4, #8
BL              sub_19483C
MOV             R2, #0
MOV             R1, R8
ADD             R0, R4, #8
BL              sub_1949B4
MOV             R1, SP
ADD             R0, R4, #8
BL              sub_1947B8
LDR             R0, [R4,#8]
ADD             R2, R4, #0x14
MOV             R1, #0
LDR             R3, [R0,#0x10]
ADD             R0, R4, #8
BLX             R3
LDR             R0, =dword_6D159C
ADD             R5, SP, #0x58+var_30
ADD             R6, R6, #0x14000
ADD             R6, R6, #0xB60
LDR             R1, [R0]
LDR             R0, =dword_6D1598
STR             R1, [R4,#0x10]
LDR             R1, [R0]
MOV             R0, #0x3C ; '<'
AND             R3, R0, R8,LSL#2
STR             R1, [R4,#0xC]
LDR             R1, [R4,#0xC0]
LDRB            R2, [R1]
BIC             R2, R2, #3
ORR             R2, R2, #1
STRB            R2, [R1]
LDR             R1, [R4,#0xC0]
BIC             R2, R2, #0x3C ; '<'
ORR             R2, R2, R3
STRB            R2, [R1]
LDR             R1, [R4,#0xC0]
STRB            R0, [R1,#2]
LDR             R0, [R4,#0xC0]
STRB            R7, [R0,#3]
LDR             R0, [R4,#0xC0]
LDM             R5, {R1-R3}
ADD             R0, R0, #4
STM             R0, {R1-R3}
MOV             R2, R4
LDR             R0, [R4,#0xC0]
LDR             R1, [R4,#0xC]
STR             R1, [R0,#0x10]
LDR             R0, [R6]
ADD             R1, R0, #4
BL              sub_4659D0
MOV             R0, SP
NOP
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R9,PC}
MOV             R0, SP
NOP
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R9,PC}
