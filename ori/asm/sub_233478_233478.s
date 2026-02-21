PUSH            {R4-R9}
ADD             R6, SP, #0x18+arg_0
CMP             R1, #1
LDM             R6, {R4,R5,R12}
LDR             R6, [R2]
VLDR            S7, =0.0039216
LDR             R0, [SP,#0x18+arg_C]
AND             R7, R6, #0xFF
MOV             R8, R6,LSL#16
MOV             R9, R6,LSL#8
MOV             R8, R8,LSR#24
MOV             R9, R9,LSR#24
MOV             R6, R6,LSR#24
VMOV            S2, R7
VMOV            S3, R8
VMOV            S1, R9
VMOV            S0, R6
LDR             R6, [R3]
VCVT.F32.S32    S4, S2
VCVT.F32.S32    S2, S3
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
MOV             R7, R6,LSL#16
MOV             R9, R6,LSL#8
MOV             R8, R7,LSR#24
AND             R7, R6, #0xFF
MOV             R9, R9,LSR#24
MOV             R6, R6,LSR#24
VMUL.F32        S3, S4, S7
VMUL.F32        S4, S2, S7
VMUL.F32        S5, S1, S7
VMUL.F32        S6, S0, S7
VMOV            S0, R7
VMOV            S1, R8
VMOV            S2, R9
VMOV            S8, R6
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S8, S8
VMUL.F32        S0, S0, S7
VMUL.F32        S1, S1, S7
VMUL.F32        S2, S2, S7
VMUL.F32        S7, S8, S7
VLDR            S8, =0.0
BNE             loc_233550
VMOV.F32        S9, S3
VADD.F32        S0, S0, S9
VMOV.F32        S9, S4
VADD.F32        S1, S1, S9
VMOV.F32        S9, S5
VADD.F32        S2, S2, S9
VMOV.F32        S9, S6
VADD.F32        S7, S7, S9
VMOV.F32        S9, S3
LDRB            R1, [R0]
VSUB.F32        S0, S0, S9
VMOV.F32        S9, S4
VSUB.F32        S1, S1, S9
VMOV.F32        S9, S5
VCMP.F32        S0, S8
VSUB.F32        S2, S2, S9
VMOV.F32        S9, S6
VSUB.F32        S7, S7, S9
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S1, S8
ORRNE           R1, R1, #1
BICEQ           R1, R1, #1
STRB            R1, [R0]
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S2, S8
ORRNE           R1, R1, #2
BICEQ           R1, R1, #2
STRB            R1, [R0]
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S7, S8
ORRNE           R1, R1, #4
BICEQ           R1, R1, #4
STRB            R1, [R0]
VMRS            APSR_nzcv, FPSCR
ORRNE           R1, R1, #8
BICEQ           R1, R1, #8
TST             R1, #0xF
STRB            R1, [R0]
MOVEQ           R0, #0
BEQ             loc_233640
BIC             R1, R1, #0x70 ; 'p'
ORR             R1, R1, R5,LSL#6
STRB            R1, [R0]
LDM             R4, {R1,R5,R6}
ADD             R7, R0, #0xC
LDR             R4, [R4,#0xC]
VABS.F32        S0, S0
STR             R4, [R0,#0x18]
STM             R7, {R1,R5,R6}
ADD             R6, R0, #0x38 ; '8'
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
VABS.F32        S0, S7
VSTR            S0, [R0,#0x30]
STR             R12, [R0,#0x34]
LDR             R2, [R2]
STR             R2, [R12]
VSTM            R6, {S3-S6}
STR             R1, [R0,#0x48]
MOV             R0, #1
POP             {R4-R9}
BX              LR
