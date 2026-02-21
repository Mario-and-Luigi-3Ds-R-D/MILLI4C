PUSH            {LR}
SUB             SP, SP, #0xC
MOV             R12, R2
LDR             R2, [SP,#0x10+arg_0]
STR             R3, [SP,#0x10+var_10]
MOV             R3, R12
STR             R2, [SP,#0x10+var_C]
MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
BL              sub_1E78B8
ADD             SP, SP, #0xC
POP             {PC}
