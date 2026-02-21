PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R0, [R2,#8]
LDR             R5, [R2,#0x10]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
CMP             R0, #0
BEQ             loc_2064C4
LDR             R0, [R0,#0x3F0]
CMP             R0, #0
BEQ             loc_2064C4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_2064C4
LDR             R0, [R4,#4]
ADD             R0, R0, R5
STR             R0, [R4,#4]
MOV             R0, #0
POP             {R4-R6,PC}
