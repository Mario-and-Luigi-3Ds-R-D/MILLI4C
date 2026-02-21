PUSH            {LR}
SUB             SP, SP, #0x14
ADD             R12, SP, #0x18+arg_0
VLDM            R12, {S4-S5}
MOV             R12, #0
STR             R12, [SP,#0x18+var_18]
ADD             R12, SP, #0x18+var_10
STR             R3, [SP,#0x18+var_14]
VSTM            R12, {S4-S5}
LDR             R3, [R0]
LDR             R12, [R3,#0xD0]
MOV             R3, #0
BLX             R12
ADD             SP, SP, #0x14
POP             {PC}
