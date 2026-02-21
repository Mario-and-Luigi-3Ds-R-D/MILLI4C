LDR             R0, [R1]
TST             R0, #3
BEQ             locret_1EA9DC
TST             R0, #4
VLDR            S4, =0.5
VLDR            S5, =1.0
VLDR            S3, =0.0
BNE             loc_1EA8E8
TST             R0, #0x10
BEQ             loc_1EA8E8
VLDR            S0, [R1,#0x28]
VLDR            S1, [R1,#0x34]
VADD.F32        S0, S0, S1
VNEG.F32        S1, S1
VSTR            S0, [R1,#0x28]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [R1,#0x28]
VLDR            S1, [R1,#0x20]
VLDR            S6, [R1,#8]
VLDR            S0, [R1,#0x24]
VLDR            S2, [R1,#0xC]
VSUB.F32        S1, S1, S6
VSUB.F32        S0, S0, S2
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S6, S2
VLDR            S2, [R1,#0x28]
VDIV.F32        S7, S6, S2
VCVT.U32.F32    S2, S7
VMOV            R0, S2
BIC             R2, R0, #1
VMOV            S2, R2
TST             R0, #1
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S4
VADDNE.F32      S2, S2, S5
VCMP.F32        S2, S3
VMRS            APSR_nzcv, FPSCR
VSTREQ          S1, [R1,#0x10]
VSTREQ          S0, [R1,#0x14]
BEQ             loc_1EA8E8
VDIV.F32        S6, S1, S2
VSTR            S6, [R1,#0x10]
VDIV.F32        S1, S0, S2
VSTR            S1, [R1,#0x14]
LDR             R0, [R1]
VLDR            S1, [R1,#8]
TST             R0, #1
VMOVEQ.F32      S0, S3
VLDRNE          S0, [R1,#0x10]
TST             R0, #2
VADD.F32        S0, S1, S0
VLDR            S1, [R1,#0xC]
VSTR            S0, [R1,#8]
VMOVEQ.F32      S0, S3
VLDRNE          S0, [R1,#0x14]
TST             R0, #0x14
VADD.F32        S0, S1, S0
VSTR            S0, [R1,#0xC]
BNE             loc_1EA9D0
VLDR            S0, [R1,#0x2C]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_1EA9D0
VLDR            S2, [R1,#0x28]
VLDR            S1, [R1,#0x30]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1EA9D0
VADD.F32        S0, S2, S0
VSTR            S0, [R1,#0x28]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R1,#0x28]
VLDR            S1, [R1,#0x20]
VLDR            S6, [R1,#8]
VLDR            S0, [R1,#0x24]
VLDR            S2, [R1,#0xC]
VSUB.F32        S1, S1, S6
VSUB.F32        S0, S0, S2
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S6, S2
VLDR            S2, [R1,#0x28]
VDIV.F32        S7, S6, S2
VCVT.U32.F32    S2, S7
VMOV            R0, S2
BIC             R2, R0, #1
VMOV            S2, R2
TST             R0, #1
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S4
VADDNE.F32      S2, S2, S5
VCMP.F32        S2, S3
VMRS            APSR_nzcv, FPSCR
VSTREQ          S1, [R1,#0x10]
VSTREQ          S0, [R1,#0x14]
BEQ             loc_1EA9D0
VDIV.F32        S3, S1, S2
VSTR            S3, [R1,#0x10]
VDIV.F32        S1, S0, S2
VSTR            S1, [R1,#0x14]
LDR             R0, [R1,#4]
ADD             R0, R0, #1
STR             R0, [R1,#4]
BX              LR
