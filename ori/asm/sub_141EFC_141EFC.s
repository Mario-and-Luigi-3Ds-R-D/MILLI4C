VLDM            R1, {S0-S8}
VLDM            R2, {S9-S11}
VMUL.F32        S12, S0, S9
VMUL.F32        S13, S3, S9
VMUL.F32        S14, S6, S9
VMLA.F32        S12, S1, S10
VMLA.F32        S13, S4, S10
VMLA.F32        S14, S7, S10
VMLA.F32        S12, S2, S11
VMLA.F32        S13, S5, S11
VMLA.F32        S14, S8, S11
VSTM            R0, {S12-S14}
BX              LR
