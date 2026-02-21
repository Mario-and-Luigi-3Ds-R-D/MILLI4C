PUSH            {R4,LR}
STR             R1, [R0,#4]
LDR             R1, =off_6BBF0C
STR             R1, [R0],#8
BL              sub_14F198
SUB             R0, R0, #8
POP             {R4,PC}
