PUSH            {R4,LR}
SUB             SP, SP, #0x20
MOV             R12, R0
ADD             R0, SP, #0x28+arg_0
ADD             LR, SP, #0x28+var_1C
VLDM            R0, {S0-S3}
ADD             R0, R12, #0x400
ADD             R0, R0, #0x358
ADD             R12, R12, #0x400
ADD             R12, R12, #0x364
VSTM            LR, {S2-S3}
ADD             LR, SP, #0x28+var_14
ADD             R4, R0, #4
STR             R3, [SP,#0x28+var_28]
STM             LR, {R4,R12}
ADD             R4, SP, #0x28+var_24
VSTM            R4, {S0-S1}
LDR             R3, [R0]
LDR             R12, [R3,#0xC]
MOV             R3, R2
ADD             R2, R0, #4
BLX             R12
ADD             SP, SP, #0x20 ; ' '
POP             {R4,PC}
