PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S19, S0
VMOV.F32        S16, S1
VLDR            S18, =2.0
VLDR            S0, [R0]
VMOV.F32        S17, S18
VADD.F32        S0, S0, S17
VMOV.F32        S1, S17
BL              sub_5F63A4
VSTR            S0, [R4]
VSTR            S0, [R4,#4]
VMOV.F32        S1, S17
VMOV.F32        S0, S19
BL              sub_5F63A4
VLDR            S17, =0.0
VMOV.F32        S1, S0
VSTR            S0, [R4,#8]
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_1C825C
VLDR            S0, [R4]
BL              sub_597750
VMOV.F32        S16, S0
VCVT.S32.F32    S0, S16
VMOV            R0, S0
SXTB            R0, R0
STRB            R0, [R4,#0x3C]
VLDR            S1, [R4]
VLDR            S0, [R4,#8]
CMP             R0, #0
BGE             loc_1C82D0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S0, S0, S18
BLE             loc_1C8290
VSTR            S0, [R4,#8]
VLDR            S2, [R4,#0x18]
VMOV.F32        S0, S1
VSTR            S2, [R4,#0xC]
VSTR            S17, [R4,#0x10]
VLDR            S1, [R4,#8]
VSUB.F32        S0, S1, S0
VABS.F32        S0, S0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1C82E4
MOV             R0, #0
VSTR            S1, [R4]
STRB            R0, [R4,#0x3D]
VSTR            S17, [R4,#0xC]
VPOP            {D8-D9}
POP             {R4,PC}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S18
BCS             loc_1C8290
B               loc_1C828C
VLDR            S2, [R4,#0x28]
VLDR            S1, [R4,#0x38]
VSTR            S0, [R4,#0x14]
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S1, S0
MOV             R0, #2
STRB            R0, [R4,#0x3D]
VSTR            S2, [R4,#0x24]
VSTR            S0, [R4,#0x34]
VPOP            {D8-D9}
POP             {R4,PC}
