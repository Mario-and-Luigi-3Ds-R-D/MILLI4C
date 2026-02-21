VPUSH           {D8-D9}
VLDM            R2, {S0-S11}
VLDM            R1!, {S12-S19}
VADD.F32        S0, S12, S0
VADD.F32        S1, S13, S1
VADD.F32        S2, S14, S2
VADD.F32        S3, S15, S3
VADD.F32        S4, S16, S4
VLDM            R1!, {S12-S15}
VADD.F32        S5, S17, S5
VADD.F32        S6, S18, S6
VADD.F32        S7, S19, S7
VADD.F32        S8, S12, S8
VADD.F32        S9, S13, S9
VADD.F32        S10, S14, S10
VADD.F32        S11, S15, S11
VPOP            {D8-D9}
VSTM            R0, {S0-S11}
BX              LR
