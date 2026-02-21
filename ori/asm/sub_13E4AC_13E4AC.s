PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_13E50C
LDR             R0, =0x131A
CMP             R6, #0
LDRH            R0, [R0,R4]
AND             R0, R0, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#5
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xB0]
ADD             R1, R0, #4
STRB            R6, [R0,#0x38]
STRBEQ          R7, [R1,#0x35]
LDR             R1, [R0]
ORR             R1, R1, #0x20000
STR             R1, [R0]
MOV             R0, #1
POP             {R4-R8,PC}
