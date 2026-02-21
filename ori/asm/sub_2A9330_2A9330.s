PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
LDRSH           R0, [R0,#0x7E]
CMP             R0, #0
BEQ             loc_2A9400
LDRSH           R1, [R4,#0x7C]
CMP             R0, R1
MOVLE           R0, #1
BLE             loc_2A9400
ADD             R1, R1, #1
LDR             R2, [R4,#0x84]
SXTH            R1, R1
STRH            R1, [R4,#0x7C]
ORR             R2, R2, #1
CMP             R0, R1
STR             R2, [R4,#0x84]
BLE             loc_2A93FC
VMOV            S0, R1
VMOV            S3, R0
VLDR            S2, =90.0
VLDR            S1, =180.0
VLDR            S4, =450.0
VMOV.F32        S16, S2
VCVT.F32.S32    S5, S0
VCVT.F32.S32    S3, S3
VLDR            S18, =0.71111
VDIV.F32        S0, S5, S3
VMLA.F32        S1, S0, S2
VMLA.F32        S16, S0, S4
VMUL.F32        S0, S1, S18
BL              sub_464380
VLDR            S1, =1.0
VADD.F32        S17, S0, S1
VMUL.F32        S0, S16, S18
BL              sub_464380
ADD             R2, R4, #0x74 ; 't'
VLDM            R2, {S1-S2}
VMUL.F32        S1, S1, S17
VMUL.F32        S2, S2, S17
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VSTR            S1, [R4,#0x20]
VMOV.F32        S2, S1
VSTR            S0, [R4,#0x24]
VLDR            S3, [R4,#0x18]
VLDR            S1, [R4,#0x1C]
VADD.F32        S2, S2, S3
VADD.F32        S0, S0, S1
VSTR            S2, [R4,#0x20]
VSTR            S0, [R4,#0x24]
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4,PC}
