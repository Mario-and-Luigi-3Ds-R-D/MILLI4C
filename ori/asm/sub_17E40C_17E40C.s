PUSH            {LR}
SUB             SP, SP, #0xC
MOV             R3, #0
MOV             R12, #3
STR             R2, [SP,#0x10+var_8]
STR             R3, [SP,#0x10+var_C]
STR             R12, [SP,#0x10+var_10]
LDR             R2, [R0]
LDR             R12, [R2,#0x58]
MOV             R2, R3
BLX             R12
ADD             SP, SP, #0xC
POP             {PC}
