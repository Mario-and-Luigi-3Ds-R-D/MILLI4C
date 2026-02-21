PUSH            {R4-R6,R8,R9,LR}
MOV             R4, R0
MOV             R0, #0
LDR             R9, =0x43B40000
MOV             R5, R1
VPUSH           {D8-D12}
SUB             SP, SP, #0x50
VMOV.F32        S18, S1
VMOV.F32        S20, S2
MOV             R8, R2
ADD             R1, SP, #0x90+var_8C
LDR             R6, [SP,#0x90+arg_0]
STRH            R0, [R3]
VLDR            S1, [R4,#0x20]
VLDR            S2, [R4,#4]
VLDR            S23, =360.0
VLDR            S21, =0.0
VADD.F32        S1, S2, S1
VADD.F32        S16, S2, S0
VMOV            R0, S1
VSTR            S1, [R4,#4]
CMP             R0, R9
VSUBGT.F32      S0, S1, S23
MOV             R0, SP
VSTRGT          S0, [R4,#4]
VMOVLE.F32      S0, S1
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S23
VSTRCC          S0, [R4,#4]
VLDR            S0, =0.71111
VMUL.F32        S0, S16, S0
BL              sub_462B20
LDR             R0, =unk_68E030
ADD             LR, SP, #0x90+var_88
VLDR            S22, =1.0
ADD             R1, R0, #0x270
LDM             R1, {R1-R3,R12}
STM             LR, {R1-R3,R12}
ADD             R1, R0, #0x280
ADD             LR, SP, #0x90+var_78
LDM             R1, {R1-R3,R12}
STM             LR, {R1-R3,R12}
ADD             R3, SP, #0x90+var_58
LDM             R0, {R1,R2}
STM             R3, {R1,R2}
ADD             R1, R0, #8
ADD             R3, SP, #0x90+var_50
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
ADD             R1, R0, #0x2A0
LDR             R0, [R0,#(dword_68E2DC - 0x68E030)]
LDM             R1, {R1-R3}
STR             R0, [SP,#0x90+var_5C]
ADD             R0, SP, #0x90+var_68
STM             R0, {R1-R3}
VLDR            S0, [R4,#0x24]
VLDR            S1, [R4,#0x14]
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [R4,#0x24]
CMP             R0, #0x3F800000
BLE             loc_1C0B80
LDR             R0, [R4,#0x1C]
VSTR            S21, [R4,#0x24]
VLDR            S17, =60.0
STR             R0, [R4,#0x18]
LDR             R0, =dword_6D1F40
VLDR            S19, =120.0
BL              sub_546DB0
VMOV            S0, R0
VLDR            S24, =0.000015259
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S24
VNMLS.F32       S17, S0, S19
VSTR            S17, [R4,#0x1C]
BL              sub_546DB0
VMOV            S0, R0
VLDR            S2, =2.5
VLDR            S1, =1.5
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S24
VMLA.F32        S1, S0, S2
VSTR            S1, [R4,#0x14]
VLDR            S0, [R4,#0x1C]
VLDR            S2, [R4,#0x18]
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VDIV.F32        S2, S0, S1
VDIV.F32        S0, S22, S2
VSTR            S0, [R4,#0x14]
VLDR            S1, =0.45
ADD             R0, SP, #0x90+var_88
ADD             R0, R0, R6,LSL#2
VMUL.F32        S4, S18, S1
VLDR            S3, [R4]
VLDR            S1, [R0,#-4]
VLDR            S5, [SP,#0x90+var_8C]
VLDR            S0, =3.1416
VMLA.F32        S3, S1, S18
VMOV.F32        S2, S0
VMUL.F32        S3, S3, S5
VSTR            S3, [R5,#0x28]
VLDR            S3, [R4]
VMLA.F32        S3, S1, S4
VLDR            S1, [SP,#0x90+var_90]
VMUL.F32        S1, S3, S1
VSTR            S1, [R5,#0x30]
VLDR            S1, [R4,#0x24]
VMLA.F32        S0, S1, S2
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VADD.F32        S0, S0, S22
ADD             R0, SP, #0x90+var_78
ADD             R0, R0, R6,LSL#2
VLDR            S1, [R4,#0x18]
VLDR            S4, [R0,#-4]
VLDR            S2, =0.5
VLDR            S5, [R4,#0x1C]
VADD.F32        S4, S4, S1
VLDR            S3, [R4,#8]
VSUB.F32        S1, S5, S1
VMUL.F32        S0, S0, S2
VMLA.F32        S4, S1, S0
VMLA.F32        S3, S4, S18
VSTR            S3, [R5,#0x2C]
VSTR            S22, [R5,#4]
VSTR            S22, [R5,#8]
VSTR            S22, [R5,#0xC]
VSTR            S21, [R5,#0x10]
VSTR            S21, [R5,#0x14]
VSTR            S21, [R5,#0x18]
VSTR            S21, [R5,#0x1C]
VSTR            S21, [R5,#0x20]
VSTR            S21, [R5,#0x24]
VMOV            R0, S16
CMP             R0, R9
VSUBGE.F32      S16, S16, S23
BGE             loc_1C0C34
VCMPE.F32       S16, S21
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S16, S16, S23
BCC             loc_1C0C44
ADD             R0, SP, #0x90+var_68
VLDR            S0, =90.0
ADD             R0, R0, R6,LSL#2
ADD             R1, SP, #0x90+var_50
ADD             R1, R1, R6,LSL#1
LDRSH           R1, [R1,#-2]
VSUB.F32        S1, S16, S0
ADD             R2, R1, #0xFF
VCMPE.F32       S1, S21
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#-4]
VNEGLT.F32      S1, S1
VMUL.F32        S2, S0, S2
VDIV.F32        S0, S1, S2
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R2
VMOV            S1, R1
VNEGLT.F32      S0, S0
VSUB.F32        S4, S22, S20
BIC             R2, R7, #0xFF
VCVT.F32.S32    S2, S2
VMOV            R0, S0
VCVT.F32.S32    S5, S1
CMP             R0, #0x3F800000
VMOVGT.F32      S0, S22
ADD             R0, SP, #0x90+var_58
ADD             R0, R0, R6,LSL#1
LDRSH           R0, [R0,#-2]
VSUB.F32        S3, S22, S0
VMOV            S0, R0
VMUL.F32        S5, S5, S18
VCVT.F32.S32    S6, S0
VCVT.F32.S32    S1, S0
VADD.F32        S0, S2, S6
VNMUL.F32       S0, S0, S4
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VADD.F32        S0, S1, S0
VMUL.F32        S1, S0, S3
VCVT.S32.F32    S0, S5
VCVT.S32.F32    S1, S1
VMOV            R1, S0
VMOV            R0, S1
ADD             R0, R0, R1
MOV             R1, #0xFF
ORR             R2, R2, R1
ADD             R0, R0, #0xFF
BIC             R3, R2, #0xFF00
MOV             R2, R1,LSL#16
SXTH            R0, R0
MOV             R12, R1,LSL#8
CMP             R0, #0
AND             R1, R12, #0xFF00
MOVLT           R0, #0
ORR             R1, R1, R3
BIC             R3, R1, #0xFF0000
AND             R2, R2, #0xFF0000
MOV             R1, R0,LSL#24
ORR             R0, R3, R2
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1
STR             R0, [SP,#0x90+var_48]
LDR             R0, [R8,#0xA4]
ADD             R2, SP, #0x90+var_48
MOV             R1, #0
BL              sub_12C9C4
ADD             SP, SP, #0x50 ; 'P'
VPOP            {D8-D12}
POP             {R4-R6,R8,R9,PC}
