PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D11}
CMP             R1, #0
LDR             R0, [R0,#4]
ADD             R0, R0, #0x108
VLDM            R0, {S0-S2}
ADD             R0, R4, #0x7C ; '|'
VLDM            R0, {S3-S5}
LDR             R0, [R4,#4]
VADD.F32        S19, S0, S3
VADD.F32        S20, S1, S4
VADD.F32        S21, S2, S5
VLDR            S5, [R4,#0xA8]
VLDR            S1, [R4,#0xAC]
ADD             R0, R0, #0x400
VLDR            S4, [R4,#0xA0]
VSUB.F32        S2, S5, S1
VLDR            S3, [R4,#0xA4]
VLDR            S22, [R0,#0x230]
VLDR            S6, [R0,#0x22C]
VSUB.F32        S17, S3, S4
VMOV.F32        S16, S4
VSUB.F32        S23, S22, S6
VLDR            S0, =0.0
VMOV.F32        S18, S2
BEQ             loc_235604
CMP             R1, #1
BEQ             loc_235618
CMP             R1, #2
BEQ             loc_235638
CMP             R1, #3
BNE             loc_235668
B               loc_23564C
VNEG.F32        S1, S1
ADD             R0, R4, #0x7C ; '|'
VSTM            R0, {S0-S1}
VSTR            S0, [R4,#0x84]
B               loc_235668
VMOV.F32        S16, S0
VNEG.F32        S0, S1
VMOV.F32        S18, S17
VMOV.F32        S17, S2
VSTR            S0, [R4,#0x7C]
VSTR            S3, [R4,#0x80]
VSTR            S16, [R4,#0x84]
B               loc_235668
VADD.F32        S1, S1, S2
ADD             R0, R4, #0x7C ; '|'
VSTM            R0, {S0-S1}
VSTR            S0, [R4,#0x84]
B               loc_235668
VSUB.F32        S16, S1, S5
VNEG.F32        S2, S4
VMOV.F32        S18, S17
VSTR            S0, [R4,#0x84]
ADD             R0, R4, #0x7C ; '|'
VSTM            R0, {S1-S2}
VNEG.F32        S17, S16
LDR             R0, [R4,#4]
VMOV.F32        S4, S23
VMOV.F32        S3, S18
VMOV.F32        S1, S22
LDR             R1, [R0]
VMOV.F32        S2, S17
VMOV.F32        S0, S16
LDR             R1, [R1,#0x2D0]
BLX             R1
LDR             R0, [R4,#4]
VMOV.F32        S4, S23
VMOV.F32        S3, S18
VMOV.F32        S2, S17
LDR             R1, [R0]
VMOV.F32        S1, S22
VMOV.F32        S0, S16
LDR             R1, [R1,#0x4C]
BLX             R1
VLDR            S3, [R4,#0x7C]
VLDR            S4, [R4,#0x88]
ADD             R0, R4, #0x7C ; '|'
VSUB.F32        S3, S3, S4
VLDM            R0, {S0-S2}
LDR             R0, [R4,#4]
VSUB.F32        S0, S19, S0
VSUB.F32        S2, S21, S2
VSUB.F32        S1, S20, S1
VSTR            S3, [R0,#0x140]
VLDR            S3, [R4,#0x80]
VLDR            S4, [R4,#0x8C]
LDR             R0, [R4,#4]
VSUB.F32        S3, S3, S4
VSTR            S3, [R0,#0x144]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x108
VSTM            R0, {S0-S2}
VPOP            {D8-D11}
POP             {R4,PC}
