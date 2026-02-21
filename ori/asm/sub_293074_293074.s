LDR             R1, =off_6BC54C
PUSH            {R4,LR}
STR             R1, [R0],#0xC
BL              sub_14F3EC
POP             {R4,LR}
SUB             R0, R0, #0xC
B               sub_300FD4
