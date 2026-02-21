LDR             R0, [R0,#0x118]
NOP
PUSH            {R3-R9,LR}
MOVS            R5, R1
MOV             R4, R0
MOVNE           R6, #0x5C ; '\'
LDR             R9, =off_6CE970
MOVEQ           R6, #0x5E ; '^'
LDR             R7, [R9]
BL              sub_4635D8
MOV             R8, #0
MOV             R3, R0
ADD             R2, R4, #4
MOV             R1, R6
MOV             R0, R7
STR             R8, [SP,#0x20+var_20]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
MOV             R3, #0x100
MOV             R2, #0
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
MOV             R1, #1
ADD             R0, R4, #4
BL              sub_14C430
MOV             R0, #1
STRB            R0, [R4]
STRB            R5, [R4,#0x418]
LDR             R5, [R9]
BL              sub_4635D8
MOV             R3, R0
ADD             R2, R4, #4
MOV             R1, #0x5E0
MOV             R0, R5
STR             R8, [SP,#0x20+var_20]
BL              sub_52AE88
VLDR            S0, =0.0
VLDR            S1, =20.0
ADD             R4, R4, #0x3A0
VSTM            R4, {S0-S1}
POP             {R3-R9,PC}
