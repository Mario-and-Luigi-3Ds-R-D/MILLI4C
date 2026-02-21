ADD             R0, R0, R1,LSL#1
MOV             R3, #0
STRB            R3, [R0,R2]
MOV             R0, #1
BX              LR
