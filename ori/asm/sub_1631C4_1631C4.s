PUSH            {R4,LR}
VLDR            S0, =0.0
MOV             R4, R0
VPUSH           {D8}
VLDR            S16, [R0,#0x2C]
VSTR            S0, [R0,#0x2C]
BL              sub_18B698
VSTR            S16, [R4,#0x2C]
VPOP            {D8}
POP             {R4,PC}
