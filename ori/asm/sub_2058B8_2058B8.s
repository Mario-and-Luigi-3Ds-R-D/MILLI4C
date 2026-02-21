PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R8, R0
LDR             R1, [R2,#8]
ADD             R0, R2, #0xC
MOV             R4, R2
LDM             R0, {R0,R2}
UXTH            R1, R1
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
CMP             R2, #0
MOVNE           R7, #1
MOVEQ           R7, #0
LDR             R0, [R0]
BL              sub_52F480
MOV             R2, R7
MOV             R1, R6
ADD             R0, R0, #0x40 ; '@'
BL              sub_5C71F0
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
CMP             R0, #0
LDRH            R0, [R4,#2]
VLDRNE          S0, =1.0
VLDREQ          S0, =0.0
MOV             R1, R8
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
