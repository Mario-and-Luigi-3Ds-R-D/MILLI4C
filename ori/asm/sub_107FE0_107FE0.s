NOP
PUSH            {R4,LR}
BL              sub_10F2FC
CMP             R0, #0
BEQ             locret_108020
BL              sub_11A0F8
CMP             R0, #0
BNE             locret_108020
BL              sub_10E928
MOVS            R0, R0,LSR#31
BLNE            sub_128434
MOV             R0, #0xF
BL              loc_1197F8
POP             {R4,LR}
MOV             R0, #6
B               sub_1197BC
POP             {R4,PC}
