PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_14FB8C
LDR             R6, =off_6CE970
LDR             R0, [R6]
BL              sub_5EE764
CMP             R0, #0
BNE             locret_14FB8C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #5
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R4,#8]
LDR             R12, [R6]
LDR             R2, =0x300AB
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E8D0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
