PUSH            {R4-R9,LR}
ADD             R4, R0, #0x38 ; '8'
MOV             R8, R0
MOV             R5, R1
MOV             R9, R2
VPUSH           {D8}
VMUL.F32        S17, S0, S0
LDM             R4, {R4,R6}
SUB             SP, SP, #0xC
VLDR            S16, =0.0
MOV             R7, #0
CMP             R4, R6
BEQ             loc_299564
LDR             R0, [R4]
LDRB            R1, [R0,#3]
CMP             R1, #0
BEQ             loc_299558
ADD             R1, R0, #0x30 ; '0'
MOV             R2, R5
MOV             R0, SP
BL              sub_28C568
VLDR            S5, [R5]
VLDR            S0, [SP,#0x30+var_30]
VLDR            S2, [R5,#4]
VLDR            S1, [SP,#0x30+var_2C]
VSUB.F32        S0, S0, S5
VLDR            S4, [R5,#8]
VSUB.F32        S2, S1, S2
VLDR            S3, [SP,#0x30+var_28]
VSUB.F32        S1, S3, S4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_299558
LDR             R0, [R4]
MOV             R2, R9
MOV             R1, R5
BL              sub_299658
LDR             R0, [R4]
MOV             R2, #0
LDR             R1, [R0,#0x48]!
LDR             R3, [R1,#0x2C]
MOV             R1, SP
BLX             R3
VLDR            S0, [SP,#0x30+var_30]
ADD             R7, R7, #1
VADD.F32        S16, S0, S16
ADD             R4, R4, #0xC
CMP             R4, R6
BNE             loc_2994C8
LDRB            R0, [R8,#0x25]
CMP             R0, #0
BNE             loc_2995D8
CMP             R7, #0
BEQ             loc_2995D8
VMOV            S0, R7
LDR             R0, [R8,#0x28]
LDR             R3, =0xFFE683CC
MOV             R2, #0
LDR             R1, [R0,#0xF4]
VCVT.F32.U32    S1, S0
LDR             R0, =off_6CE970
CMP             R1, R7
VDIV.F32        S0, S16, S1
BHI             loc_2995BC
LDR             R0, [R0]
ADD             SP, SP, #0xC
LDR             R1, =0x30209
SUB             R0, R0, R3
VPOP            {D8}
POP             {R4-R9,LR}
B               sub_503414
LDR             R0, [R0]
ADD             SP, SP, #0xC
LDR             R1, =0x30208
SUB             R0, R0, R3
VPOP            {D8}
POP             {R4-R9,LR}
B               sub_503414
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
