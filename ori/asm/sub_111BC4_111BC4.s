LDR             R1, =0x12974
MOV             R2, #0
STRB            R2, [R1,R0]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0x6D0
LDR             R1, [R0]
ORR             R1, R1, #0x20 ; ' '
STR             R1, [R0]
BX              LR
