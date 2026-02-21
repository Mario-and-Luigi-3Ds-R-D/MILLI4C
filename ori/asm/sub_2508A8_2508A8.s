PUSH            {R4,R5,R7-R10,LR}
MOV             R5, R0
MOV             R7, R1
VPUSH           {D8-D10}
SUB             SP, SP, #0x64
ADD             R0, SP, #0x98+var_68
LDRB            R8, [R1,#0x10]
ADD             R1, R1, #0x14
BL              sub_14222C
VLDR            S3, [R7]
VLDR            S1, [R7,#4]
VLDR            S0, [R7,#8]
VMUL.F32        S2, S3, S3
VLDR            S20, =1.0
LDR             R0, [R5,#0xC]
MOV             R4, #0
CMP             R0, #0
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S4, S2
VDIV.F32        S2, S20, S4
VMUL.F32        S16, S3, S2
VMUL.F32        S17, S1, S2
VMUL.F32        S18, S0, S2
BLS             loc_250A00
MOV             R9, #0
VLDR            S19, =0.0
VLDR            S21, =255.0
MOV             R10, #0xC
LDR             R0, [R5]
ADD             R1, SP, #0x98+var_68
ADD             R2, R0, R4,LSL#4
ADD             R0, SP, #0x98+var_8C
BL              sub_1169FC
ADD             R1, SP, #0x98+var_8C
VLDR            S0, [SP,#0x98+var_84]
MOV             R3, R9,LSL#8
VLDM            R1, {S2-S3}
MOV             R1, #0xFF
AND             R3, R3, #0xFF00
MOV             R12, R9,LSL#16
VMUL.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VMLA.F32        S1, S0, S0
VSQRT.F32       S4, S1
VDIV.F32        S1, S20, S4
VMUL.F32        S2, S2, S1
VMUL.F32        S3, S3, S1
VMUL.F32        S0, S0, S1
VSTR            S2, [SP,#0x98+var_8C]
VMUL.F32        S1, S2, S16
VSTR            S3, [SP,#0x98+var_88]
VSTR            S0, [SP,#0x98+var_84]
VMLA.F32        S1, S3, S17
VMLA.F32        S1, S0, S18
VMOV.F32        S0, S1
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R7,#0xC]
VMOVCC.F32      S0, S19
VMUL.F32        S0, S1, S0
VMUL.F32        S0, S0, S21
VCVT.U32.F32    S0, S0
VMOV            R0, S0
ADD             R0, R0, R8
CMP             R0, #0xFF
MOVHI           R0, R1
BIC             R1, R6, #0xFF
ORR             R1, R1, R9
BIC             R2, R1, #0xFF00
ORR             R2, R2, R3
AND             R3, R12, #0xFF0000
BIC             R2, R2, #0xFF0000
LDR             R1, [R5]
RSB             R0, R0, #0xFF
ORR             R2, R2, R3
ADD             R12, R10, R4,LSL#4
MOV             R3, R0,LSL#24
BIC             R2, R2, #0xFF000000
ADD             R0, R1, R12
ORR             R1, R2, R3
STR             R1, [R0]
LDR             R0, [R5,#0xC]
ADD             R4, R4, #1
CMP             R0, R4
BHI             loc_25091C
MOV             R1, R0
LDR             R0, [R5]
MOV             R1, R1,LSL#4
BL              sub_126EA4
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D10}
POP             {R4,R5,R7-R10,PC}
