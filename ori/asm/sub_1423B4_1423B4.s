VPUSH           {D8-D9}
VLDM            R1, {S0-S15}
VLDM            R2, {S16-S18}
VMLA.F32        S3, S0, S16
VMLA.F32        S7, S4, S16
VMLA.F32        S11, S8, S16
VMLA.F32        S15, S12, S16
VMLA.F32        S3, S1, S17
VMLA.F32        S7, S5, S17
VMLA.F32        S11, S9, S17
VMLA.F32        S15, S13, S17
VMLA.F32        S3, S2, S18
VMLA.F32        S7, S6, S18
VMLA.F32        S11, S10, S18
VMLA.F32        S15, S14, S18
VPOP            {D8-D9}
VSTR            S3, [R0]
VSTR            S7, [R0,#4]
VSTR            S11, [R0,#8]
VSTR            S15, [R0,#0xC]
BX              LR
