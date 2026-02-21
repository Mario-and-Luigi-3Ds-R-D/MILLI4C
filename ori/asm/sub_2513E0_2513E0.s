PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VLDR            S4, [R1]
VLDR            S5, [R0,#0xC]
VLDR            S2, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S3, [R0,#0x10]
VLDR            S1, [R0,#0x14]
VADD.F32        S16, S4, S5
VADD.F32        S17, S2, S3
VADD.F32        S18, S0, S1
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x48]
ADD             R0, R4, #0x40 ; '@'
STM             R0, {R1,R2}
VSTR            S16, [R4,#0x24]
VSTR            S17, [R4,#0x28]
VSTR            S18, [R4,#0x2C]
ADD             R4, R4, #0x34 ; '4'
VSTM            R4, {S16-S18}
VPOP            {D8-D9}
POP             {R4,PC}
