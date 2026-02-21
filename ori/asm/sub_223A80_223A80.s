LDR             R1, =off_6BB8EC
PUSH            {R4,LR}
STR             R1, [R0],#4
BL              sub_14F3EC
SUB             R0, R0, #4
POP             {R4,PC}
