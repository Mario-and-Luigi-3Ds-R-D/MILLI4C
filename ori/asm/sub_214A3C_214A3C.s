PUSH            {R4,LR}
MOV             R4, R0
BL              sub_14EA44
LDRB            R0, [R4,#0x3F4]
CMP             R0, #0
BNE             locret_214A80
ADD             R0, R4, #0x354
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_214A80
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             locret_214A80
MOV             R0, R4
POP             {R4,LR}
B               sub_528B1C
POP             {R4,PC}
