PUSH            {LR}
SUB             SP, SP, #0x44
VLDR            S0, =0.0
VLDR            S1, =1.0
VSTR            S0, [SP,#0x48+var_38]
VSTR            S0, [SP,#0x48+var_34]
ADD             R1, SP, #0x48+var_30
ADD             R3, R3, #8
VSTM            R1, {S0-S1}
ADD             R1, SP, #0x48+var_10
VSTR            S0, [SP,#0x48+var_18]
VSTR            S0, [SP,#0x48+var_14]
VSTM            R1, {S0-S1}
ADD             R1, R3, #0x14
VLDR            S0, [R3]
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x48+var_48]
VLDR            S0, [R3,#4]
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x48+var_44]
VLDR            S0, [R3,#8]
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x48+var_40]
VLDR            S0, [R3,#0xC]
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x48+var_3C]
LDM             R1, {R1,LR}
LDR             R12, [R3,#0x10]
LDR             R2, [R3,#0x1C]
VLDR            S0, =0.0039216
MOV             R1, R1,LSL#16
ORR             R2, R2, R12,LSL#24
ORR             R1, R1, LR,LSL#8
ORR             R1, R1, R2
REV             R1, R1
AND             LR, R1, #0xFF
MOV             R12, R1,LSL#16
MOV             R2, R1,LSL#8
MOV             R12, R12,LSR#24
VMOV            S3, LR
VMOV            S2, R12
MOV             R1, R1,LSR#24
MOV             R2, R2,LSR#24
VMOV            S5, R1
VMOV            S4, R2
VCVT.F32.S32    S3, S3
VCVT.F32.S32    S2, S2
ADD             R1, SP, #0x48+var_30
VCVT.F32.S32    S5, S5
VCVT.F32.S32    S4, S4
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S5, S5, S0
VMUL.F32        S4, S4, S0
VSTR            S3, [SP,#0x48+var_38]
VSTR            S2, [SP,#0x48+var_34]
VSTM            R1, {S4-S5}
ADD             R1, R3, #0x34 ; '4'
VLDR            S2, [R3,#0x20]
VCVT.F32.S32    S2, S2
VSTR            S2, [SP,#0x48+var_28]
VLDR            S2, [R3,#0x24]
VCVT.F32.S32    S2, S2
VSTR            S2, [SP,#0x48+var_24]
VLDR            S2, [R3,#0x28]
VCVT.F32.S32    S2, S2
VSTR            S2, [SP,#0x48+var_20]
VLDR            S2, [R3,#0x2C]
VCVT.F32.S32    S2, S2
VSTR            S2, [SP,#0x48+var_1C]
LDR             R12, [R3,#0x30]
LDM             R1, {R1,LR}
LDR             R2, [R3,#0x3C]
MOV             R1, R1,LSL#16
ORR             R2, R2, R12,LSL#24
ORR             R1, R1, LR,LSL#8
ORR             R1, R1, R2
REV             R1, R1
AND             LR, R1, #0xFF
MOV             R2, R1,LSL#16
MOV             R12, R1,LSL#8
MOV             R2, R2,LSR#24
MOV             R12, R12,LSR#24
MOV             R1, R1,LSR#24
VMOV            S2, LR
VMOV            S3, R2
VMOV            S4, R12
VMOV            S5, R1
ADD             R1, SP, #0x48+var_18
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S3, S3
VCVT.F32.S32    S4, S4
VCVT.F32.S32    S5, S5
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S4, S4, S0
VMUL.F32        S0, S5, S0
VSTR            S0, [SP,#0x48+var_C]
VSTM            R1, {S2-S4}
LDR             R1, [R3,#0x40]
VLDR            S2, =0.5
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VADDNE.F32      S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [SP,#0x48+var_8]
LDR             R1, [R3,#0x44]
CMP             R1, #0
MOVNE           R1, #1
STRB            R1, [SP,#0x48+var_6]
LDR             R0, [R0,#4]
MOV             R1, SP
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xB10
LDR             R0, [R0]
BL              sub_3A1740
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, #0
POP             {PC}
