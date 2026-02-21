PUSH            {R3,LR}
LDR             R12, [SP,#8+arg_0]
STR             R12, [SP,#8+var_8]
BL              sub_580DD4
ADD             R0, R0, #0x400
ADD             R0, R0, #0x358
BL              sub_2D1FEC
LDR             R3, =off_6AEE34
SUB             R0, R0, #0x400
SUB             R0, R0, #0x358
ADD             R2, R3, #0x360
STR             R2, [R0,#0xE0]
ADD             R12, R3, #0x378
STR             R3, [R0]
STR             R12, [R0,#0x758]
POP             {R3,PC}
