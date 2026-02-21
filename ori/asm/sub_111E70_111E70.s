ADD             R2, R0, #0x12800
ADD             R2, R2, #0x118
CMP             R1, #0
MOV             R3, #0
PUSH            {R4}
STRBEQ          R3, [R2]
BEQ             loc_111F14
CMP             R1, #1
MOV             R12, #1
MOV             R4, #6
BEQ             loc_111EB0
CMP             R1, #2
BEQ             loc_111ED4
CMP             R1, #3
BNE             loc_111F14
B               loc_111EF4
STRB            R12, [R2]
STRB            R3, [R2,#2]
STRB            R3, [R2,#1]
STRB            R4, [R2,#4]
MOV             R1, #7
STRB            R4, [R2,#3]
STRB            R1, [R2,#6]
STRB            R1, [R2,#5]
B               loc_111F14
STRB            R12, [R2]
STRB            R3, [R2,#2]
STRB            R3, [R2,#1]
STRB            R4, [R2,#4]
STRB            R4, [R2,#3]
STRB            R12, [R2,#6]
STRB            R12, [R2,#5]
B               loc_111F14
MOV             R1, #2
STRB            R12, [R2]
STRB            R1, [R2,#1]
STRB            R3, [R2,#2]
STRB            R4, [R2,#3]
STRB            R12, [R2,#5]
STRB            R3, [R2,#6]
STRB            R3, [R2,#4]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0x6D0
LDR             R1, [R0]
ORR             R1, R1, #0x1040
STR             R1, [R0]
POP             {R4}
BX              LR
