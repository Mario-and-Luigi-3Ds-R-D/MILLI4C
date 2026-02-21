PUSH            {R3-R5,LR}
ADD             R5, R0, #0x21C00
ADD             R5, R5, #0x24C
MOV             R4, R0
LDRB            R0, [R5,#0x38]
CMP             R0, #2
CMPNE           R0, #0
MOVEQ           R1, #1
MOVNE           R1, #0
MOV             R0, R5
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
