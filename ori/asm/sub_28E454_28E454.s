VLDR            S3, [R1]
LDR             R2, [R0]
LDR             R1, [R0,#4]
VLDR            S4, [R2]
VLDR            S6, [R1]
VLDR            S1, [R2,#4]
VLDR            S2, [R1,#4]
VSUB.F32        S4, S4, S6
VLDR            S0, [R2,#8]
VLDR            S5, [R1,#8]
VSUB.F32        S1, S1, S2
VLDR            S6, [R0,#8]
VSUB.F32        S2, S0, S5
MOV             R1, R2
LDRB            R2, [R2,#0x24]
VMUL.F32        S0, S4, S4
CMP             R2, #0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S5, S0
VSUB.F32        S0, S5, S6
VLDR            S6, =1.0
VNMUL.F32       S0, S3, S0
VDIV.F32        S3, S6, S5
VMUL.F32        S4, S4, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S3
BNE             loc_28E504
ADD             R1, R1, #0x18
VLDR            S7, [R1]
VMOV.F32        S3, S4
VMUL.F32        S6, S3, S0
VMOV.F32        S3, S1
VMUL.F32        S5, S3, S0
VMOV.F32        S3, S2
VADD.F32        S6, S7, S6
VMUL.F32        S3, S3, S0
VSTR            S6, [R1]
VLDR            S6, [R1,#4]
VADD.F32        S5, S6, S5
VSTR            S5, [R1,#4]
VLDR            S5, [R1,#8]
VADD.F32        S3, S5, S3
VSTR            S3, [R1,#8]
LDR             R0, [R0,#4]
LDRB            R1, [R0,#0x24]
CMP             R1, #0
BNE             locret_28E54C
VNEG.F32        S0, S0
ADD             R0, R0, #0x18
VMUL.F32        S3, S4, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VLDR            S2, [R0]
VADD.F32        S2, S2, S3
VSTR            S2, [R0]
VLDR            S2, [R0,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R0,#8]
BX              LR
