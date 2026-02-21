LDR             R1, =off_6BC5A8
PUSH            {R4,LR}
STR             R1, [R0],#0xC
BL              sub_14F3EC
SUB             R0, R0, #0xC
POP             {R4,PC}
