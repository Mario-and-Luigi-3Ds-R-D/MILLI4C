PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R7, R2
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_140FAC
ADD             R0, R4, #0x1300
MOV             R2, #0x20 ; ' '
LDRH            R1, [R0,#0x1A]
LDRH            R0, [R0,#0x1E]
AND             R1, R1, #1
ADD             R1, R1, R1,LSL#1
ADD             R0, R0, R0,LSL#1
ADD             R1, R4, R1,LSL#5
ADD             R1, R1, R5,LSL#2
ADD             R0, R4, R0,LSL#5
ADD             R1, R1, #0x1000
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x1000
LDR             R6, [R1,#0xB0]
LDR             R0, [R0,#0x230]
MOV             R1, R7
BL              sub_2FF3D8
LDR             R0, [R6]
ORR             R0, R0, #4
STR             R0, [R6]
MOV             R0, #1
POP             {R4-R8,PC}
