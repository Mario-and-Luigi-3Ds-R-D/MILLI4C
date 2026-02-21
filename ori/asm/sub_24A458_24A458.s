LDR             R1, =off_6BBA50
PUSH            {R4,LR}
STR             R1, [R0],#0x20
BL              sub_14F3EC
POP             {R4,LR}
SUB             R0, R0, #0x20 ; ' '
B               sub_300FD4
