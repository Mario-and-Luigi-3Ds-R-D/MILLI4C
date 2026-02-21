PUSH            {LR}
SUB             SP, SP, #0xC
MOV             R12, R1
LDR             R1, [SP,#0x10+arg_0]
STR             R3, [SP,#0x10+var_10]
MOV             R3, R2
STR             R1, [SP,#0x10+var_C]
MOV             R1, R0
MOV             R2, R12
ADR             R0, aRom; "rom:"
BL              sub_10D97C
ADD             SP, SP, #0xC
POP             {PC}
