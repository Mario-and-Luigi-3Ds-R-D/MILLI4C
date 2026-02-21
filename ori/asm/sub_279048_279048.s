PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CDF98
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
SUB             SP, SP, #0x10
MOV             R1, SP
LDR             R0, [R0,#0x118]
BL              sub_5CC8F4
VMOV.F32        S0, S16
LDR             R0, [R4,#0x10C]
MOV             R1, SP
BL              sub_2812AC
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
