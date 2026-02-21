PUSH            {R4-R6,LR}
LDR             R4, =off_6CE970
LDR             R0, [R2,#8]
LDR             R5, =0x120F7C
LDR             R1, [R4]
CMP             R0, #0
ADD             R0, R1, R5
BEQ             loc_208904
ADD             R1, R1, #0xA8
BL              sub_4FE814
LDR             R0, [R4]
ADD             R0, R0, R5
BL              sub_4FE79C
B               loc_20890C
NOP
BL              sub_4FE898
MOV             R0, #0
POP             {R4-R6,PC}
