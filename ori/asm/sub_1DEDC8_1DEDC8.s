PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R7, =flt_6E34B0
VPUSH           {D8-D11}
ADD             R0, SP, #0x40+arg_0
VMOV.F32        S16, S0
VMOV.F32        S19, S2
LDM             R0, {R1,R6}
LDRB            R8, [R4,#0x4D]
VLDR            S18, =360.0
LDRSB           R9, [R4,#0x4C]
SUB             R0, R1, R8
CMP             R0, #0
LDRBLT          R12, [R4,#0x53]
VLDR            S17, =1.0
VLDR            S22, =0.0
ADDLT           R0, R0, R12
VMOV            S0, R0
LDRB            R12, [R4,#0x53]
LDR             R0, [R7,#(dword_6E34F8 - 0x6E34B0)]
CMP             R9, #0
VCVT.F32.S32    S0, S0
VMUL.F32        S2, S0, S18
VMOV            S0, R12
VCVT.F32.U32    S3, S0
VDIV.F32        S0, S2, S3
VADD.F32        S0, S0, S1
BEQ             loc_1DF04C
VMOV            S1, R12
VMOV            S2, R9
LDRH            R10, [R4,#0x4A]
RSB             R12, R0, #0xFF
LDRB            R9, [R4,#0x4E]
VMOV            S3, R10
VCVT.F32.U32    S1, S1
VCVT.F32.S32    S4, S2
VLDR            S2, [R7,#(flt_6E34F0 - 0x6E34B0)]
CMP             R9, R1
VCVT.F32.U32    S3, S3
VCVT.F32.U32    S2, S2
VDIV.F32        S5, S18, S1
VMOV            S1, R12
VCVT.F32.S32    S6, S1
VDIV.F32        S1, S3, S2
VMUL.F32        S2, S5, S4
VMUL.F32        S3, S6, S1
VSUB.F32        S17, S17, S1
VCVT.S32.F32    S1, S3
VMLA.F32        S0, S2, S17
VMOV            R12, S1
RSBEQ           R0, R12, #0xFF
BEQ             loc_1DEEB0
CMP             R8, R1
VMOVEQ.F32      S17, S22
ADDEQ           R0, R0, R12
BEQ             loc_1DEEB0
VMOV.F32        S17, S22
AND             R0, R0, #0xFF
BIC             R1, R11, #0xFF
VLDR            S23, =0.71111
MOV             R12, R0,LSL#8
ORR             R1, R1, R0
AND             R12, R12, #0xFF00
BIC             R1, R1, #0xFF00
MOV             R8, R0,LSL#16
ORR             R0, R1, R12
VMUL.F32        S21, S0, S23
AND             R12, R8, #0xFF0000
BIC             R0, R0, #0xFF0000
MOV             R1, #0xFF
ORR             R0, R0, R12
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1,LSL#24
STR             R0, [R2]
VLDR            S1, [R7,#(flt_6E34DC - 0x6E34B0)]
VSTR            S1, [R3]
VMOV.F32        S0, S21
VSTR            S22, [R3,#4]
VSTR            S22, [R3,#8]
BL              sub_464380
VMUL.F32        S0, S0, S16
VLDR            S1, [R7,#(flt_6E34BC - 0x6E34B0)]
VMUL.F32        S20, S0, S1
VMOV.F32        S0, S21
BL              sub_464318
VMUL.F32        S1, S0, S16
VLDR            S2, [R7,#(flt_6E34C0 - 0x6E34B0)]
CMP             R6, #0
VLDR            S0, [R7,#(flt_6E34EC - 0x6E34B0)]
VMOVEQ.F32      S0, S22
LDRH            R0, [R4,#0x48]
VMUL.F32        S16, S1, S2
BEQ             loc_1DEF5C
VMOV            S1, R0
VCVT.F32.U32    S2, S1
VCVT.F32.U32    S1, S0
VMUL.F32        S2, S2, S18
VDIV.F32        S0, S2, S1
VMUL.F32        S0, S0, S23
BL              sub_464380
VCMPE.F32       S0, S22
ADD             R0, R4, #0x18
ADD             R3, R4, #0x28 ; '('
LDM             R0, {R0-R2}
VMRS            APSR_nzcv, FPSCR
VMOV            S4, R0
VLDRGT          S1, [R7,#(flt_6E34C4 - 0x6E34B0)]
VLDRLE          S1, [R7,#(flt_6E34C8 - 0x6E34B0)]
STM             R5, {R0-R2}
VLDR            S3, [R4,#0x24]
VMUL.F32        S0, S1, S0
VMUL.F32        S3, S3, S20
VMUL.F32        S2, S0, S17
VLDM            R3, {S0-S1}
VADD.F32        S3, S4, S3
VMUL.F32        S0, S0, S20
VMUL.F32        S1, S1, S20
VSTR            S3, [R5]
VMOV            S3, R1
MOV             R1, R5
MOV             R0, R1
VADD.F32        S0, S3, S0
VSTR            S0, [R5,#4]
VMOV            S0, R2
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#8]
VLDR            S3, [R4,#0x30]
VLDR            S4, [R5]
VLDR            S1, [R4,#0x34]
VMUL.F32        S3, S3, S16
VLDR            S0, [R4,#0x38]
VMUL.F32        S1, S1, S16
VMUL.F32        S0, S0, S16
VADD.F32        S3, S4, S3
VSTR            S3, [R5]
VLDR            S3, [R5,#4]
VADD.F32        S1, S3, S1
VSTR            S1, [R5,#4]
VLDR            S1, [R5,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#8]
VADD.F32        S0, S2, S19
VLDR            S2, [R4,#0x3C]
VLDR            S1, [R4,#0x40]
VLDR            S3, [R4,#0x44]
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VLDR            S3, [R5]
VADD.F32        S2, S3, S2
VSTR            S2, [R5]
VLDR            S2, [R5,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R5,#4]
VLDR            S1, [R5,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#8]
VPOP            {D8-D11}
POP             {R4-R10,LR}
B               sub_480160
CMP             R8, R1
MOVEQ           R0, #0xFF
BNE             loc_1DEEAC
B               loc_1DEEB0
