PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R6, =off_6D1648
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]!
CMP             R5, #0
ORREQ           R1, R1, #0x40 ; '@'
BICNE           R1, R1, #0x40 ; '@'
STR             R1, [R0]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
BL              sub_5C6048
MOV             R4, R0
LDR             R0, [R6]
CMP             R5, #0
BEQ             loc_19C49C
LDR             R0, [R0,#0xBC]
ORR             R1, R4, #0x300
POP             {R4-R6,LR}
B               sub_1648BC
NOP
LDR             R0, [R0,#0xBC]
BIC             R1, R4, #0x300
POP             {R4-R6,LR}
B               sub_1648BC
