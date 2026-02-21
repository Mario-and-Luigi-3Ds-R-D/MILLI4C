PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R5, R1
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1A2888
LDR             R1, =off_6BB54C
STM             R0, {R1,R5}
STR             R0, [R4],#4
STR             R4, [R4,#4]
STR             R4, [R4]
POP             {R4-R6,PC}
