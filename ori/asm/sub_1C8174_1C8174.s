PUSH            {R3-R5,LR}
LDR             R12, [SP,#0x10+arg_0]
STR             R12, [SP,#0x10+var_10]
BL              sub_1E7DC4
LDR             R3, =off_6B0F94
MOV             R2, #0
STR             R2, [R0,#0xAA8]
ADD             R12, R3, #0x360
ADD             R4, R12, #0x18
STR             R3, [R0]
STR             R4, [R0,#0x758]
MOV             R1, #0xFF
STR             R12, [R0,#0xE0]
STRB            R1, [R0,#0xAAC]
POP             {R3-R5,PC}
