PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R0, #0x400
LDR             R0, [R0,#0x7FC]
MOV             R6, R1
ADD             R5, R5, #0x3FC
LDR             R2, [R0,#0x1C]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
CMP             R6, #0
BNE             loc_194498
SUB             R0, R0, #4
CMP             R0, #2
BCS             locret_1944B0
LDR             R0, [R4,#0x7FC]
MOV             R1, #6
BL              sub_593084
LDR             R0, [R5]
MOV             R1, #1
STRH            R1, [R0,#0x16]
POP             {R4-R6,PC}
