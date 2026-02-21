ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
UXTH            R1, R0
LDR             R0, =off_6CE970
SXTH            R4, R2
LDR             R0, [R0]
BL              sub_528EB0
MOV             R1, R4
BL              sub_14C5AC
MOV             R0, #0
POP             {R4,PC}
