PUSH            {R4-R8,LR}
MOV             R4, R1
MOV             R7, R0
LDR             R0, [R2,#8]
MOV             R6, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
MOV             R5, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x28]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_20BC80
ADD             R0, R5, #0x2B0
BL              sub_5F19B0
CMP             R0, #0
BEQ             loc_20BC80
MOVS            R1, R4
ADDNE           R1, R4, #4
MOV             R2, R6
MOV             R0, R7
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
MOV             R0, #0
POP             {R4-R8,PC}
