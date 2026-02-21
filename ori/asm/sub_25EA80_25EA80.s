PUSH            {R3-R7,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC78]
LDR             R5, [R0]
LDRB            R0, [R4,#0xC70]
CMP             R0, #1
LDRBEQ          R0, [R4,#0xC64]
CMPEQ           R0, #0
BNE             locret_25EB38
LDR             R6, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x30181
MOV             R3, #0
LDR             R12, [R6]
ADD             R1, R4, #4
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R6]
MOV             R1, #0
MOV             R3, #1
STR             R1, [SP,#0x18+var_18]
ADD             R2, R4, #0x28 ; '('
ADD             R1, R3, #0x2D8
BL              sub_52AEA8
ADD             R0, R4, #0x400
VLDR            S1, [R5,#0x360]
VLDR            S0, [R0,#0x3C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x3C]
VLDR            S0, [R0,#0x34]
VLDR            S1, [R5,#0x340]
ADD             R5, R5, #0x348
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x34]
VLDM            R5, {S1-S2}
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
BGT             loc_25EB28
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VSTR            S0, [R0,#0x34]
MOV             R0, R4
POP             {R3-R7,LR}
B               sub_25E37C
POP             {R3-R7,PC}
