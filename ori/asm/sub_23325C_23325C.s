PUSH            {R4-R11,LR}
CMP             R1, #1
ADD             R7, SP, #0x28
LDM             R7, {R4-R6,R11,LR}
LDR             R7, [R2]
VLDR            S0, =0.0039216
LDR             R0, [SP,#0x24+arg_18]
AND             R8, R7, #0xFF
MOV             R10, R7,LSL#8
MOV             R9, R7,LSL#16
VMOV            S1, R8
MOV             R10, R10,LSR#24
MOV             R9, R9,LSR#24
VMOV            S2, R10
VMOV            S3, R9
MOV             R7, R7,LSR#24
VMOV            S4, R7
VCVT.F32.S32    S5, S1
LDR             R7, [R3]
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S3, S3
LDR             R12, [SP,#0x24+arg_0]
VCVT.F32.S32    S1, S4
MOV             R8, R7,LSL#16
MOV             R10, R7,LSL#8
MOV             R9, R8,LSR#24
AND             R8, R7, #0xFF
VMUL.F32        S7, S5, S0
MOV             R10, R10,LSR#24
VMUL.F32        S5, S2, S0
VMUL.F32        S4, S3, S0
VMOV            S2, R8
VMOV            S3, R10
VMUL.F32        S6, S1, S0
MOV             R7, R7,LSR#24
VMOV            S1, R9
VMOV            S8, R7
VCVT.F32.S32    S9, S2
VCVT.F32.S32    S2, S3
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S3, S8
VMUL.F32        S8, S9, S0
VMUL.F32        S2, S2, S0
VLDR            S9, =0.0
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S3, S0
BNE             loc_233338
VMOV.F32        S0, S7
VADD.F32        S8, S8, S0
VMOV.F32        S0, S4
VADD.F32        S1, S1, S0
VMOV.F32        S0, S5
VADD.F32        S2, S2, S0
VMOV.F32        S0, S6
VADD.F32        S3, S3, S0
VMOV.F32        S0, S7
LDRB            R1, [R0]
VSUB.F32        S0, S8, S0
VMOV.F32        S8, S4
VSUB.F32        S1, S1, S8
VMOV.F32        S8, S5
VCMP.F32        S0, S9
VSUB.F32        S2, S2, S8
VMOV.F32        S8, S6
VSUB.F32        S3, S3, S8
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S1, S9
ORRNE           R1, R1, #1
BICEQ           R1, R1, #1
STRB            R1, [R0]
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S2, S9
ORRNE           R1, R1, #2
BICEQ           R1, R1, #2
STRB            R1, [R0]
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S3, S9
ORRNE           R1, R1, #4
BICEQ           R1, R1, #4
STRB            R1, [R0]
VMRS            APSR_nzcv, FPSCR
ORRNE           R1, R1, #8
BICEQ           R1, R1, #8
TST             R1, #0xF
STRB            R1, [R0]
MOVEQ           R0, #0
BEQ             locret_23346C
VMOV            S8, R12
BIC             R1, R1, #0x50 ; 'P'
ORR             R1, R1, #0x20 ; ' '
ORR             R1, R1, R11,LSL#6
VCVT.F32.S32    S8, S8
VDIV.F32        S9, S0, S8
VMOV            S8, R4
VABS.F32        S0, S0
VSTR            S9, [R0,#0xC]
STRH            R12, [R0,#2]
VCVT.F32.S32    S8, S8
VDIV.F32        S9, S1, S8
VMOV            S8, R5
VSTR            S9, [R0,#0x10]
STRH            R4, [R0,#4]
VCVT.F32.S32    S8, S8
VDIV.F32        S9, S2, S8
VMOV            S8, R6
VSTR            S9, [R0,#0x14]
STRH            R5, [R0,#6]
VCVT.F32.S32    S8, S8
VDIV.F32        S9, S3, S8
VSTR            S9, [R0,#0x18]
STRH            R6, [R0,#8]
STRB            R1, [R0]
LDR             R1, [R2]
STR             R1, [R0,#0x1C]
LDR             R1, [R3]
STR             R1, [R0,#0x20]
VSTR            S0, [R0,#0x24]
VABS.F32        S0, S1
MOV             R1, #0
VSTR            S0, [R0,#0x28]
VABS.F32        S0, S2
VSTR            S0, [R0,#0x2C]
VABS.F32        S0, S3
VSTR            S0, [R0,#0x30]
STR             LR, [R0,#0x34]
LDR             R2, [R2]
STR             R2, [LR]
STR             R1, [R0,#0x48]
VSTR            S7, [R0,#0x38]
ADD             R0, R0, #0x3C ; '<'
VSTM            R0, {S4-S6}
MOV             R0, #1
POP             {R4-R11,PC}
