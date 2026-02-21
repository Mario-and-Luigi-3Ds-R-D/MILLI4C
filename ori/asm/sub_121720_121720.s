PUSH            {R4-R9,LR}
MOV             R7, R0
MOV             R0, R1
MOV             R1, R2
MOV             R2, R3
ADD             R3, SP, #0x1C+arg_0
LDR             R4, [SP,#0x1C+arg_C]
LDM             R3, {R5,R8}
LDR             R6, [SP,#0x1C+arg_8]
BL              sub_1289B8
MOV             R9, R0
LDR             R0, =0xEA60
LDR             R1, =off_36EE80
MOV             R2, #0x3E8
MOV             R12, R4,ASR#31
SMULL           R3, R0, R8, R0
SMLAL           R4, R12, R5, R1
SMLAL           R3, R0, R6, R2
LDR             R8, =0x5265C00
ADDS            R1, R3, R4
ADC             R0, R0, R12
SMLAL           R1, R0, R9, R8
STR             R0, [R7,#4]
STR             R1, [R7]
POP             {R4-R9,PC}
