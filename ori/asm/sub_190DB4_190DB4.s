ADD             R2, R0, #0x14000
LDRB            R3, [R2,#0x28F]
CMP             R3, #2
LDRBEQ          R2, [R2,#0x290]
CMPEQ           R2, #0xFF
BNE             loc_190DE0
CMP             R1, #0xFF
BEQ             loc_190DE0
LDR             R2, =0x14658
MOV             R3, #1
STRB            R3, [R2,R0]
NOP
B               sub_2B2154
