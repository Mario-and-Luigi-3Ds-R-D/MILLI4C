LDR             R1, =off_6BBB14
PUSH            {R4,LR}
STR             R1, [R0],#0x20
BL              sub_14F3EC
SUB             R0, R0, #0x20 ; ' '
POP             {R4,PC}
