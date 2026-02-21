MOVS            R2, R0
MOV             R0, R1
CMPNE           R0, #0
LDREQ           R0, =0xE0E046BC
BEQ             locret_120980
LDR             R1, [R0]
LDR             R3, [R1,#8]
MOV             R1, R2
BX              R3
BX              LR
