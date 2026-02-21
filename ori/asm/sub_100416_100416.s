PUSH            {R4,R5}
LDR             R3, [R0]
MOVS            R4, #0x20 ; ' '
LDR             R2, [R2]
ORRS            R3, R4
STR             R3, [R0]
MOVS            R3, #8
STR             R3, [R0,#0x1C]
POP             {R4,R5}
MOVS            R3, #0
B               sub_100398
