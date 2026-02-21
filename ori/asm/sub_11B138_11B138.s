PUSH            {R0,LR}
SUB             SP, SP, #8
MOV             R3, #0
ADD             R1, SP, #0x10+var_8
MOV             R0, #7
MOV             R2, #4
STR             R3, [SP,#0x10+var_10]
STR             R3, [SP,#0x10+var_C]
BL              sub_12328C
ADD             SP, SP, #0xC
POP             {PC}
