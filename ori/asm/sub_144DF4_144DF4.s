PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
BEQ             loc_144E68
LDR             R5, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R5]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x104
BL              sub_10A358
CMP             R0, #0
BEQ             locret_144E64
MOV             R1, #0
STRB            R1, [R0,#4]
STRB            R1, [R0,#5]
STRH            R1, [R0,#6]
LDR             R1, =off_6BD12C
MOV             R2, R4
STR             R1, [R0],#8
LDR             R1, [R5]
ADD             R1, R1, #0x68 ; 'h'
BL              sub_33D424
SUB             R4, R0, #8
BL              sub_33D334
MOV             R0, R4
POP             {R4-R6,PC}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1486E4
