PUSH            {R3-R5,LR}
MOV             R4, R0
MOV             R0, #3
STRB            R0, [R4]
LDR             R0, =off_6CE970
LDR             R5, [R0]
BL              sub_4635D8
MOV             R1, #0
MOV             R3, R0
STR             R1, [SP,#0x10+var_10]
ADD             R2, R4, #4
MOV             R1, #0x5A ; 'Z'
MOV             R0, R5
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
MOV             R3, #0x100
MOV             R2, #0
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
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
POP             {R3-R5,LR}
VCVT.F32.U32    S0, S0
B               sub_5A2708
