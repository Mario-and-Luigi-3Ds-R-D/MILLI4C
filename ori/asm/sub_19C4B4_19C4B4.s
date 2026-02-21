PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              loc_19AFEC
LDR             R0, =off_6D1648
LDR             R1, [R4,#0x1B4]
CMP             R5, #0
BEQ             loc_19C4FC
BIC             R1, R1, #0x1000000
STR             R1, [R4,#0x1B4]
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x648]
ORR             R1, R1, #0x40 ; '@'
STR             R1, [R0,#0x648]
POP             {R4-R6,PC}
ORR             R1, R1, #0x1000000
STR             R1, [R4,#0x1B4]
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x648]
BIC             R1, R1, #0x40 ; '@'
B               loc_19C4F4
