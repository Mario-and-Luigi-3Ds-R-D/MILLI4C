PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R7, =off_6CE970
VPUSH           {D8}
VLDR            S16, =0.0039062
LDR             R0, [R7]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #8
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_5A2484
LDR             R0, [R4,#4]
ADD             R1, R4, #0xC
BL              sub_2715F4
LDR             R1, =off_6CDF98
LDRB            R0, [R4,#0xB0]
MOV             R6, #1
LDR             R1, [R1]
CMP             R0, #0
LDR             R5, [R1,#0x124]
BEQ             loc_26F858
LDR             R9, =0x19DEE8
CMP             R0, #1
MOV             R8, #0
BEQ             loc_26F880
CMP             R0, #2
BNE             loc_26F878
LDR             R0, [R7]
VLDR            S0, [R5,#0x2A0]
VLDR            S1, [R4,#0xB8]
ADD             R1, R0, R9; loc_19DEE8
VADD.F32        S2, S1, S0
VLDR            S0, [R1]
VCVT.F32.S32    S3, S0
VMUL.F32        S3, S3, S16
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_26F840
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_26F948
STRB            R8, [R4,#0xBC]
STR             R6, [R4,#0xC0]
LDR             R0, [R4,#4]
VPOP            {D8}
POP             {R4-R10,LR}
B               sub_270250
VLDR            S0, [R4,#0x1C]
VLDR            S1, [R4,#0x10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_26F878
LDR             R0, [R4,#4]
BL              sub_2706C0
STRB            R6, [R4,#0xB0]
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R0, [R7]
LDR             R1, =0x19B0B4
VLDR            S17, =0.0
LDR             R1, [R1,R0]
TST             R1, #2
BEQ             loc_26F8BC
VLDR            S0, [R4,#0xB4]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_26F8BC
ADD             R0, R0, R9; loc_19DEE8
VLDR            S0, [R0]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSTR            S0, [R4,#0xB4]
LDR             R0, [R4,#0x30]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_26F878
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R0, =0xFFE683CC
LDR             R3, [R7]
LDR             R1, =0x300D7
MOV             R2, #0
SUB             R0, R3, R0
BL              sub_503414
LDR             R0, [R4,#4]
NOP
BL              sub_2708F0
LDR             R0, [R7]
ADD             R0, R0, R9; loc_19DEE8
VLDR            S0, [R0]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSTR            S0, [R4,#0xB8]
VLDR            S1, [R4,#0xB4]
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
MOVEQ           R0, #2
STRBEQ          R0, [R4,#0xB0]
BEQ             loc_26F878
VSUB.F32        S0, S0, S1
VLDR            S2, [R5,#0x29C]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_26F95C
B               loc_26F840
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #2
BEQ             loc_26F878
STRB            R6, [R4,#0xBC]
STR             R6, [R4,#0xC0]
LDR             R0, [R4,#4]
VPOP            {D8}
POP             {R4-R10,LR}
B               sub_2702EC
