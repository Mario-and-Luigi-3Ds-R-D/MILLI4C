PUSH            {R3-R7,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R6, =off_6CE970
LDR             R1, [R0,#0x18]
LDR             R5, [R6]
MOV             R0, R4
BLX             R1
MOV             R7, #0
MOV             R2, R0
LDR             R1, =0x5D5
MOV             R3, #1
MOV             R0, R5
STR             R7, [SP,#0x18+var_18]
BL              sub_52AEA8
LDR             R0, [R6]
LDR             R12, =0xFFE683CC
LDR             R2, =0x300F9
MOV             R3, #0
ADD             R1, R4, #0x20 ; ' '
SUB             R0, R0, R12
BL              sub_503720
MOV             R0, #2
STRB            R7, [R4,#0x112]
STRB            R0, [R4,#0x414]
POP             {R3-R7,PC}
