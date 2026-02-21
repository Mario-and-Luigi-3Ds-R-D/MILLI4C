PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x314
MOV             R5, R1
MOV             R6, R0
BL              sub_128004
ADD             R0, R4, R5,LSL#3
MOV             R1, R6
POP             {R4-R6,LR}
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x364
NOP
PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R4, [R0,#4]
CMP             R4, #0
BEQ             locret_1E4F30
CMP             R4, #0
SUBNE           R0, R4, #0x104
MOVEQ           R0, #0
LDRB            R1, [R0,#0x110]
LDR             R4, [R0,#0x10C]
CMP             R1, #0
BEQ             loc_1E4F28
LDR             R1, [R0]
LDR             R2, [R1,#0x10]
MOV             R1, R5
BLX             R2
CMP             R4, #0
BNE             loc_1E4EFC
POP             {R4-R6,PC}
