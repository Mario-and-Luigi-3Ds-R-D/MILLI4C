PUSH            {R4-R8,LR}
MOV             R12, R0
LDR             R4, =byte_6D4A28
LDR             R0, =0xC8A0A7F8
LDR             R6, [R4,#(dword_6D4A30 - 0x6D4A28)]
CMP             R6, #0
BEQ             locret_1214B4
MOV             R3, R4
ADD             R7, R1, R2
MOV             R5, #1
LDR             R3, [R3,#(dword_6D4A34 - 0x6D4A28)]
MOV             R5, R5,LSL R7
CMP             R12, #0
AND             R3, R3, R5
BEQ             loc_12148C
CMP             R3, #0
BNE             locret_1214B4
MOV             R3, R2
MOV             R2, R1
MOV             R1, R12
MOV             R0, R6
BL              sub_1286BC
LDR             R1, [R4,#(dword_6D4A34 - 0x6D4A28)]
ORR             R1, R1, R5
B               loc_1214B0
CMP             R3, #0
BEQ             locret_1214B4
MOV             R3, R2
MOV             R2, R1
MOV             R1, R12
MOV             R0, R6
BL              sub_1286BC
LDR             R1, [R4,#(dword_6D4A34 - 0x6D4A28)]
BIC             R1, R1, R5
STR             R1, [R4,#(dword_6D4A34 - 0x6D4A28)]
POP             {R4-R8,PC}
