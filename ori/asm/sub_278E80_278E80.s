LDR             R1, =off_6BC1DC
PUSH            {R4,LR}
STR             R1, [R0],#0x24
BL              sub_14F3EC
SUB             R0, R0, #0x24 ; '$'
POP             {R4,PC}
