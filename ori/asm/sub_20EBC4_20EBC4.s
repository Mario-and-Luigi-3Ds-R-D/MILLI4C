PUSH            {R4-R8,LR}
MOVS            R5, R2
MOV             R4, R1
MOV             R6, R0
MOV             R7, #9
MOVEQ           R4, #0
BEQ             loc_20EC30
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063C0 - 0x106000)]
MOV             R0, #0x1BC
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_20EC20
MOV             R2, R4
MOV             R1, R6
BL              sub_4E1B20
MOV             R4, R0
MOV             R2, R7
MOV             R1, R5
MOV             R0, R4
BL              sub_4E1A5C
MOV             R0, R4
POP             {R4-R8,PC}
