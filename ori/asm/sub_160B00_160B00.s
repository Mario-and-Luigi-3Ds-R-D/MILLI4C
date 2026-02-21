LDR             R2, =0x1428F
LDRB            R2, [R2,R0]
CMP             R2, #0
BXNE            LR
PUSH            {R4,LR}
ADD             R4, R0, #0x14400
VPUSH           {D8-D9}
ADD             R4, R4, #0x94
MOV             R0, R4
VLDR            S16, [R4,#0xC]
VLDM            R1, {S17-S18}
BL              sub_5A26D0
VSTR            S16, [R4,#0x24]
ADD             R2, R4, #0x1C
VSTM            R2, {S17-S18}
VSTR            S16, [R4,#0xC]
ADD             R4, R4, #4
VSTM            R4, {S17-S18}
VPOP            {D8-D9}
POP             {R4,PC}
