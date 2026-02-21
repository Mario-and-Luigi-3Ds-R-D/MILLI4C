PUSH            {R4,LR}
CMP             R1, #0
MOV             R4, R0
MOV             R2, #0x18
BEQ             loc_1250FC
BL              sub_13F244
B               loc_125104
MOV             R1, #0
BL              sub_12B588
MOV             R0, R4
POP             {R4,PC}
