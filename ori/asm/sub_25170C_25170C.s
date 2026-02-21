PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R8, #0
VLDR            S2, =0.5
VPUSH           {D8-D14}
VLDR            S1, [R0,#0x10]
VLDR            S5, [R0,#0x14]
VLDR            S0, [R0,#0x18]
LDR             R4, [R0]
VDIV.F32        S6, S5, S1
VNEG.F32        S8, S0
VLDR            S3, [R0,#0x28]
VLDR            S4, [R0,#0x24]
LDRD            R0, R1, [R5,#0x1C]
VNEG.F32        S3, S3
VLDR            S28, =0.0
ADD             R9, R1, #1
CMP             R9, #0
VLDR            S18, =1.0
VLDRHI          S29, =-0.5
VLDRHI          S25, =40.744
ADD             R7, R0, #1
VDIV.F32        S5, S0, S1
VMOV            S0, R0
VMUL.F32        S22, S5, S2
VCVT.F32.U32    S9, S0
VDIV.F32        S7, S8, S1
VCVT.F32.U32    S8, S0
VMOV            S1, R1
VCVT.F32.U32    S0, S1
VCVT.F32.U32    S1, S1
VDIV.F32        S19, S6, S9
VDIV.F32        S20, S4, S8
VDIV.F32        S26, S3, S1
VDIV.F32        S23, S7, S0
BLS             loc_251860
ADD             R0, R5, #0x10
CMP             R7, #0
VLDM            R0, {S1-S2}
VMULHI.F32      S27, S22, S25
VMOV.F32        S16, S28
MOV             R6, #0
VDIV.F32        S0, S2, S1
VMUL.F32        S17, S0, S29
BLS             loc_25184C
VMUL.F32        S21, S17, S25
VMOV.F32        S0, S21
BL              sub_464380
VMOV.F32        S24, S0
VMOV.F32        S0, S27
BL              sub_464318
VMUL.F32        S0, S24, S0
VLDR            S1, [R5,#0x10]
VMUL.F32        S0, S0, S1
VSTR            S0, [R4]
VMOV.F32        S0, S27
BL              sub_464380
VLDR            S1, [R5,#0x10]
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VMOV.F32        S0, S21
BL              sub_464318
VMOV.F32        S21, S0
VMOV.F32        S0, S27
BL              sub_464318
VMUL.F32        S0, S21, S0
VLDR            S1, [R5,#0x10]
VADD.F32        S17, S17, S19
ADD             R6, R6, #1
CMP             R7, R6
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#8]
VLDR            S1, [R5,#0x10]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#8]
VSTR            S16, [R4,#0xC]
VADD.F32        S16, S16, S20
VSTR            S18, [R4,#0x10]
ADD             R4, R4, #0x14
BHI             loc_2517C0
VADD.F32        S22, S22, S23
VADD.F32        S18, S18, S26
ADD             R8, R8, #1
CMP             R9, R8
BHI             loc_25179C
LDR             R1, [R5,#0xC]
LDR             R0, [R5]
ADD             R1, R1, R1,LSL#2
MOV             R1, R1,LSL#2
BL              sub_126EA4
LDRD            R0, R1, [R5,#4]
VPOP            {D8-D14}
MOV             R1, R1,LSL#1
POP             {R4-R10,LR}
B               sub_126EA4
