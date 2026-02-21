MOV             R1, #0
PUSH            {LR}
SUB             SP, SP, #0xC
MOV             R0, #4
MOV             R3, R1
MOV             R2, R1
STR             R1, [SP,#0x10+var_10]
STR             R1, [SP,#0x10+var_C]
BL              sub_12328C
ADD             SP, SP, #0xC
POP             {PC}
