PUSH            {R4-R7,LR}
MOV             R6, R1
MOV             R7, R2
MOV             R5, R3
VPUSH           {D8}
SUB             SP, SP, #0xC
VLDR            S16, [SP,#0x28+arg_0]
VSTR            S16, [SP,#0x28+var_28]
BL              sub_580DD4
LDR             R2, =off_6AEADC
STR             R2, [R0],#0xE0
ADD             R1, R2, #0x340
STR             R1, [R0],#0x678
BL              sub_2FCBA4
LDR             R3, =off_6B45FC
SUB             R4, R0, #0x400
SUB             R4, R4, #0x358
ADD             R1, R3, #0x35C
STR             R1, [R0,#-0x678]
ADD             R2, R3, #0x374
STR             R2, [R0]
STR             R3, [R0,#-0x758]
MOV             R1, R0
STR             R5, [SP,#0x28+var_28]
VSTR            S16, [SP,#0x28+var_24]
MOV             R3, R7
MOV             R2, R6
MOV             R0, R4
BL              sub_1E62B8
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,PC}
