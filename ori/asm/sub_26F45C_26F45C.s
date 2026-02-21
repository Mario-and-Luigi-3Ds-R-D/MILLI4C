PUSH            {R3-R9,LR}
MOV             R4, R0
LDR             R7, =off_6CDF98
LDR             R0, [R7]
LDR             R5, [R0,#0x124]
LDRB            R0, [R4,#0xBC]
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_26F53C
LDR             R0, [R4,#4]
LDR             R8, =0x2AAAAAAB
LDR             R1, [R0,#0x584]
LDR             R2, [R0,#0x580]
SUB             R1, R1, R2
SMULL           R2, R1, R8, R1
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
ADD             R2, R5, #0x28C
SUB             R1, R1, #1
LDM             R2, {R2,R3}
UXTH            R1, R1
MUL             R2, R2, R3
MUL             R6, R1, R2
BL              sub_5CC6BC
LDR             R1, [R4,#4]
VMOV            S0, R0
VMOV            S1, R6
MOV             R6, #1
LDR             R0, [R1,#0x584]
LDR             R1, [R1,#0x580]
VCVT.F32.U32    S2, S0
SUB             R0, R0, R1
VCVT.F32.U32    S1, S1
SMULL           R1, R0, R8, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, #1
VDIV.F32        S0, S2, S1
UXTH            R0, R0
VMOV            S1, R0
VLDR            S2, [R5,#0x184]
VCVT.F32.U32    S1, S1
VMUL.F32        S0, S1, S0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
MOVLS           R6, #4
BLS             loc_26F53C
VLDR            S1, [R5,#0x180]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLS           R6, #3
BLS             loc_26F53C
VLDR            S1, [R5,#0x17C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLS           R6, #2
LDR             R0, =off_6CE970
LDRB            R1, [R4,#0xBC]
LDR             R2, [R4,#4]
MOV             R3, #0
LDR             R0, [R0]
CMP             R1, #0
ADD             R2, R2, #0x400
STR             R3, [SP,#0x20+var_20]
MOVNE           R1, #0x55 ; 'U'
MOVEQ           R1, #0x57 ; 'W'
ADD             R2, R2, #0x198
MOV             R3, #1
BL              sub_52AEA8
LDRSB           R2, [R4,#0xBC]
LDR             R0, [R7]
MOV             R1, R6
POP             {R3-R9,LR}
B               sub_27898C
