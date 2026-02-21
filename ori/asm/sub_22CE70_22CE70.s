PUSH            {R3,LR}
VLDR            S0, [SP,#8+arg_0]
VSTR            S0, [SP,#8+var_8]
BL              sub_580DD4
LDR             R2, =off_6AEADC
STR             R2, [R0],#0xE0
ADD             R1, R2, #0x340
STR             R1, [R0],#0x678
BL              sub_2D1FEC
LDR             R12, =off_6B2E60
SUB             R0, R0, #0x400
SUB             R0, R0, #0x358
ADD             R2, R12, #0x35C
ADD             R3, R12, #0x374
STR             R2, [R0,#0xE0]
STR             R3, [R0,#0x758]
STR             R12, [R0]
POP             {R3,PC}
