ADD             R2, R2, #8
PUSH            {R4-R6,LR}
LDM             R2, {R0,R2}
CMP             R2, #0
UXTH            R1, R0
LDR             R0, =off_6CE970
MOVNE           R5, #1
MOVEQ           R5, #0
LDR             R0, [R0]
BL              sub_52F368
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x28]
MOV             R0, R4
BLX             R1
CMP             R0, #0
MOV             R0, #0
STRBNE          R5, [R4,#0x3A2]
POP             {R4-R6,PC}
