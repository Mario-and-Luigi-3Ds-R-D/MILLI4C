ADD             R0, R2, #0x6C ; 'l'
PUSH            {LR}
MOV             R3, R1
VLDM            R0, {S0-S1}
LDR             R0, [R2,#8]
BL              sub_1F4604
LDR             R1, [R2,#0x14]
CMP             R0, R1
BNE             loc_1F475C
LDR             R0, [R2,#0x18]
LDR             R1, [R3]
ADD             R0, R0, R1
STR             R0, [R3]
MOV             R0, #0
POP             {PC}
