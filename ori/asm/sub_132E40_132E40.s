ADD             R0, R0, R1,LSL#1
LDRB            R1, [R0,R2]
CMP             R1, #0
MOVEQ           R1, #1
STRBEQ          R1, [R0,R2]
MOVNE           R0, #0
MOVEQ           R0, R1
BX              LR
