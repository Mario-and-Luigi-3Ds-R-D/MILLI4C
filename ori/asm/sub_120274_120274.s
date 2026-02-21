SUBS            R3, R2, #0x20 ; ' '
BPL             loc_120290
RSB             R3, R2, #0x20 ; ' '
MOV             R0, R0,LSR R2
ORR             R0, R0, R1,LSL R3
MOV             R1, R1,ASR R2
BX              LR
MOV             R0, R1,ASR R3
MOV             R1, R1,ASR#31
BX              LR
