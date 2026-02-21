CMP             R1, R0
BXEQ            LR
VLDM            R1, {S0-S15}
VSTM            R0, {S0-S15}
BX              LR
