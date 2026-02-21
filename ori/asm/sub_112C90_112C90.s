PUSH            {R4-R6,LR}
LDR             R6, =dword_6D45C8
LDR             R5, [R6]
CMP             R5, #0
BEQ             locret_112CFC
LDR             R1, =dword_70C1F4
MOV             R0, #0xFFFFFFFF
STR             R0, [R1,#(dword_70C1FC - 0x70C1F4)]
LDR             R4, [R5,#8]
CMP             R4, #0
BEQ             loc_112CE8
MOV             R0, R4
BL              sub_13F9CC
LDRD            R0, R1, [R5,#4]
ADD             R4, R4, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R4
BNE             loc_112CBC
MOV             R0, R1
BL              sub_1361A4
LDR             R0, [R5,#0xC]
CMP             R0, #0
BLNE            sub_1361A4
MOV             R0, #0
STR             R0, [R6]
POP             {R4-R6,PC}
