PUSH            {R3,LR}
LDR             R12, [SP,#8+arg_0]
STR             R12, [SP,#8+var_8]
BL              sub_580DD4
LDR             R1, =off_6AEADC
ADD             R2, R1, #0x340
STR             R1, [R0]
STR             R2, [R0,#0xE0]
POP             {R3,PC}
