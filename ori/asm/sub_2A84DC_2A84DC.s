PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R4, R0
ADD             R0, R0, R5,LSL#4
ADD             R3, R0, #0xC
ADD             R2, R0, #8
ADD             R1, R0, #4
BL              sub_612818
LDR             R0, [R4,#0x88]
BL              sub_10AEA0
MOV             R0, #0
STR             R0, [R4,#0x88]
LDR             R0, [R4,#0x80]
MOV             R1, #1
ORR             R0, R0, R1,LSL R5
STR             R0, [R4,#0x80]
POP             {R4-R6,PC}
