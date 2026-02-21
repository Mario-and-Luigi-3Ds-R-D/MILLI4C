LDM             R1, {R2,R3,R12}
STR             R2, [R0,#0x108]
ADD             R2, R0, #0x10C
STM             R2, {R3,R12}
LDRD            R2, R3, [R1]
LDR             R1, [R1,#8]
STR             R1, [R0,#0x120]
ADD             R0, R0, #0x118
STM             R0, {R2,R3}
BX              LR
