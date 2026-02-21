PUSH            {R4,LR}
LDR             R0, [R2,#8]
LDR             R2, =0x119888
CMP             R0, #0
LDR             R0, =off_6CE970
MOVNE           R1, #1
MOVEQ           R1, #0
LDR             R0, [R0]
ADD             R0, R0, R2
BL              sub_337610
MOV             R0, #0
POP             {R4,PC}
