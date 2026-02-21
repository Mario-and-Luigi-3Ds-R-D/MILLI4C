MOVS            R3, R0
ORRS            R3, R1
PUSH            {R4,LR}
LSLS            R3, R3, #0x1E
BNE             loc_100540
CMP             R2, #4
BCC             loc_100540
LDM             R0!, {R3}
LDM             R1!, {R4}
SUBS            R2, R2, #4
CMP             R3, R4
BEQ             loc_100506
LSLS            R0, R3, #0x18
LSLS            R1, R4, #0x18
LSRS            R0, R0, #0x18
LSRS            R1, R1, #0x18
SUBS            R0, R0, R1
BNE             locret_10053E
LSLS            R0, R3, #0x10
LSLS            R1, R4, #0x10
LSRS            R0, R0, #0x10
LSRS            R1, R1, #0x10
SUBS            R0, R0, R1
BNE             locret_10053E
LSLS            R0, R3, #8
LSLS            R1, R4, #8
LSRS            R0, R0, #8
LSRS            R1, R1, #8
SUBS            R0, R0, R1
BNE             locret_10053E
LSRS            R0, R3, #0x18
LSRS            R1, R4, #0x18
SUBS            R0, R0, R1
POP             {R4,PC}
CMP             R2, #0
BEQ             loc_10054C
LSLS            R3, R2, #0x1F
BEQ             loc_100550
ADDS            R2, R2, #1
B               loc_10055C
MOVS            R0, #0
POP             {R4,PC}
LDRB            R3, [R0]
LDRB            R4, [R1]
ADDS            R0, R0, #1
ADDS            R1, R1, #1
SUBS            R3, R3, R4
BNE             loc_10056C
LDRB            R3, [R0]
LDRB            R4, [R1]
ADDS            R0, R0, #1
ADDS            R1, R1, #1
SUBS            R3, R3, R4
BNE             loc_10056C
SUBS            R2, R2, #2
BNE             loc_100550
MOVS            R0, R3
POP             {R4,PC}
