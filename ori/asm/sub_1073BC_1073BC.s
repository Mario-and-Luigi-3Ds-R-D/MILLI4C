PUSH            {R3-R5,LR}
LDR             R4, =dword_6D4B2C
LDR             R0, [R4]
CMP             R0, #0
BNE             locret_1073F0
MOV             R0, #0
STR             R0, [SP,#0x10+var_10]
MOV             R0, SP
BL              sub_10CA44
AND             R0, R0, #0x80000000
CMP             R0, #0
LDRGE           R0, [SP,#0x10+var_10]
STRGE           R0, [R4]
POP             {R3-R5,PC}
