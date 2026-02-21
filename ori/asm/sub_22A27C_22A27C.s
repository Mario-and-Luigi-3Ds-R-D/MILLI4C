LDR             R1, =0xA5F4
MOV             R2, #1
MOV             R3, #0
STRB            R2, [R0]
STRB            R3, [R1,R0]
BX              LR
