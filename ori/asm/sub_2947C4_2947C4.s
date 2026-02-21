PUSH            {R0-R3}
PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R4, R0
ADD             R0, SP, #0x28+varg_r1
LDRB            R0, [R0]
CMP             R0, #4
BEQ             loc_29484C
ADD             R0, SP, #0x28+varg_r1
ADD             R0, R0, #4
MOV             R5, R0
ADD             R0, SP, #0x28+varg_r1
LDRB            R0, [R0]
MOV             R2, R0
LDR             R1, [R4,#4]
MOV             R3, R5
MOV             R0, SP
BL              sub_294434
MOV             R1, SP
ADD             R0, SP, #0x28+varg_r1
BL              sub_284FE8
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_294840
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_294840
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4,R5}
LDR             PC, [SP+0x14+var_14],#0x14
