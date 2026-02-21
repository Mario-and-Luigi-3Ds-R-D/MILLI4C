VLDR            S6, =1.0
VSUB.F32        S11, S1, S0
VADD.F32        S10, S1, S0
VSUB.F32        S9, S3, S2
VSUB.F32        S8, S5, S4
VLDR            S5, =0.0
VADD.F32        S3, S3, S2
VSTR            S5, [R0,#4]
VSTR            S5, [R0,#8]
VSTR            S5, [R0,#0x10]
VSTR            S5, [R0,#0x18]
VDIV.F32        S1, S6, S11
VSTR            S5, [R0,#0x20]
VSTR            S5, [R0,#0x24]
VSTR            S5, [R0,#0x30]
VLDR            S7, =2.0
VSTR            S5, [R0,#0x34]
ADD             R2, R0, #0x38 ; '8'
CMP             R1, #0
VSTM            R2, {S5-S6}
CMPNE           R1, #4
MOV             R2, R0
VDIV.F32        S2, S6, S9
VMUL.F32        S5, S2, S7
VNMUL.F32       S2, S3, S2
VDIV.F32        S0, S6, S8
VMUL.F32        S6, S1, S7
VNMUL.F32       S1, S10, S1
VSTR            S0, [R0,#0x28]
VMUL.F32        S4, S4, S0
VSTR            S6, [R0]
VSTR            S1, [R0,#0xC]
VSTR            S5, [R0,#0x14]
VSTR            S2, [R0,#0x1C]
VSTR            S4, [R0,#0x2C]
BEQ             locret_1336F8
CMP             R1, #2
VLDR            S0, =-0.0
BEQ             loc_1336FC
CMP             R1, #3
BEQ             loc_13373C
VMOV.F32        S4, S6
VMOV.F32        S3, S5
VLDR            S5, [R2,#0x1C]
VLDR            S2, [R2,#0x10]
VSTR            S5, [R2,#0xC]
VNEG.F32        S1, S1
VNEG.F32        S4, S4
VSTR            S4, [R2,#0x10]
VSTR            S0, [R2,#0x14]
VSTR            S0, [R2,#0x18]
VSTM            R2, {S2-S3}
VSTR            S1, [R0,#0x1C]
BX              LR
VMOV.F32        S4, S6
VMOV.F32        S3, S1
VMOV.F32        S1, S5
VNEG.F32        S2, S2
ADD             R1, R2, #0x10
VNEG.F32        S4, S4
VNEG.F32        S3, S3
VNEG.F32        S1, S1
VSTR            S4, [R2]
VSTR            S0, [R2,#4]
VSTR            S0, [R2,#8]
VSTR            S3, [R2,#0xC]
VSTM            R1, {S0-S1}
VSTR            S0, [R2,#0x18]
VSTR            S2, [R0,#0x1C]
BX              LR
VMOV.F32        S1, S5
VMOV.F32        S3, S2
VLDR            S2, [R2,#4]
VLDR            S5, [R2,#0xC]
VMOV.F32        S4, S6
VNEG.F32        S1, S1
VNEG.F32        S3, S3
VSTM            R2, {S0-S1}
VSTR            S0, [R2,#8]
VSTR            S2, [R2,#0x14]
ADD             R2, R2, #0xC
VSTM            R2, {S3-S4}
VSTR            S5, [R0,#0x1C]
BX              LR
