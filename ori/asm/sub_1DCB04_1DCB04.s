PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x10C00
VPUSH           {D8}
ADD             R0, R0, #0x254
BL              sub_2C6680
CMP             R0, #0
BEQ             loc_1DCB90
MOV             R2, #0
LDR             R0, =0xE04C
MOV             R1, R2
VLDR            S0, =1.0
BL              sub_145730
LDRB            R0, [R4,#0x52]
LDR             R5, =unk_656B78
BICS            R0, R0, #4
STRB            R0, [R4,#0x52]
BNE             loc_1DCB7C
VLDR            S16, [R5,#(flt_656B80 - 0x656B78)]
BL              sub_47FFCC
CMP             R0, #0
BEQ             loc_1DCB6C
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1DCB98
MOV             R1, #3
VMOV.F32        S0, S16
MOV             R0, R4
BL              sub_1DB5F8
ADD             R5, R5, #0x24 ; '$'
ADD             R1, R4, #0x20800
LDM             R5, {R0,R2}
ADD             R1, R1, #0x2BC
STM             R1, {R0,R2}
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVEQ           R1, #1
MOVNE           R1, #2
B               loc_1DCB70
