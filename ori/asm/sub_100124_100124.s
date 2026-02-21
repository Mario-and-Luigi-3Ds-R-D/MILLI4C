LDR             R1, [R2]
LDR             R2, [R0]
LDR             R0, [R0,#0x20]
LSLS            R3, R2, #0x15
BPL             loc_100132
STRB            R0, [R1]
B               loc_100148
LSLS            R3, R2, #0x17
BPL             loc_10013A
STRH            R0, [R1]
B               loc_100148
LSLS            R3, R2, #0x18
BPL             loc_100144
ASRS            R2, R0, #0x1F
STM             R1!, {R0,R2}
B               loc_100148
LSLS            R2, R2, #0x19
STR             R0, [R1]
MOVS            R0, #1
BX              LR
