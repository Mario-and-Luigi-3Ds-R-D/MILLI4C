PUSH            {R4,LR}
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
ADD             R0, R0, #0x34 ; '4'
MOV             R2, #1
MOV             R1, #0
BL              sub_1CCBB4
MOV             R0, #0
POP             {R4,PC}
