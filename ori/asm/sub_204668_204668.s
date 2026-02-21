ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
AND             R4, R2, #0xFF
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528EB0
CMP             R4, #0
MOVNE           R1, #1
MOVEQ           R1, #0
BL              sub_14C9A4
MOV             R0, #0
POP             {R4,PC}
