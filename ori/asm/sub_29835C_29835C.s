PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R5, R1
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x34 ; '4'
BL              sub_10A358
CMP             R0, #0
BEQ             loc_2983C4
LDR             R1, =off_6BC60C
MOV             R2, #0
STR             R2, [R0,#4]
STR             R1, [R0]
STR             R2, [R0,#8]
LDR             R3, =off_6BC338
STR             R5, [R0,#0x10]
STR             R2, [R0,#0x18]
STR             R2, [R0,#0x1C]
STR             R3, [R0,#0x14]
STR             R2, [R0,#0x24]
STR             R2, [R0,#0x28]
STR             R2, [R0,#0x2C]
STRB            R2, [R0,#0x30]
STR             R0, [R4],#4
STR             R4, [R4,#4]
STR             R4, [R4]
POP             {R4-R6,PC}
