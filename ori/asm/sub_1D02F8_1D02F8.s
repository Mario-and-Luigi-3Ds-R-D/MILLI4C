ADD             R0, R0, #0x1A0000
LDRB            R1, [R0,#0x7C]
CMP             R1, #0
BNE             locret_1D0318
LDR             R2, =off_654054
ADD             R0, R0, #0x5C ; '\'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
BX              LR
