ADD             R3, R0, #0x12800
ADD             R3, R3, #0x16C
MOV             R12, #1
ADD             R0, R0, #0x13000
STRB            R12, [R3]
ADD             R0, R0, #0x6D0
STRB            R1, [R3,#1]
STRB            R2, [R3,#2]
LDR             R1, [R0]
ORR             R1, R1, #0x1400
STR             R1, [R0]
BX              LR
