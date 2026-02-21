PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_1292E0
LDR             R0, =0x131E
CMP             R4, #0x8000
MOVHI           R4, #0x8000
LDRH            R0, [R0,R5]
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA0]
STRH            R4, [R0,#0x22]
LDR             R1, [R0]
ORR             R1, R1, #0x80000000
STR             R1, [R0]
MOV             R0, #1
POP             {R4-R6,PC}
