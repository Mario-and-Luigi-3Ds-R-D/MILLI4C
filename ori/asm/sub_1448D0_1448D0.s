LDR             R0, =off_6CE970
PUSH            {R4,LR}
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
BEQ             locret_144914
MOV             R2, #1
MOV             R1, #0
STRB            R2, [R0,#4]
STRB            R1, [R0,#5]
STRH            R1, [R0,#6]
LDR             R1, =off_6BFDBC
STR             R1, [R0]
POP             {R4,PC}
