LDR             R3, =0x1428F
LDRB            R3, [R3,R0]
CMP             R3, #0
BXNE            LR
ADD             R0, R0, #0x14400
PUSH            {LR}
ADD             R0, R0, #0x94
SUB             SP, SP, #0xC
VLDR            S1, [R0,#0xC]
CMP             R1, #0
VLDM            R2, {S2-S3}
VSTR            S1, [SP,#0x10+var_8]
VSTMEA          SP, {S2-S3}
BEQ             loc_160E28
MOV             R2, SP
VLDR            S1, =0.0
MOV             R1, #0
VSTR            S1, [SP,#0x10+var_8]
BL              sub_5A25D0
ADD             SP, SP, #0xC
POP             {PC}
MOV             R2, SP
MOV             R1, #0
BL              sub_5A2A74
ADD             SP, SP, #0xC
POP             {PC}
