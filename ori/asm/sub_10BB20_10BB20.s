CMP             R0, #0x20000
PUSH            {R4,LR}
BEQ             loc_10BB44
CMP             R0, #0x30000
MOVNE           R0, #0
BNE             locret_10BB40
BL              sub_1230AC
LDR             R0, =0x1F5FFFFF
POP             {R4,PC}
NOP
BL              sub_1230AC
LDR             R0, =0x1F2FFFFF
POP             {R4,PC}
