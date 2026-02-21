PUSH            {R4,LR}
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R12, [SP,#0x18+arg_0]
STR             R12, [SP,#0x18+var_18]
BL              sub_173F00
VLDR            S16, =0.0
LDR             R1, =off_6B1FE4
MOV             R4, R0
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S16
ADD             R2, R1, #0x340
STR             R1, [R0]
STR             R2, [R0,#0xE0]
BL              sub_22D56C
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R0, R4
BL              sub_575D3C
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R0, R4
BL              sub_575C24
ADD             SP, SP, #8
MOV             R0, R4
VPOP            {D8}
POP             {R4,PC}
