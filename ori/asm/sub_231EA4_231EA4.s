PUSH            {R3,LR}
LDR             R12, [SP,#8+arg_0]
STR             R12, [SP,#8+var_8]
BL              sub_175FB4
ADD             R0, R0, #0x770
BL              sub_2D1FEC
LDR             R3, =off_6B348C
SUB             R0, R0, #0x770
ADD             R2, R3, #0x374
STR             R2, [R0,#0xE0]
ADD             R12, R3, #0x38C
STR             R3, [R0]
STR             R12, [R0,#0x770]
POP             {R3,PC}
