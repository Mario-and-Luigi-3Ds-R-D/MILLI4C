MOVS            R12, R0,LSL#1
TEQEQ           R1, #0
MOV             R0, R12,LSR#20
MOV             R3, R12,LSL#10
MOV             R2, R1,LSL#11
ADDNE           R0, R0, #0x7800
ORR             R1, R3, R1,LSR#21
MOV             R0, R0,RRX
ORRNE           R1, R1, #0x80000000
MOVS            R12, R12,ASR#21
BEQ             loc_13269C
CMN             R12, #1
ORREQ           R0, R0, #0x40000000
BX              LR
