PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #9
LDR             R0, [R5]
BEQ             loc_22107C
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #0xB
BNE             locret_2210B4
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x338]
TST             R0, #1
BEQ             locret_2210B4
LDR             R0, [R4,#0x28]
MOV             R1, #0
ORR             R0, R0, #1
STR             R0, [R4,#0x28]
LDR             R0, [R4,#4]
BL              sub_508930
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R2, #0
MOV             R1, #1
B               sub_220974
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x3D0]
TST             R0, #1
BEQ             locret_2210B4
LDR             R0, [R4,#0x28]
MOV             R1, #0
ORR             R0, R0, #1
STR             R0, [R4,#0x28]
LDR             R0, [R4,#4]
POP             {R4-R6,LR}
B               sub_5088B4
POP             {R4-R6,PC}
