PUSH            {R4,LR}
MOV             R4, R0
BL              sub_13273C
LDRB            R0, [R4,#0x76]
CMP             R0, #2
BEQ             loc_1327A8
MOV             R1, #1
MOV             R0, R4
STRB            R1, [R4,#0x76]
BL              sub_1327BC
ADD             R0, R4, #0x64 ; 'd'
POP             {R4,LR}
B               sub_120E7C
MOV             R1, #0
MOV             R0, R4
STRB            R1, [R4,#0x76]
POP             {R4,LR}
NOP
