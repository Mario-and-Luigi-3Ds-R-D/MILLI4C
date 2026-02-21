MOV             R1, #0xF0
ANDS            R1, R1, R0,LSR#24
BICNE           R0, R0, #0xF0
ORRNE           R0, R0, R1
BX              LR
