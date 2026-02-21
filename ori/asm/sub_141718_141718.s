MOV             R1, R0,LSL#1
MOVS            R0, R1,LSL#8
MOVNE           R0, #4
MOVS            R2, R1,LSR#24
ORRNE           R0, R0, #1
MOV             R2, #0xFF000000
BICS            R1, R2, R1
ORREQ           R0, R0, #2
CMP             R0, #1
MOVEQ           R0, #5
BX              LR
