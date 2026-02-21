LDR             R1, =off_6BBF0C
PUSH            {R4,LR}
STR             R1, [R0],#8
BL              sub_14F3EC
SUB             R0, R0, #8
POP             {R4,PC}
