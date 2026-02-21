VLDM            R1, {S0-S11}
VLDM            R2, {S12-S14}
VMUL.F32        S0, S0, S12
VMUL.F32        S1, S1, S13
VMUL.F32        S2, S2, S14
VMUL.F32        S4, S4, S12
VMUL.F32        S5, S5, S13
VMUL.F32        S6, S6, S14
VMUL.F32        S8, S8, S12
VMUL.F32        S9, S9, S13
VMUL.F32        S10, S10, S14
VSTM            R0, {S0-S11}
BX              LR
