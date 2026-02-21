PUSH            {R4-R6,LR}
MOV             R4, R2
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
MOV             R5, R0
LDRD            R0, R1, [R4,#0xC]
AND             R4, R0, #0xFF
LDR             R0, [R5]
CMP             R1, #0
MOVNE           R6, #1
MOVEQ           R6, #0
LDR             R1, [R0,#0x28]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_204A54
LDR             R0, =unk_642F28
MOV             R3, R6
ADD             R0, R0, R4,LSL#1
LDRB            R2, [R0,#1]
LDRB            R1, [R0]
ADD             R0, R5, #0x2B0
BL              sub_1DA148
MOV             R0, #0
POP             {R4-R6,PC}
