PUSH            {LR}
SUB             SP, SP, #0x14
ADD             R12, SP, #0x18+arg_0
VLDM            R12, {S0-S3}
ADD             R12, SP, #0x18+var_14
VSTM            R12, {S0-S3}
STR             R3, [SP,#0x18+var_18]
MOV             R3, R2
MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
BL              sub_1E7900
ADD             SP, SP, #0x14
POP             {PC}
