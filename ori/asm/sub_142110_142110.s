VLDM            R1, {S0-S2}
ADD             R1, R1, #0x10
VLDM            R1, {S3-S5}
ADD             R1, R1, #0x10
VLDM            R1, {S6-S8}
VMUL.F32        S10, S0, S4
VMUL.F32        S11, S1, S5
VMUL.F32        S12, S2, S3
VMUL.F32        S13, S6, S4
VMUL.F32        S14, S3, S1
VMUL.F32        S15, S0, S7
VMUL.F32        S10, S10, S8
VMUL.F32        S11, S11, S6
VMUL.F32        S12, S12, S7
VMLS.F32        S10, S13, S2
VMLS.F32        S11, S14, S8
VMLS.F32        S12, S15, S5
VADD.F32        S10, S10, S11
VLDR            S15, =1.0
VADD.F32        S10, S10, S12
VMOV            R2, S10
CMP             R2, #0x80000000
CMPNE           R2, #0
MOVEQ           R0, #0
BXEQ            LR
VPUSH           {D8-D12}
VDIV.F32        S15, S15, S10
VMUL.F32        S16, S4, S8
VMUL.F32        S17, S1, S8
VMUL.F32        S18, S1, S5
VMUL.F32        S19, S3, S8
VMUL.F32        S20, S0, S8
VMUL.F32        S21, S0, S5
VMUL.F32        S22, S3, S7
VMUL.F32        S23, S0, S7
VMUL.F32        S24, S0, S4
VMLS.F32        S16, S7, S5
VMLS.F32        S17, S7, S2
VMLS.F32        S18, S4, S2
VMLS.F32        S19, S6, S5
VMLS.F32        S20, S6, S2
VMLS.F32        S21, S3, S2
VMLS.F32        S22, S6, S4
VMLS.F32        S23, S6, S1
VMLS.F32        S24, S3, S1
VMUL.F32        S0, S16, S15
VNMUL.F32       S1, S17, S15
VMUL.F32        S2, S18, S15
VNMUL.F32       S4, S19, S15
VMUL.F32        S5, S20, S15
VNMUL.F32       S6, S21, S15
VMUL.F32        S8, S22, S15
VLDR            S12, [R1,#-0x14]
VNMUL.F32       S9, S23, S15
VMUL.F32        S10, S24, S15
VNMUL.F32       S3, S0, S12
VLDR            S13, [R1,#-4]
VNMUL.F32       S7, S4, S12
VNMUL.F32       S11, S8, S12
VMLS.F32        S3, S1, S13
VLDR            S14, [R1,#0xC]
VMLS.F32        S7, S5, S13
VMLS.F32        S11, S9, S13
VMLS.F32        S3, S2, S14
VMLS.F32        S7, S6, S14
VMLS.F32        S11, S10, S14
VPOP            {D8-D12}
VSTM            R0, {S0-S11}
MOV             R0, #1
BX              LR
