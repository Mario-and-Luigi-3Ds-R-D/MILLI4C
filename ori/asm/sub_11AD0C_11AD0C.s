PUSH            {LR}
SUB             SP, SP, #0x14
MOV             R3, #0
STR             R0, [SP,#0x18+var_10]
STRB            R1, [SP,#0x18+var_C]
ADD             R1, SP, #0x18+var_10
MOV             R0, #5
MOV             R2, #8
STR             R3, [SP,#0x18+var_18]
STR             R3, [SP,#0x18+var_14]
BL              sub_12328C
ADD             SP, SP, #0x14
POP             {PC}
