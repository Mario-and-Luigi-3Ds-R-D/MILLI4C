PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_14FCD4
BL              sub_48004C
CMP             R0, #0
BEQ             loc_14FCB4
LDR             R0, [R4,#8]
LDRH            R0, [R0,#0x10]
CMP             R0, #0x1000
ADDEQ           R0, R4, #0x18
BLEQ            sub_47D780
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #8
MOV             R0, R5
BL              sub_14C548
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E8E8 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
