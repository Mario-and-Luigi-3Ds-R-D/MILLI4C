LDR             R0, =off_6CE970
PUSH            {R4,LR}
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x1C
BL              sub_10A358
CMP             R0, #0
BEQ             locret_147ACC
LDR             R1, =off_6BB354
MOV             R4, R0
STR             R1, [R0],#4
MOV             R1, #0
STR             R1, [R0],#4
STR             R0, [R0,#4]
STR             R0, [R0]
ADD             R0, R4, #0x14
STR             R1, [R4,#0x10]
STR             R0, [R4,#0x18]
STR             R0, [R4,#0x14]
MOV             R0, R4
BL              sub_14A09C
MOV             R0, R4
POP             {R4,PC}
