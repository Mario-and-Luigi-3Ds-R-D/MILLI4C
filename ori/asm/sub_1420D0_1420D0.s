VLDM            R2, {S0-S11}
VLDM            R1, {S12-S14}
VMUL.F32        S0, S0, S12
VMUL.F32        S1, S1, S12
VMUL.F32        S2, S2, S12
VMUL.F32        S3, S3, S12
VMUL.F32        S4, S4, S13
VMUL.F32        S5, S5, S13
VMUL.F32        S6, S6, S13
VMUL.F32        S7, S7, S13
VMUL.F32        S8, S8, S14
VMUL.F32        S9, S9, S14
VMUL.F32        S10, S10, S14
VMUL.F32        S11, S11, S14
VSTM            R0, {S0-S11}
BX              LR
