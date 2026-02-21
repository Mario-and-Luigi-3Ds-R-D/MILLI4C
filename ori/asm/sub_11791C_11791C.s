MOV             R3, #0xFF
STRB            R3, [R0,#2]
MOV             R12, #0
STRB            R3, [R0,#3]
STR             R12, [R0,#4]
MOV             R1, #2
STRB            R12, [R0]
STRB            R1, [R0,#1]
BX              LR
