PUSH            {LR}
SUB             SP, SP, #0x1C
ADD             R12, SP, #0x20+arg_0
VLDM            R12, {S0-S6}
VSTMEA          SP, {S0-S6}
BL              sub_18D90C
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
ORR             R1, R1, #0x80
STR             R1, [R0,#0x14]
ADD             SP, SP, #0x1C
POP             {PC}
