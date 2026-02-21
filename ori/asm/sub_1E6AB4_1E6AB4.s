PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R5, R0
BL              sub_22D4E4
LDR             R0, [R5]
LDR             R1, [R0,#0x1C8]
MOV             R0, R5
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x2F8]
STR             R0, [R4,#0x2FC]
STR             R0, [R4,#0x300]
LDR             R1, [R4,#0x334]
STR             R1, [R4,#0x340]
LDR             R1, [R4,#0x338]
STR             R1, [R4,#0x344]
LDR             R1, [R4,#0x33C]
STR             R1, [R4,#0x348]!
STR             R0, [R4,#4]
POP             {R4-R6,PC}
