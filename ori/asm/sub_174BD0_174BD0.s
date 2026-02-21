MOV             R0, R1
PUSH            {LR}
SUB             SP, SP, #0x1C
MOV             R1, R2
ADD             R2, SP, #0x20+arg_0
ADD             LR, SP, #0x20+var_14
VLDM            R2, {S0-S4}
ADD             R12, R0, #0x58 ; 'X'
ADD             R2, R0, #8
VSTM            LR, {S3-S4}
ADD             LR, SP, #0x20+var_C
STM             LR, {R2,R12}
VSTMEA          SP, {S0-S2}
LDR             R2, [R0]
LDR             R12, [R2,#0xC]
ADD             R2, R0, #8
BLX             R12
ADD             SP, SP, #0x1C
POP             {PC}
