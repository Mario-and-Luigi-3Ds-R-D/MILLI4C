PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_1418EC
LDR             R0, =0x131A
LDRH            R0, [R0,R4]
AND             R0, R0, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#5
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x1000
LDR             R1, [R0,#0xB0]
MOV             R0, #1
LDRH            R2, [R1,#0xA0]
BIC             R2, R2, #0xFF
STRH            R2, [R1,#0xA0]
LDR             R2, [R1]
ORR             R2, R2, #0x10000
STR             R2, [R1]
POP             {R4-R6,PC}
