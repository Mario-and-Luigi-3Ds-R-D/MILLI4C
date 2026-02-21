PUSH            {R4,LR}
LDR             R0, [R0,#4]
MOV             R12, R1
MOV             R4, R2
ADD             R0, R0, #0x15000
MOV             R2, R3
LDR             R0, [R0,#0x18]
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1803C4
LDRB            R0, [R0,#6]
CMP             R0, #0xFF
MOVEQ           R0, #0
BEQ             locret_1803D4
MOV             R1, R4
MOV             R0, R12
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
