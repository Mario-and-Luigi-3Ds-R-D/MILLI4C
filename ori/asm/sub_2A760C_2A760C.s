LDR             R1, =off_6B4050
PUSH            {R4,LR}
STR             R1, [R0],#0x400
BL              sub_2C20A8
POP             {R4,LR}
SUB             R0, R0, #0x400
B               sub_14F3EC
