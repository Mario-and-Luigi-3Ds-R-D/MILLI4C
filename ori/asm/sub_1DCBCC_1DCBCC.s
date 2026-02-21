PUSH            {R4,LR}
LDRH            R0, [R1]
MOV             R4, #3
CMP             R0, #0
BEQ             loc_1DCC08
BL              sub_50F080
LDRB            R0, [R0,#2]
CMP             R0, #1
BEQ             loc_1DCC04
CMP             R0, #2
MOVEQ           R4, #2
BEQ             loc_1DCC08
CMP             R0, #3
BNE             loc_1DCC08
MOV             R4, #1
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R4
MOV             R1, #2
LDR             R0, [R0]
BL              sub_52A660
MOV             R0, #1
POP             {R4,PC}
