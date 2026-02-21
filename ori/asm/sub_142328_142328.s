VLDM            R2, {S0-S11}
VLDM            R1, {S12-S14}
VADD.F32        S3, S3, S12
VADD.F32        S7, S7, S13
VADD.F32        S11, S11, S14
VSTM            R0, {S0-S11}
BX              LR
