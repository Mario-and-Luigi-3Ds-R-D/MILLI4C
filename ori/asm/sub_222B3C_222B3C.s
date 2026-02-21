LDR             R1, =off_6BB8A4
PUSH            {R4,LR}
STR             R1, [R0],#0x24
BL              sub_14F3EC
POP             {R4,LR}
SUB             R0, R0, #0x24 ; '$'
B               sub_300FD4
