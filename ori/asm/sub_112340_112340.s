PUSH            {R3-R11,LR}
MOV             R4, R0
ADD             R0, SP, #0x28+arg_0
MOV             R5, R2
MOV             R10, R1
LDM             R0, {R7,R8}
MOV             R6, R3
LDR             R9, =0x102
MOV             R1, #0
MOV             R0, SP
BL              sub_1164C0
LDR             R12, [SP,#0x28+var_28]
MOV             R3, R5
MOV             R2, R7
MOV             R1, R9
MOV             R0, R6
BLX             R12
STR             R5, [R4,#0x10]
ADD             R4, R4, #4
CMP             R8, #0
STM             R4, {R0,R6,R7}
MOV             R9, R0
BEQ             loc_1123AC
MOV             R2, R5
MOV             R1, R9
MOV             R0, R10
BL              sub_11644C
MOV             R0, R9
POP             {R3-R11,PC}
