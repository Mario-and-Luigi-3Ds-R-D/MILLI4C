PUSH            {R4,LR}
LDR             R0, [R1,#4]
LDR             R1, [R2,#8]
ADD             R1, R1, R0
LDRH            R0, [R1],#2
AND             R2, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_529204
MOV             R0, #0
POP             {R4,PC}
