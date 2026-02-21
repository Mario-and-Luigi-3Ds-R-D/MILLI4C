PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x54]
CMP             R0, #0
BEQ             locret_1C419C
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x54]
POP             {R4,PC}
