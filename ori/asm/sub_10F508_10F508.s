PUSH            {R4,LR}
BL              sub_11A1A8
CMP             R0, #0
BNE             loc_10F524
BL              sub_11A178
CMP             R0, #0
BEQ             locret_10F528
MOV             R0, #1
POP             {R4,PC}
