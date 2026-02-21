PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x400]
CMP             R0, #0
BNE             locret_293070
ADD             R0, R4, #0x3A8
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_293070
LDR             R0, [R4,#8]
BL              sub_5CDC70
CMP             R0, #0
BNE             locret_293070
LDR             R0, [R4]
LDR             R1, [R0,#0x10]
MOV             R0, R4
POP             {R4,LR}
BX              R1
POP             {R4,PC}
