PUSH            {R4-R6,LR}
LDRD            R0, R1, [R2,#8]
LDR             R6, =off_6CE970
UXTH            R4, R0
UXTH            R5, R1
LDR             R0, [R6]
BL              sub_52C510
LDR             R0, [R6]
LDR             R2, =byte_19CF34
MOV             R1, #1
STRB            R1, [R0,R2]
MOV             R1, R4
BL              sub_52F508
BL              sub_4FEA50
LDR             R0, [R6]
MOV             R1, R5
BL              sub_52A460
MOV             R0, #0
POP             {R4-R6,PC}
