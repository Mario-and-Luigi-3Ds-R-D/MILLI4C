PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1A0C8C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_14D83C
LDR             R0, [R4,#4]
MOV             R1, #0
MOV             R3, #0x100
MOV             R2, R1
LDR             R0, [R0,#0x5C]
STRB            R1, [R0,#0xF3]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x5C]
BL              sub_14C548
LDR             R0, [R4,#4]
BL              sub_61E4FC
POP             {R4,PC}
