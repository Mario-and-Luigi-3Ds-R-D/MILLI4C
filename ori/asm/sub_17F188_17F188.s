PUSH            {R4,LR}
ADD             R3, R3, #0x68 ; 'h'
VPUSH           {D8-D9}
LDR             R0, [R0,#4]
VLDM            R3, {S16-S18}
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x18]
ADD             R4, R0, #0x158
MOV             R0, R4
BL              sub_5A26D0
ADD             R1, R4, #0x1C
ADD             R4, R4, #4
VSTM            R1, {S16-S18}
MOV             R0, #0
VSTM            R4, {S16-S18}
VPOP            {D8-D9}
POP             {R4,PC}
