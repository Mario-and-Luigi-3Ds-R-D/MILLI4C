ADD             R2, R0, #8
ADD             R1, R0, #4
NOP
PUSH            {R4}
LDR             R3, [R1]
MOV             R12, #0xC
BICS            R4, R12, R3
BEQ             loc_11BA7C
TST             R3, #4
BEQ             loc_11B9EC
LDR             R4, [R0]
TST             R4, #8
BEQ             loc_11BA7C
TST             R3, #8
BEQ             loc_11BA00
LDR             R4, [R0]
TST             R4, #4
BEQ             loc_11BA7C
BIC             R3, R3, #8
STR             R3, [R1]
LDR             R3, [R2]
BICS            R12, R12, R3
BEQ             loc_11BA84
TST             R3, #4
BEQ             loc_11BA28
LDR             R12, [R0]
TST             R12, #8
BEQ             loc_11BA84
TST             R3, #8
BEQ             loc_11BA3C
LDR             R12, [R0]
TST             R12, #4
BEQ             loc_11BA84
BIC             R3, R3, #8
STR             R3, [R2]
LDR             R3, [R0]
TST             R3, #4
BEQ             loc_11BA5C
BIC             R3, R3, #4
ORR             R3, R3, #8
STR             R3, [R0]
LDR             R0, [R1]
BIC             R0, R0, #4
STR             R0, [R1]
LDR             R0, [R2]
BIC             R0, R0, #4
STR             R0, [R2]
POP             {R4}
BX              LR
ORR             R3, R3, #8
B               loc_11BA04
ORR             R3, R3, #8
B               loc_11BA40
