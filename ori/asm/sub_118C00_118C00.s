PUSH            {R4-R10,LR}
SUB             SP, SP, #0x10
MOV             R8, R1
ADD             R4, SP, #0x30+arg_4
LDR             R1, [SP,#0x30+arg_C]
LDR             R6, [SP,#0x30+arg_0]
LDM             R4, {R5,R10}
CMP             R1, #0
LDR             R1, [R8]
MOV             R4, R0
MOV             R0, R6
MOV             R9, R2
SUB             R0, R0, R1
LDR             R2, [R8,#4]
BIC             R7, R0, #7
MOVEQ           R6, #0
MOV             R1, R7
MOV             R0, R3
BLX             R2
LDR             R0, [R8,#8]
SUB             R1, R7, #0x14
BIC             R2, R1, #7
ADD             R1, R2, #4
STR             R0, [R2]
LDR             R0, [R8,#0xC]
STR             R6, [R2,#0x10]
STR             R7, [R2,#0xC]
STM             R1, {R0,R9}
CMP             R5, #0x20 ; ' '
MOV             R6, #0
ADDLS           R0, R5, #0x20 ; ' '
STR             R6, [SP,#0x30+var_28]
BLS             loc_118CA8
LDR             R0, =0xAEF62B00
ADD             R0, R0, R5
CMP             R0, #0x27 ; '''
ADDLS           R0, R0, #0x18
BLS             loc_118CA8
LDR             R0, =0x93725B00
ADD             R0, R0, R5
CMP             R0, #0x40 ; '@'
MOVHI           R0, #0xFFFFFFFF
STMEA           SP, {R0,R10}
LDR             R1, =sub_127AF4
MOV             R3, R2
ADD             R0, SP, #0x30+var_28
BL              sub_116A90
MOVS            R1, R0,LSR#31
NOP
BNE             loc_118CDC
LDR             R0, [SP,#0x30+var_28]
STR             R0, [R4]
STRB            R6, [R4,#4]
MOV             R0, R6
STRB            R6, [R4,#5]
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
