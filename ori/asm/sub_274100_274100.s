PUSH            {R3-R9,LR}
MOVS            R5, R2
MOV             R4, R0
MOVNE           R6, #0x56 ; 'V'
LDR             R9, =off_6CE970
MOVEQ           R6, #0x58 ; 'X'
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
CMP             R5, #0
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
LDR             R5, [R9]
BEQ             loc_2741A4
BL              sub_4635D8
MOV             R3, R0
ADD             R2, R4, #4
MOV             R1, #0x1A8
MOV             R0, R5
STR             R8, [SP,#0x20+var_20]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
MOV             R6, R0
ADD             R5, R4, #0x410
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
LDR             R0, [R4,#0x410]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
B               loc_2741C4
NOP
BL              sub_4635D8
MOV             R3, R0
ADD             R2, R4, #4
MOV             R1, #0x5E0
MOV             R0, R5
STR             R8, [SP,#0x20+var_20]
BL              sub_52AE88
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
ADD             R0, R4, #4
BL              sub_14C430
MOV             R1, #2
ADD             R0, R4, #0x1E0
BL              sub_5A2640
LDR             R0, =off_6CDF98
MOV             R1, #2
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
LDR             R0, [R0,#0x4F0]
VMOV            S0, R0
ADD             R0, R4, #0x1E0
VCVT.F32.U32    S0, S0
BL              sub_5A2708
MOV             R0, #3
STRB            R0, [R4]
POP             {R3-R9,PC}
