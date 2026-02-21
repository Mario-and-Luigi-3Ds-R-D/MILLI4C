PUSH            {R4,LR}
SUBS            R3, R0, #1
ADDS            R3, R3, #1
LDRB            R4, [R3]
CMP             R4, #0
BNE             loc_1008D6
B               loc_1008EC
LDRB            R4, [R1]
ADDS            R1, R1, #1
STRB            R4, [R3]
ADDS            R3, R3, #1
CMP             R4, #0
BEQ             locret_1008F4
SUBS            R2, R2, #1
BCS             loc_1008E0
MOVS            R1, #0
STRB            R1, [R3]
POP             {R4,PC}
