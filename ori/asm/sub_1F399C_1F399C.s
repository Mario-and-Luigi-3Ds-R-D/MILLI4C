PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B2634
STR             R0, [R4]
MOV             R0, R4
BL              sub_1F1644
LDR             R6, =off_6D1648
LDR             R0, [R6,#(off_6D164C - 0x6D1648)]
CMP             R0, #0
BNE             loc_1F39D4
LDR             R0, =word_6EBB64
LDR             R0, [R0,#(dword_6EBB68 - 0x6EBB64)]
TST             R0, #1
BLEQ            sub_3213EC
MOV             R0, #0x700
BL              sub_6126B8
MOV             R5, #0
ADD             R0, R4, #0x4000
ADD             R0, R0, #0x180
STR             R5, [R6]
BL              sub_1E8814
SUB             R4, R0, #0x4000
LDR             R0, =off_6B8AD4
SUB             R4, R4, #0x180
STR             R0, [R4,#0x20]!
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_1F3A14
BL              sub_110D10
STR             R5, [R4,#0xC]
LDR             R0, =off_6B7E14
STR             R0, [R4],#-0x20
ADD             R0, R4, #0x14
BL              sub_572D24
SUB             R4, R0, #0x14
LDR             R0, =off_6B3DD8
STR             R0, [R4]
MOV             R0, R4
BL              sub_29F4FC
LDR             R0, =off_6B7B40
STR             R0, [R4]
MOV             R0, R4
BL              sub_4A2244
MOV             R0, R4
POP             {R4-R6,PC}
