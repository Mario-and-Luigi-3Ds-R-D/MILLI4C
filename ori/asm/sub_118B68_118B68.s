PUSH            {R3,LR}
MOV             R1, #1
MOV             R0, SP
BL              sub_1235A0
AND             R0, R0, #0x80000000
CMP             R0, #0
LDRGE           R0, [SP,#8+var_8]
MOVLT           R0, #0
POP             {R3,PC}
