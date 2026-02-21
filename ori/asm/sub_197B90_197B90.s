PUSH            {R3-R7,LR}
MOV             R4, R0
LDRB            R1, [R0,#0x3CC]
LDR             R0, [R0,#0x214]
BL              sub_4BD5FC
STR             R0, [SP,#0x18+var_18]
LDRB            R0, [R4,#0x254]
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
LDR             R1, [R0]
LDR             R2, [R1,#0x3C]
