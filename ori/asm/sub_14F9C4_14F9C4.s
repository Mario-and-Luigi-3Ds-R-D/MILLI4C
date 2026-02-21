PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_14FA6C
LDR             R0, [R4,#8]
VLDR            S5, [R5,#0x24]
ADD             R5, R5, #0x28 ; '('
VLDR            S2, [R0,#0x1C]
ADD             R0, R0, #0x20 ; ' '
VLDM            R5, {S3-S4}
VSUB.F32        S2, S2, S5
VLDM            R0, {S0-S1}
LDR             R0, =dword_6E197C
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S4
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S0, S0
VLDR            S0, [R0,#(flt_6E19B0 - 0x6E197C)]
LDR             R0, [R4,#8]
VMLA.F32        S2, S1, S1
VSQRT.F32       S1, S2
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
VLDR            S1, =0.0
BL              sub_4E4124
LDR             R0, [R4,#8]
LDR             R12, =off_6CE970
LDR             R2, =0x300AD
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503808
LDR             R1, =unk_63E868
STR             R0, [R4,#0x14]
LDRD            R0, R1, [R1,#(off_63E8F0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
