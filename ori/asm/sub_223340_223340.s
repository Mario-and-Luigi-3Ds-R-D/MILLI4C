PUSH            {R3-R9,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
MOV             R0, R4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_4E625C
LDRB            R0, [R4,#0x38]
LDR             R6, =off_6CDA80
MOV             R7, #1
CMP             R0, #0
BEQ             loc_2233E8
CMP             R0, #1
MOV             R8, #2
BEQ             loc_2233F4
CMP             R0, #2
BEQ             loc_22342C
CMP             R0, #3
BNE             locret_2233E4
CMP             R5, #0
BEQ             locret_2233E4
MOV             R0, #0xFFFFFFFF
STRB            R8, [R4,#0x38]
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x48]
MOV             R0, R4
BL              sub_4E665C
POP             {R3-R9,PC}
CMP             R5, #0
BNE             locret_2233E4
B               loc_223454
CMP             R5, #0
BEQ             loc_223410
MOV             R0, R4
BL              sub_4E63E0
NOP
NOP
B               loc_2233B0
ADD             R0, R4, #0x28 ; '('
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #3
BGE             loc_22344C
POP             {R3-R9,PC}
CMP             R5, #0
BEQ             loc_223454
ADD             R0, R4, #0x28 ; '('
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #0
BHI             locret_2233E4
STRB            R0, [R4,#0x38]
POP             {R3-R9,PC}
MOV             R0, R4
BL              sub_4E63E0
STRB            R7, [R4,#0x38]
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
ADD             R2, R0, #0x400
ADD             R1, R0, #0x400
VLDR            S0, [R2,#0x48]
MOV             R0, R4
POP             {R3-R9,LR}
ADD             R1, R1, #0x44 ; 'D'
B               sub_4E665C
