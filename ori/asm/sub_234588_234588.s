PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x6D00
BL              sub_194954
MOV             R0, R4
BL              sub_18BE30
ADD             R0, R4, #0x17000
POP             {R4,LR}
ADD             R0, R0, #0xB8
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_234638
ADD             R0, R4, #4
BL              sub_4BC390
ADD             R0, R4, #4
BL              sub_4BE808
LDR             R5, [R4,#8]
LDR             R0, [R5]
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R5
BLX             R2
LDR             R5, [R4,#0xC]
CMP             R5, #0
BEQ             locret_234638
LDR             R0, [R5]
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R5
BLX             R2
MOV             R0, #0
STR             R0, [R4,#0xC]
POP             {R4-R6,PC}
