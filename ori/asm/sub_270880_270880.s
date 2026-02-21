PUSH            {R4-R6,LR}
ADD             R0, R0, #0x580
LDR             R1, =off_6CDF98
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R1, [R1]
LDM             R0, {R4,R5}
LDR             R0, [R1,#0x124]
CMP             R4, R5
VLDRNE          S17, =1.0
ADDNE           R6, R0, #0x400
BEQ             loc_2708E0
LDR             R0, [R4]
ADD             R0, R0, #0x400
BL              sub_5A18EC
VLDR            S0, [R6,#0x3C]
LDR             R0, [R4]
VMUL.F32        S1, S0, S16
VMOV.F32        S0, S17
ADD             R0, R0, #0x400
BL              sub_5A12F8
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2708B0
VPOP            {D8}
POP             {R4-R6,PC}
