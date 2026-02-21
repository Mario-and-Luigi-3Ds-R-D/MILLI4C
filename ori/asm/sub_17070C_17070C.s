PUSH            {LR}
SUB             SP, SP, #0x14
ADD             R12, SP, #0x18+arg_0
VLDM            R12, {S0-S4}
VSTMEA          SP, {S0-S4}
BL              sub_22F210
ADD             SP, SP, #0x14
POP             {PC}
