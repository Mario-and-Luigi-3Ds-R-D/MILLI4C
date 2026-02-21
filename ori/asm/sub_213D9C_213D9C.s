PUSH            {R3-R7,LR}
ADD             R4, R2, #0x7C ; '|'
ADD             R6, R2, #0x70 ; 'p'
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
LDR             R7, =off_6CE970
AND             R5, R0, #0xFF
UXTH            R1, R1
LDR             R0, [R7]
BL              sub_52C218
STR             R4, [SP,#0x18+var_18]
LDR             R1, [R7]
MOV             R3, R6
MOV             R2, R5
ADD             R1, R1, #0x100000
ADD             R1, R1, #0x6000
LDR             R1, [R1,#0x3B4]
BL              sub_219D84
MOV             R0, #0
POP             {R3-R7,PC}
