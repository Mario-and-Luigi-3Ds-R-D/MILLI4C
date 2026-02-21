PUSH            {R4-R6,LR}
ADD             R4, R0, #0x14000
MOV             R5, R0
VPUSH           {D8-D11}
SUB             SP, SP, #8
MOV             R6, R1
ADD             R1, SP, #0x38+var_34
VLDR            S0, [R2,#0x14]
VLDR            S1, [R4,#0x2B0]
VLDR            S4, [R2]
VLDR            S2, [R2,#0xC]
VSUB.F32        S21, S0, S1
VLDR            S0, [R0,#0xA0]
VLDR            S1, =0.5
VLDR            S5, [R4,#0x294]
VLDR            S3, [R4,#0x2A0]
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VLDR            S16, =0.0
VSUB.F32        S20, S4, S5
VSUB.F32        S19, S2, S3
VMOV.F32        S17, S16
VMOV.F32        S18, S16
MOV             R0, SP
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDMEA          SP, {S1-S2}
MOV             R0, #0x400
VDIV.F32        S0, S1, S2
VLDR            S1, [R5,#0x94]
VADD.F32        S1, S1, S21
VMUL.F32        S21, S0, S1
BL              sub_11C418
VMOV            S0, R0
MOV             R0, #0x400
VCVT.F32.U32    S0, S0
VMUL.F32        S22, S0, S21
BL              sub_485B0C
VMOV            S0, R0
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S22, S1
VLDR            S1, [R4,#0x2B4]
VSUB.F32        S2, S20, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S20, S0
VSUBCC.F32      S16, S1, S2
VLDR            S1, [R4,#0x2B8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S16, S1, S0
VSUB.F32        S1, S19, S21
VLDR            S0, [R4,#0x2BC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSUBCC.F32      S17, S0, S1
VADD.F32        S1, S19, S21
VLDR            S0, [R4,#0x2C0]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S17, S0, S1
VSTM            R6, {S16-S18}
ADD             SP, SP, #8
VPOP            {D8-D11}
POP             {R4-R6,PC}
