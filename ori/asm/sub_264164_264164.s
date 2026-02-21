PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R5, R1
MOV             R3, #0x800000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x15F4
BL              sub_10A358
CMP             R0, #0
BEQ             loc_2641A4
ADD             R2, R5, #0x12400
ADD             R2, R2, #0x374
MOV             R1, R5
BL              sub_263A48
STR             R0, [R4],#4
STR             R4, [R4,#4]
STR             R4, [R4]
POP             {R4-R6,PC}
