PUSH            {R4-R6,LR}
ADD             R4, R0, #0x8800
ADD             R4, R4, #0x98
MOV             R5, R0
LDRB            R0, [R4,#0xFD]
CMP             R0, #1
CMPNE           R0, #2
CMPNE           R0, #4
BNE             locret_1DE474
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_5EE520
CMP             R0, #7
BNE             loc_1DE458
LDRB            R0, [R4,#0xFD]
CMP             R0, #1
CMPNE           R0, #2
BNE             loc_1DE458
ADD             R0, R5, #0x10C00
ADD             R0, R0, #0x254
BL              sub_2C6680
CMP             R0, #0
BEQ             locret_1DE474
ADD             R0, R4, #0xDF0
BL              sub_29F9A4
MOV             R1, #0xFF
STRB            R1, [R0,#5]
LDR             R2, =off_656BE4
MOV             R0, #1
STRB            R0, [R4,#0xFD]
ADD             R0, R5, #0x20800
LDM             R2, {R1,R2}
ADD             R0, R0, #0x2BC
STM             R0, {R1,R2}
POP             {R4-R6,PC}
