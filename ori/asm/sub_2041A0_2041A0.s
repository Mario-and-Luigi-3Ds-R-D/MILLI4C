PUSH            {R4,LR}
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x28]
MOV             R0, R4
BLX             R1
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_4E5954
MOV             R0, #0
POP             {R4,PC}
