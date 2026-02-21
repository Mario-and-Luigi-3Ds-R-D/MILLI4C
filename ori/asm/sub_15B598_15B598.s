PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R0, [SP,#0x18+arg_0]
STR             R0, [SP,#0x18+var_18]
MOV             R0, R4
BL              sub_1E7D34
VLDR            S16, =0.0
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
LDR             R1, [R0,#0x4C]
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x284]
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x2D0]
ADD             SP, SP, #8
VMOV.F32        S1, S16
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R0, R4
POP             {R4,LR}
BX              R1
