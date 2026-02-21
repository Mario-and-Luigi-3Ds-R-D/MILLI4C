PUSH            {R4-R8,LR}
SUB             SP, SP, #0x48
MOV             R5, R0
ADD             R0, SP, #0x60+arg_4
MOV             R6, R2
VLDM            R0, {S0-S4}
ADD             R2, SP, #0x60+var_50
MOV             R4, R1
LDR             R0, =byte_6EC430
LDR             R7, [SP,#0x60+arg_0]
ADD             R1, R5, #0x14800
ADD             R1, R1, #0x368
VLDM            R0, {S5-S12}
ADD             R0, SP, #0x60+var_40
MOV             R8, R3
ADD             R3, R5, #0xCC
VSTM            R2, {S1-S12}
ADD             R2, SP, #0x60+var_5C
STR             R1, [SP,#0x60+var_60]
STM             R2, {R0,R6}
ADD             R2, SP, #0x60+var_1C
VSTR            S0, [SP,#0x60+var_54]
LDR             R0, [R5]
ADD             R1, SP, #0x60+var_20
LDR             R12, [R0,#0x294]
MOV             R0, R5
BLX             R12
LDR             R1, [SP,#0x60+var_20]
MOV             R0, #0xFE
AND             R2, R0, R8,LSL#1
STR             R1, [R4,#8]
LDR             R0, [SP,#0x60+var_1C]
STR             R0, [R4,#0xC]
LDR             R1, [R4,#0x10]
LDRB            R0, [R1]
ORR             R0, R0, #1
STRB            R0, [R1]
BIC             R1, R0, #0xFE
LDR             R0, [R4,#0x10]
ORR             R1, R1, R2
STRB            R1, [R0]
LDR             R0, [R4,#0x10]
ADD             R1, R6, #0x28 ; '('
ADD             R6, R6, #0x10
STRB            R7, [R0,#1]
LDR             R0, [R4,#0x10]
LDM             R1, {R1-R3}
ADD             R0, R0, #4
STM             R0, {R1-R3}
LDR             R3, [R4,#0x10]
LDM             R6, {R0-R2}
ADD             R3, R3, #0x10
STM             R3, {R0-R2}
LDR             R0, [R4,#8]
CMP             R0, #0
ADDNE           R1, R4, #8
STRNE           R1, [R0,#0x180]
ADD             R5, R5, #0x14C00
ADD             R5, R5, #0x3F4
MOV             R2, R4
LDR             R0, [R5]
ADD             R1, R0, #4
BL              sub_4659D0
ADD             SP, SP, #0x48 ; 'H'
POP             {R4-R8,PC}
