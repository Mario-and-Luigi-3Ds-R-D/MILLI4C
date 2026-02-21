PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B7BDC
STR             R0, [R4]
LDRH            R0, [R4,#0x26]
TST             R0, #1
LDRNE           R0, [R4,#0x1C]
CMPNE           R0, #0
BEQ             loc_112008
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4,#0x1C]
LDR             R1, =off_6B81B0
MOV             R0, R4
STR             R1, [R4,#0xC]
POP             {R4,PC}
