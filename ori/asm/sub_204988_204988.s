PUSH            {R4,LR}
LDR             R0, [R2,#8]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
MOV             R0, #0
POP             {R4,PC}
