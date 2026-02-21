PUSH            {LR}
SUB             SP, SP, #0xC
ADD             R12, SP, #0x10+arg_0
VLDM            R12, {S0-S1}
MOV             R12, #0
VSTMEA          SP, {S0-S1}
STR             R12, [SP,#0x10+var_8]
LDR             R0, [R0,#0x3B0]
BL              sub_4FDD50
ADD             SP, SP, #0xC
POP             {PC}
