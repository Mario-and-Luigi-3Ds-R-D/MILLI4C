PUSH            {R4-R10,LR}
MOV             R7, R2
MOV             R9, R1
MOV             R8, R3
VPUSH           {D8}
ADD             R1, SP, #0x28+arg_0
VMOV.F32        S16, S0
LDM             R1, {R5,R6}
BL              sub_503064
ADD             R0, R0, #0x400
ADD             R0, R0, #0x22C
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
MOV             R10, #1
SUB             R4, R0, #0x400
SUB             R4, R4, #0x22C
STRB            R10, [R0,#0x14]
MOV             R2, #0
MOV             R1, R9
MOV             R0, R4
BL              sub_502500
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C548
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
MOV             R1, R7
MOV             R0, R4
STRB            R10, [R4,#0xF1]
BL              sub_14E984
MOV             R1, #0
MOV             R0, R4
BL              sub_502538
VLDR            S1, [R7]
VLDR            S0, =2.0
VLDR            S4, =-3.0
VLDR            S6, [R8]
VMUL.F32        S8, S1, S0
VMUL.F32        S7, S1, S4
VLDR            S3, =3.0
VLDR            S2, [R5]
VLDR            S5, [R6]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1FC
VMLS.F32        S8, S6, S0
VMLA.F32        S7, S6, S3
VADD.F32        S6, S8, S2
VMLS.F32        S7, S2, S0
VADD.F32        S6, S6, S5
VSUB.F32        S5, S7, S5
VSTR            S6, [R0]
VSTR            S5, [R0,#4]
VSTR            S2, [R0,#8]
VSTR            S1, [R0,#0xC]
VLDR            S1, [R7,#4]
VLDR            S6, [R8,#4]
VLDR            S2, [R5,#4]
VMUL.F32        S8, S1, S0
VMUL.F32        S7, S1, S4
VLDR            S5, [R6,#4]
VMLS.F32        S8, S6, S0
VMLA.F32        S7, S6, S3
VADD.F32        S6, S8, S2
VMLS.F32        S7, S2, S0
VADD.F32        S6, S6, S5
VSUB.F32        S5, S7, S5
VSTR            S6, [R0,#0x10]
VSTR            S5, [R0,#0x14]
VSTR            S2, [R0,#0x18]
VSTR            S1, [R0,#0x1C]
VLDR            S1, [R7,#8]
VLDR            S5, [R8,#8]
VLDR            S2, [R5,#8]
VMUL.F32        S4, S1, S4
VMUL.F32        S7, S1, S0
VLDR            S6, [R6,#8]
VMLA.F32        S4, S5, S3
VMLS.F32        S7, S5, S0
VMLS.F32        S4, S2, S0
VADD.F32        S0, S7, S2
VSUB.F32        S3, S4, S6
VADD.F32        S0, S0, S6
VSTR            S0, [R0,#0x20]
VSTR            S3, [R0,#0x24]
VSTR            S2, [R0,#0x28]
VSTR            S1, [R0,#0x2C]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x22C
BL              sub_5A18EC
VLDR            S0, =0.0
ADD             R0, R4, #0x400
VMOV.F32        S1, S16
VSTR            S0, [R0,#0x238]
VSTR            S0, [R0,#0x230]
ADD             R0, R4, #0x400
VLDR            S0, =1.0
ADD             R0, R0, #0x22C
BL              sub_5A12F8
MOV             R0, #0
STRB            R0, [R4,#0x5F8]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R10,PC}
