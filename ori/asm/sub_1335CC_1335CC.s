PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_13361C
CMP             R4, #0
CMPNE           R4, #1
MOVNE           R0, #0
BNE             locret_13361C
LDR             R0, =0x131E
LDRH            R0, [R0,R5]
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA0]
STRH            R4, [R0,#0x1E]
LDR             R1, [R0]
ORR             R1, R1, #0x40000000
STR             R1, [R0]
MOV             R0, #1
POP             {R4-R6,PC}
