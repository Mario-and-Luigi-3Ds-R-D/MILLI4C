PUSH            {R3-R5,LR}
MOV             R4, R0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x304
MOV             R5, R1
LDR             R0, [R0]
BL              sub_1FD09C
ADD             R2, R4, #0x12000
ADD             R2, R2, #0x790
LDR             R3, =0x12700
LDR             R0, [R2]
ADD             R1, R0, R5
STR             R1, [R2]
LDR             R0, [R3,R4]
LDR             R3, [R0,#0xBC]
CMP             R3, R1
BHI             loc_1FA5A8
LDR             R3, [R0,#0xB4]
STR             R3, [SP,#0x10+var_10]
ADD             R3, R4, #0x12400
VLDR            S0, [SP,#0x10+var_10]
VLDR            S1, [R3,#0x38C]
VADD.F32        S0, S0, S1
VSTR            S0, [R3,#0x38C]
LDR             R12, [R0,#0xB8]
VMOV            S1, R12
STR             R12, [SP,#0x10+var_10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT          S0, R12
VSTR            S0, [R3,#0x38C]
LDR             R0, [R0,#0xBC]
SUB             R0, R1, R0
STR             R0, [R2]
MOV             R0, R4
POP             {R3-R5,LR}
B               sub_1FA5B8
