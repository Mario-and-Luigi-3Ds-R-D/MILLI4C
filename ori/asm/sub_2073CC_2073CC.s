PUSH            {R4-R8,LR}
ADD             R1, R2, #8
LDR             R0, [R2,#0x10]
LDR             R2, [R2,#0x14]
LDM             R1, {R1,R3}
UXTH            R5, R0
LDR             R0, =off_6CE970
CMP             R2, #0
UXTH            R1, R1
AND             R4, R3, #0xFF
LDR             R0, [R0]
MOVNE           R6, #1
MOVEQ           R6, #0
BL              sub_52F368
MOV             R7, R0
BL              sub_5EB408
CMP             R0, #0
BEQ             loc_207428
MOV             R3, R6
MOV             R2, R5
MOV             R1, R4
MOV             R0, R7
BL              sub_4E2F60
MOV             R0, #0
POP             {R4-R8,PC}
