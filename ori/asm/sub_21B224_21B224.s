PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
MOV             R7, R1
LDRH            R1, [R0,#0x10]
MOV             R8, R0
LDR             R0, =off_6CE970
MOV             R6, R2
MOV             R4, R3
LDR             R0, [R0]
BL              sub_52F368
MOV             R5, R0
MOV             R0, R6
LDRSB           R0, [R0,#0x47]
CMP             R0, #0
BEQ             loc_21B2A4
MOV             R0, R8
BL              sub_501804
MOV             R0, #1
STRB            R4, [SP,#0x28+var_28]
MOV             R1, #0
STRB            R0, [SP,#0x28+var_27]
ADD             R0, SP, #0x28+var_24
MOV             R2, R1
MOV             R3, R1
STM             R0, {R1-R3}
LDR             R0, [R5,#0x140]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
MOV             R0, R6
BL              sub_5ECC44
CMP             R0, #0
NOP
BEQ             loc_21B29C
MOV             R1, #2
MOV             R0, #0
STRB            R4, [SP,#0x28+var_28]
STRB            R1, [SP,#0x28+var_27]
STR             R0, [SP,#0x28+var_1C]
STR             R6, [SP,#0x28+var_20]
STR             R7, [SP,#0x28+var_24]
LDR             R0, [R5,#0x140]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
