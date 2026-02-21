PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #3
STRB            R0, [R4]
ADD             R0, R4, #4
STR             R0, [R4,#0x7C]
STR             R0, [R4,#0x80]
ADD             R2, R4, #0x84
VLDM            R1, {S0-S5}
MOV             R0, R4
VSTM            R2, {S0-S5}
BL              sub_24A494
MOV             R0, R4
POP             {R4,PC}
