PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S17, S0
VMOV.F32        S18, S1
VLDR            S19, =2.0
VLDR            S0, [R0]
VMOV.F32        S16, S2
VMOV.F32        S1, S19
VADD.F32        S0, S0, S19
BL              sub_5F63A4
VSTR            S0, [R4]
VSTR            S0, [R4,#4]
VMOV.F32        S1, S19
VMOV.F32        S0, S17
BL              sub_5F63A4
VLDR            S17, =0.0
VMOV.F32        S1, S0
MOV             R0, #5
VCMPE.F32       S18, S17
VSTR            S0, [R4,#8]
STRB            R0, [R4,#0x3D]
MOV             R5, #0
VMRS            APSR_nzcv, FPSCR
VSTRLS          S1, [R4]
BLS             loc_1C8560
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_1C8508
VLDR            S0, [R4]
BL              sub_597750
VMOV.F32        S16, S0
VCVT.S32.F32    S0, S16
VCMPE.F32       S16, S17
VMOV            R0, S0
VMRS            APSR_nzcv, FPSCR
STRB            R0, [R4,#0x3C]
VLDR            S1, [R4]
VLDR            S0, [R4,#8]
BCS             loc_1C856C
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S0, S0, S19
BLE             loc_1C853C
VSTR            S0, [R4,#8]
VLDR            S3, [R4,#8]
VSUB.F32        S0, S3, S1
VABS.F32        S0, S0
VDIV.F32        S1, S0, S18
VCVT.S32.F32    S2, S1
VMOV            R0, S2
CMP             R0, #0
VSTRLE          S3, [R4]
BGT             loc_1C8580
STRB            R5, [R4,#0x3D]
VPOP            {D8-D9}
POP             {R4-R6,PC}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VADDGT.F32      S0, S0, S19
BLE             loc_1C853C
B               loc_1C8538
VMOV            S3, R0
VLDR            S2, =1.0
VSTR            S17, [R4,#0x10]
VCVT.F32.S32    S3, S3
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VMOV            S1, R0
VMUL.F32        S0, S0, S16
VCVT.F32.S32    S1, S1
VSTR            S0, [R4,#0x14]
VADDCC.F32      S1, S1, S2
VDIV.F32        S3, S2, S1
VSTR            S3, [R4,#0xC]
VPOP            {D8-D9}
POP             {R4-R6,PC}
