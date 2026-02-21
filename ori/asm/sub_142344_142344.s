VLDM            R1, {S0-S11}
VLDM            R2, {S12-S14}
VMLA.F32        S3, S0, S12
VMLA.F32        S7, S4, S12
VMLA.F32        S11, S8, S12
VMLA.F32        S3, S1, S13
VMLA.F32        S7, S5, S13
VMLA.F32        S11, S9, S13
VMLA.F32        S3, S2, S14
VMLA.F32        S7, S6, S14
VMLA.F32        S11, S10, S14
VSTM            R0, {S0-S11}
BX              LR
