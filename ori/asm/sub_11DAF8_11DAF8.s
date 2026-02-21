MOV             R3, R2
MOV             R2, R1
MOV             R1, R0
LDR             R0, =dword_7017A8
B               loc_11DB10
DCD dword_7017A8
PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R7, R0
MOV             R6, R2
MOV             R8, R3
BL              sub_13FED4
MOV             R9, R0
BL              sub_13273C
CMP             R5, #0x64 ; 'd'
BEQ             loc_11DB44
CMP             R5, #0x65 ; 'e'
BEQ             loc_11DB50
B               loc_11DB5C
TST             R6, #0x1000000
MOVNE           R8, #1
B               loc_11DB5C
MOV             R5, #0x64 ; 'd'
MOV             R8, #1
ORR             R6, R6, #0x1000000
LDR             R0, [R7,#(dword_7017BC - 0x7017A8)]
LDR             R4, [R7,#(dword_7017B8 - 0x7017A8)]
CMP             R4, R0
BEQ             loc_11DB9C
LDR             R1, [R4]
LDR             R1, [R1,#4]
LDR             R2, [R1,#0x10]
CMP             R2, R5
BNE             loc_11DB94
LDR             R2, [R1,#0x14]
CMP             R2, R6
LDRHEQ          R1, [R1,#0x1C]
CMPEQ           R1, R8
BEQ             loc_11DB9C
ADD             R4, R4, #4
B               loc_11DB64
CMP             R0, R4
BEQ             loc_11DBCC
LDR             R0, [R4]
LDR             R0, [R0,#8]
CMP             R0, #1
BLE             loc_11DBCC
MOV             R1, #0
MOV             R0, R7
BL              sub_1401CC
LDR             R1, [R4]
MOV             R0, #1
STR             R0, [R1,#8]
LDR             R0, [R7,#(dword_7017BC - 0x7017A8)]
CMP             R0, R4
MOVNE           R4, #1
MOVEQ           R4, #0
MOV             R0, R9
BL              sub_1327BC
MOV             R0, R4
POP             {R4-R10,PC}
