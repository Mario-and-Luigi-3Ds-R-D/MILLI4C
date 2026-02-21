NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =byte_6D4A60
CMP             R1, #7
MOV             R5, R1
LDR             R6, [R0,#(dword_6D4A7C - 0x6D4A60)]
MOV             R0, #0
BCS             locret_11A01C
MOV             R0, R6
BL              sub_13273C
ADD             R1, R6, R5,LSL#2
MOV             R0, R6
LDR             R5, [R1,#0x10]
STR             R4, [R1,#0x10]
BL              sub_1327BC
MOV             R0, R5
POP             {R4-R6,PC}
