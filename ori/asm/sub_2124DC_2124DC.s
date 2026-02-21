PUSH            {R4-R6,LR}
LDRD            R0, R1, [R2,#8]
LDR             R6, =off_6CE970
UXTH            R4, R0
UXTH            R1, R1
LDR             R0, [R6]
BL              sub_52FACC
MOV             R5, R0
LDR             R0, [R6]
MOV             R1, R4
BL              sub_528FF0
LDRB            R1, [R5,#0x30]
CMP             R1, #1
BEQ             loc_212520
CMP             R1, #2
BNE             loc_212548
B               loc_212538
LDR             R1, [R0]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R5
BLX             R3
B               loc_212548
MOV             R3, #0
MOV             R2, R3
MOV             R1, R5
BL              sub_14EEC0
MOV             R0, #0
POP             {R4-R6,PC}
