PUSH            {R4-R7,LR}
MOV             R6, R0
LDR             R4, =off_6CDC90
VPUSH           {D8-D9}
SUB             SP, SP, #4
LDR             R0, [R4]
ADD             R1, R0, #0x10
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x33C
LDR             R2, [R0]
LDR             R2, [R2,#4]
STR             R2, [R1,#4]
LDR             R2, [R0]
STR             R2, [R1,#8]
LDR             R2, [R0]
LDR             R2, [R2,#4]
STR             R1, [R2,#8]
LDR             R0, [R0]
STR             R1, [R0,#4]
LDR             R0, [R1]
LDR             R2, [R0,#8]
MOV             R0, R1
BLX             R2
LDR             R0, [R4]
LDR             R7, =off_6CE970
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R4, [R0]
LDR             R0, [R4,#0x248]
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x24C]
VLDR            S16, [SP,#0x28+var_28]
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x250]
VLDR            S17, [SP,#0x28+var_28]
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x54]
VLDR            S0, [SP,#0x28+var_28]
VMOV            S1, R0
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R7]
ADD             R5, R0, #0x10C000
VADD.F32        S18, S0, S1
ADD             R5, R5, #0x3D8
MOV             R0, R5
BL              sub_5A26D0
ADD             R4, R4, #0x254
ADD             R0, R5, #0x1C
VLDM            R4, {S0-S2}
ADD             R5, R5, #4
VSTM            R0, {S0-S2}
VSTM            R5, {S0-S2}
LDR             R0, [R7]
ADD             R4, R0, #0x10C000
ADD             R4, R4, #0x330
MOV             R0, R4
BL              sub_5A26D0
VSTR            S16, [R4,#(loc_10C34C - 0x10C330)]
VSTR            S17, [R4,#(loc_10C350 - 0x10C330)]
VSTR            S18, [R4,#(loc_10C354 - 0x10C330)]
ADD             R4, R4, #4
MOV             R0, #0
VSTM            R4, {S16-S18}
STRB            R0, [R6,#8]
ADD             SP, SP, #4
VPOP            {D8-D9}
POP             {R4-R7,PC}
