CMP             R0, #0x20000
PUSH            {R4,LR}
BEQ             loc_10BB88
CMP             R0, #0x30000
MOVNE           R0, #0
BNE             locret_10BB84
BL              sub_1230AC
CMP             R0, #0
LDRNE           R0, =0x1F380000
LDREQ           R0, =0x1F300000
POP             {R4,PC}
NOP
BL              sub_1230AC
CMP             R0, #0
LDRNE           R0, =0x1F180000
MOVEQ           R0, #0x1F000000
POP             {R4,PC}
