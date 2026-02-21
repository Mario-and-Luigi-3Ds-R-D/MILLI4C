PUSH            {R4}
LDRB            R2, [R1]
TST             R2, #0xF
BEQ             loc_233078
ANDS            R0, R2, #0x10
BNE             loc_233078
TST             R2, #1
BEQ             loc_232EB0
VLDR            S0, [R1,#0x38]
VLDR            S1, [R1,#0xC]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x38]
TST             R2, #2
BEQ             loc_232EC8
VLDR            S0, [R1,#0x3C]
VLDR            S1, [R1,#0x10]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x3C]
TST             R2, #4
BEQ             loc_232EE0
VLDR            S0, [R1,#0x40]
VLDR            S1, [R1,#0x14]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x40]
TST             R2, #8
BEQ             loc_232EF8
VLDR            S0, [R1,#0x44]
VLDR            S1, [R1,#0x18]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x44]
VLDR            S0, [R1,#0xC]
VLDR            S1, [R1,#0x24]
VABS.F32        S0, S0
VSUB.F32        S0, S1, S0
VSTR            S0, [R1,#0x24]
VLDR            S0, [R1,#0x10]
VLDR            S1, [R1,#0x28]
VABS.F32        S0, S0
VSUB.F32        S0, S1, S0
VSTR            S0, [R1,#0x28]
VLDR            S0, [R1,#0x14]
VLDR            S1, [R1,#0x2C]
VABS.F32        S0, S0
VSUB.F32        S0, S1, S0
VSTR            S0, [R1,#0x2C]
VLDR            S0, [R1,#0x18]
VLDR            S1, [R1,#0x30]
LDR             R2, [R1,#0x48]
VABS.F32        S0, S0
ADD             R2, R2, #1
VSUB.F32        S0, S1, S0
VLDR            S1, =1.0
VSTR            S0, [R1,#0x30]
STR             R2, [R1,#0x48]
VLDR            S2, [R1,#0x38]
VLDR            S0, =0.0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S2, S1
BGE             loc_232F80
VMOV.F32        S3, S0
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S2, S0
VLDR            S4, =0.5
VLDR            S3, =255.0
VMOV.F32        S5, S4
VMLA.F32        S5, S2, S3
VCVT.U32.F32    S2, S5
VLDR            S5, [R1,#0x3C]
VMOV            R2, S2
VMOV.F32        S2, S1
AND             R2, R2, #0xFF
VCMPE.F32       S5, S2
VMRS            APSR_nzcv, FPSCR
BGE             loc_232FC4
VMOV.F32        S2, S0
VCMPE.F32       S5, S2
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S2, S0
VMOVHI.F32      S2, S5
VMOV.F32        S5, S4
VMLA.F32        S5, S2, S3
VCVT.U32.F32    S2, S5
VMOV            R3, S2
VLDR            S2, [R1,#0x40]
AND             R3, R3, #0xFF
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S2, S1
BGE             loc_232FFC
VMOV.F32        S5, S0
VCMPE.F32       S2, S5
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S2, S0
VMOV.F32        S5, S4
VMLA.F32        S5, S2, S3
VCVT.U32.F32    S2, S5
VMOV            R12, S2
VLDR            S2, [R1,#0x44]
AND             R12, R12, #0xFF
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S1
BGE             loc_233030
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S0, S2
AND             R2, R2, #0xFF
BIC             R0, R0, #0xFF
MOV             R4, R3,LSL#8
ORR             R0, R0, R2
AND             R2, R4, #0xFF00
VMLA.F32        S4, S0, S3
BIC             R0, R0, #0xFF00
ORR             R2, R2, R0
MOV             R3, R12,LSL#16
LDR             R1, [R1,#0x34]
AND             R3, R3, #0xFF0000
BIC             R2, R2, #0xFF0000
ORR             R2, R2, R3
BIC             R2, R2, #0xFF000000
VCVT.U32.F32    S0, S4
VMOV            R0, S0
ORR             R0, R2, R0,LSL#24
STR             R0, [R1]
POP             {R4}
BX              LR
