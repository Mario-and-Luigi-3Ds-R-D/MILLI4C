CMP             R1, R0
BXEQ            LR
VLDM            R1!, {S0-S5}
MOV             R2, R0
VLDM            R1, {S6-S11}
VSTM            R2!, {S0-S5}
VSTM            R2, {S6-S11}
BX              LR
