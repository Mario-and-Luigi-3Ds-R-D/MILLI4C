LDR             R1, =off_6BC20C
PUSH            {R4,LR}
STR             R1, [R0],#0x14
NOP
SUB             R0, R0, #0x14
POP             {R4,PC}
