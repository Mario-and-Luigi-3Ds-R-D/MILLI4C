ADD             R2, R2, #8
PUSH            {R4-R6,LR}
LDM             R2, {R0,R2}
UXTH            R1, R0
LDR             R0, =off_6CE970
UXTH            R5, R2
LDR             R0, [R0]
BL              sub_528EB0
CMP             R5, #0
MOV             R6, R0
MOV             R4, #0
BLS             loc_20A1C0
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
ADD             R0, R4, #1
UXTH            R4, R0
CMP             R5, R4
BHI             loc_20A1A0
MOV             R0, #0
POP             {R4-R6,PC}
