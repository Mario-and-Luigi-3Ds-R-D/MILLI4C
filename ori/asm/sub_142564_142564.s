VLDM            R1, {S0-S11}
MOV             R2, R0
VSTM            R2!, {S0-S2}
VSTM            R2!, {S4-S6}
VSTM            R2, {S8-S10}
BX              LR
