LDR             R1, =off_6B4050
PUSH            {R4,LR}
STR             R1, [R0],#0x400
BL              sub_2C20A8
SUB             R0, R0, #0x400
BL              sub_14F3EC
POP             {R4,LR}
B               sub_300FD4
