PUSH            {R4-R6,LR}
LDR             R1, [R2,#8]
ADD             R2, R2, #0xC
LDM             R2, {R0,R5}
UXTH            R1, R1
UXTH            R4, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528EB0
MOV             R2, R5
MOV             R1, R4
BL              sub_14C92C
MOV             R0, #0
POP             {R4-R6,PC}
