LDR             R2, =off_6CE970
PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R2, [R2]
LDR             R0, =off_6CDF98
VLDR            S1, =0.0039062
ADD             R2, R2, #0x190000
ADD             R2, R2, #0xDE00
LDR             R0, [R0]
LDRSH           R2, [R2,#(loc_19DEE0+2 - 0x19DE00)]
VLDR            S16, [R4,#0x3FC]
VMOV            S0, R2
LDR             R1, [R0,#0x124]
ADD             R0, R0, #0x12800
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, [R1,#0x3D0]
VMLA.F32        S16, S1, S0
VSTR            S16, [R4,#0x3FC]
VLDR            S0, [R0,#0x188]
LDR             R0, [R4,#4]
VNEG.F32        S17, S0
BL              sub_5CC564
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_26D108
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S17
VMOVCS.F32      S0, S16
ADD             R0, R4, #0x3A4
VLDM            R0, {S1-S2}
VSTR            S0, [R4,#0x3FC]
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_26D130
LDR             R0, [R4,#4]
VPOP            {D8}
POP             {R4,LR}
B               sub_26F2A0
VPOP            {D8}
POP             {R4,PC}
