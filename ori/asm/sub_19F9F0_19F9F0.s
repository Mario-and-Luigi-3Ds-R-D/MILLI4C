PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #8
BL              sub_61E74C
ADD             R0, R4, #0x18
BL              sub_61E74C
LDR             R0, [R4,#4]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
LDRBEQ          R0, [R4,#0x10]
CMPEQ           R0, #0
BNE             locret_19FA48
LDRB            R0, [R4,#0x20]
CMP             R0, #0
BNE             locret_19FA48
LDR             R0, [R4,#4]
MOV             R1, #0
STRB            R1, [R0,#0xF2]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x3F4
BL              sub_61E3C4
POP             {R4,PC}
