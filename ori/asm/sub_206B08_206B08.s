ADD             R0, R2, #0xC
PUSH            {R4-R6,LR}
LDM             R0, {R0,R3}
LDR             R1, [R2,#8]
AND             R6, R0, #0xFF
LDR             R0, [R2,#0x14]
CMP             R3, #0
MOVNE           R5, #1
MOVEQ           R5, #0
CMP             R0, #0
LDR             R0, =off_6CE970
UXTH            R1, R1
MOVNE           R4, #1
MOVEQ           R4, #0
LDR             R0, [R0]
BL              sub_52F480
CMP             R4, #0
BEQ             loc_206B64
MOV             R2, R5
MOV             R1, R6
ADD             R0, R0, #0x40 ; '@'
BL              sub_1CE558
B               loc_206B78
MOV             R3, #0
MOV             R2, R5
MOV             R1, R6
ADD             R0, R0, #0x40 ; '@'
BL              sub_1CE424
MOV             R0, #0
POP             {R4-R6,PC}
