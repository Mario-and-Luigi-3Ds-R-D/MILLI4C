LDR             R2, [R0]
ADD             R3, R0, #0x90
VLDM            R3, {S0-S2}
LDR             R2, [R2,#0x18]
BX              R2
