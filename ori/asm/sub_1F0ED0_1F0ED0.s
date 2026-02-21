VLDM            R1, {S0-S6}
LDR             R2, =word_6EBB64
ADD             R3, R2, #4
VSTM            R3, {S0-S6}
LDR             R1, [R0,#0x148]
STR             R1, [R2,#(dword_6EBB84 - 0x6EBB64)]
LDR             R1, [R0,#0x14C]
ORR             R1, R1, #0x100
STR             R1, [R0,#0x14C]
BX              LR
