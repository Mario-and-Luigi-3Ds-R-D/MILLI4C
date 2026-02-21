PUSH            {R4,R5}
LDR             R12, [R0,#0xA4]
LDRH            R4, [R0,#0xB8]
LDR             R12, [R12,#4]
ADD             R1, R1, R4
LDRB            R12, [R12]
CMP             R1, R12
BGE             loc_29ADD0
POP             {R4,R5}
B               sub_1949CC
POP             {R4,R5}
BX              LR
