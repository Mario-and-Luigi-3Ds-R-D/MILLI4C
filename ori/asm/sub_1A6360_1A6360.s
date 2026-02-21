PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R5, R1
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x14
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1A63A8
MOV             R1, #0
STR             R1, [R0,#4]
STR             R1, [R0,#8]
LDR             R1, =off_6BB660
STR             R1, [R0]
STR             R5, [R0,#0x10]
STR             R0, [R4],#4
STR             R4, [R4,#4]
STR             R4, [R4]
POP             {R4-R6,PC}
