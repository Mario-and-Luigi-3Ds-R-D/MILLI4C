PUSH            {R4,LR}
MOV             R4, R0
LDRH            R0, [R0,#0x24]
TST             R0, #1
BEQ             locret_21F5DC
LDR             R0, [R4,#8]
CMP             R0, #0
LDRNE           R0, [R4,#0x14]
CMPNE           R0, #0
BEQ             loc_21F5D0
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4,#0x14]
LDRH            R0, [R4,#0x24]
BIC             R0, R0, #1
STRH            R0, [R4,#0x24]
POP             {R4,PC}
