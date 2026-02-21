PUSH            {LR}
SUB             SP, SP, #0x14
ADD             R12, SP, #0x18+arg_0
ADD             LR, SP, #0x18+var_10
VLDM            R12, {S0-S2}
MOV             R12, #0
STR             R12, [SP,#0x18+var_14]
VSTM            LR, {S0-S2}
STR             R12, [SP,#0x18+var_18]
LDR             R12, [R0]
LDR             R12, [R12,#0xE0]
BLX             R12
ADD             SP, SP, #0x14
POP             {PC}
