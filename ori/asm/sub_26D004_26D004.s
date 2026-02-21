PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0,#4]
BL              sub_5CC564
LDR             R0, =off_6CDF98
VSTR            S0, [R4,#0x3FC]
VLDR            S16, =0.0
MOV             R1, #0
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
VLDR            S0, [R0,#0x278]
VSTR            S16, [R4,#0x3A4]
ADD             R0, R4, #8
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x3A8]
BL              sub_14C3E8
LDR             R0, [R4,#4]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x198
LDR             R0, [R0,#0x5A0]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x20+var_18]
STMEA           SP, {R1,R2}
VSTR            S16, [SP,#0x20+var_1C]
LDR             R0, [R4,#4]
MOV             R1, SP
BL              sub_2715F4
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
