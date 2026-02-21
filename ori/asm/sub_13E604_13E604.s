PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_13E65C
LDR             R0, =0x131A
LDRH            R0, [R0,R4]
AND             R0, R0, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#5
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xB0]
STRH            R6, [R0,#0x3C]
STRH            R7, [R0,#0x3E]
LDR             R1, [R0]
ORR             R1, R1, #0x800000
STR             R1, [R0]
MOV             R0, #1
POP             {R4-R8,PC}
