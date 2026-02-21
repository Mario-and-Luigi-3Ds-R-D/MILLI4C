PUSH            {LR}
SUB             SP, SP, #0xC
MOV             R3, #0
STR             R3, [SP,#0x10+var_10]
STR             R3, [SP,#0x10+var_C]
STR             R3, [SP,#0x10+var_8]
MOV             R3, SP
BL              sub_10D624
ADD             SP, SP, #0xC
POP             {PC}
