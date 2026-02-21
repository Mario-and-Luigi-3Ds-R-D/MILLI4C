PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
ADD             R0, R0, #0x14000
VMOV.F32        S16, S0
LDRB            R0, [R0,#0x28F]
CMP             R0, #0
BNE             loc_160C20
ADD             R0, R4, #0x14000
ADD             R0, R0, #0x460
BL              sub_5A18EC
ADD             R0, R4, #0x14400
VSTR            S16, [R0,#0x6C]
VSTR            S16, [R0,#0x64]
VPOP            {D8}
POP             {R4,PC}
