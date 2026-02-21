LDRD            R2, R3, [R1]
LDR             R1, [R1,#8]
STR             R1, [R0,#0x210]
ADD             R0, R0, #0x208
STM             R0, {R2,R3}
BX              LR
