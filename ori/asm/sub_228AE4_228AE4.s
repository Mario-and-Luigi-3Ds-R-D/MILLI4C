PUSH            {R3-R5,LR}
MOV             R4, R0
ADD             R0, R0, #0x21C00
ADD             R0, R0, #0x24C
MOV             R5, R0
BL              sub_223340
LDR             R5, [R5]
ADD             R4, R4, #4
MOV             R1, SP
STR             R5, [SP,#0x10+var_10]
ADD             R0, R4, #0x328
STR             R5, [R4,#0x9C]
BL              sub_14D778
STR             R5, [R4,#0x25C]
POP             {R3-R5,PC}
