PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
MOV             R1, #0
ADD             R0, R0, #0xD8
BL              sub_485780
VCVT.S32.F32    S0, S16
ADD             R0, R4, #0xD8
VMOV            R1, S0
BL              sub_123C70
VPOP            {D8}
ADD             R0, R4, #0xD8
POP             {R4,LR}
MOV             R1, #0x100
B               sub_123CE8
