PUSH            {R4-R7,LR}
ADD             R0, R0, #0x34 ; '4'
MOV             R5, R1
MOV             R7, #0
VPUSH           {D8}
VMUL.F32        S17, S0, S0
LDM             R0, {R4,R6}
SUB             SP, SP, #0xC
VLDR            S16, =0.0
CMP             R4, R6
BEQ             loc_1F70A4
LDR             R0, [R4]
LDRB            R1, [R0,#0x434]
CMP             R1, #0
BEQ             loc_1F7028
ADD             R1, R0, #0x400
ADD             R1, R1, #0x1C
MOV             R2, R5
MOV             R0, SP
BL              sub_438BA4
VLDR            S5, [R5]
VLDR            S0, [SP,#0x28+var_28]
VLDR            S4, [R5,#4]
VLDR            S2, [SP,#0x28+var_24]
VSUB.F32        S0, S0, S5
VLDR            S3, [R5,#8]
VSUB.F32        S2, S2, S4
VLDR            S1, [SP,#0x28+var_20]
VSUB.F32        S1, S1, S3
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_1F7028
LDR             R0, [R4]
MOV             R1, R5
BL              sub_1F716C
LDR             R0, [R4]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
MOV             R1, SP
BLX             R3
VLDR            S0, [SP,#0x28+var_28]
ADD             R7, R7, #1
VADD.F32        S16, S0, S16
ADD             R4, R4, #0xC
CMP             R4, R6
BNE             loc_1F6F98
CMP             R7, #0
BEQ             loc_1F70A4
VMOV            S0, R7
LDR             R0, =off_6CDD80
LDR             R3, =0xFFE683CC
MOV             R2, #0
LDR             R1, [R0]
VCVT.F32.U32    S1, S0
LDR             R0, =off_6CE970
LDR             R1, [R1,#8]
LDR             R1, [R1,#0x56C]
VDIV.F32        S0, S16, S1
CMP             R1, R7
BHI             loc_1F7088
LDR             R0, [R0]
ADD             SP, SP, #0xC
LDR             R1, =0x30209
SUB             R0, R0, R3
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_503414
LDR             R0, [R0]
ADD             SP, SP, #0xC
LDR             R1, =0x30208
SUB             R0, R0, R3
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_503414
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
