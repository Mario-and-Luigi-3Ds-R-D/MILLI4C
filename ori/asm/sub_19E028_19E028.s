CMP             R0, #0
MOVEQ           R0, #3
CMPNE           R0, #1
BEQ             locret_19E050
CMP             R0, #2
MOVEQ           R0, #0
BEQ             locret_19E050
CMP             R0, #3
MOVNE           R0, #4
MOVEQ           R0, #2
BX              LR
