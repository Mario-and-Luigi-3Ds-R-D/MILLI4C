SUBS            R3, R2, #0x20 ; ' '
BPL             loc_143538
RSB             R3, R2, #0x20 ; ' '
MOV             R0, R0,LSR R2
ORR             R0, R0, R1,LSL R3
MOV             R1, R1,LSR R2
BX              LR
MOV             R0, R1,LSR R3
MOV             R1, #0
BX              LR
