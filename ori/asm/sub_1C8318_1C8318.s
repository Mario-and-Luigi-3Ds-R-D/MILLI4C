PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S17, S0
VMOV.F32        S16, S1
VLDR            S0, [R0]
VLDR            S1, =2.0
VMOV.F64        D9, D1
VADD.F32        S0, S0, S1
BL              sub_5F63A4
VLDR            S1, =0.0
VSTR            S0, [R4]
VSTR            S0, [R4,#4]
VCMPE.F32       S16, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_1C836C
MOV             R0, #0
VSTR            S1, [R4,#0xC]
STRB            R0, [R4,#0x3D]
VPOP            {D8-D9}
POP             {R4,PC}
VCVT.S32.F32    S0, S17
VSTR            S16, [R4,#0xC]
ADD             R2, R4, #0x40 ; '@'
MOV             R1, #3
VSTM            R2, {S18-S19}
STRB            R1, [R4,#0x3D]
VMOV            R0, S0
STRB            R0, [R4,#0x3C]
VPOP            {D8-D9}
POP             {R4,PC}
