PUSH            {R4,LR}
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
MOV             R0, #4
VCMPE.F32       S18, S17
VSTR            S0, [R4,#8]
STRB            R0, [R4,#0x3D]
VMRS            APSR_nzcv, FPSCR
BHI             loc_1C863C
MOV             R0, #0
VSTR            S1, [R4]
STRB            R0, [R4,#0x3D]
VPOP            {D8-D9}
POP             {R4,PC}
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_1C8654
VLDR            S0, [R4]
BL              sub_597750
VMOV.F32        S16, S0
VCVT.S32.F32    S0, S16
VCMPE.F32       S16, S17
VMOV            R0, S0
VMRS            APSR_nzcv, FPSCR
SXTB            R0, R0
STRB            R0, [R4,#0x3C]
VLDR            S1, [R4]
VLDR            S0, [R4,#8]
BCS             loc_1C86C4
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S0, S0, S19
BLE             loc_1C868C
VSTR            S0, [R4,#8]
VSUB.F32        S0, S0, S1
VMOV            S1, R0
VLDR            S2, =0.5
VLDR            S3, =1.0
VSTR            S17, [R4,#0x10]
VCVT.F32.S32    S1, S1
VABS.F32        S0, S0
VMUL.F32        S0, S0, S2
VDIV.F32        S2, S3, S18
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x14]
VSTR            S2, [R4,#0xC]
VPOP            {D8-D9}
POP             {R4,PC}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VADDGT.F32      S0, S0, S19
BLE             loc_1C868C
B               loc_1C8688
