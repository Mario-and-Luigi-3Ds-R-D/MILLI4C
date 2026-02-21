PUSH            {R4-R6,LR}
MOV             R6, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x30
BL              sub_1E5C94
LDR             R0, [R6]
LDR             R2, [R6,#0x8C8]
MOV             R1, SP
LDR             R3, [R0,#0x378]
MOV             R0, R6
BLX             R3
VLDR            S5, [R6,#0x108]
VLDR            S3, [R6,#0x10C]
VLDR            S1, [R6,#0x110]
VLDR            S4, [SP,#0x50+var_44]
VLDR            S2, [SP,#0x50+var_34]
VLDR            S0, [SP,#0x50+var_24]
VSUB.F32        S16, S4, S5
VSUB.F32        S17, S2, S3
VSUB.F32        S18, S0, S1
MOV             R5, #0
ADD             R0, R5, R5,LSL#2
ADD             R0, R0, R5,LSL#5
ADD             R4, R6, R0,LSL#3
ADD             R0, R4, #0xB50
VLDR            S0, [R0]
VADD.F32        S0, S0, S16
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VADD.F32        S0, S0, S17
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VADD.F32        S0, S0, S18
VSTR            S0, [R0,#8]
LDR             R1, [R6,#4]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x328
ADD             R1, R1, #0x13800
ADD             R1, R1, #0x374
BL              loc_2325B0
ADD             R0, R4, #0xB50
ADD             R4, R4, #0xB50
VLDR            S0, [R0]
ADD             R5, R5, #1
CMP             R5, #6
VSUB.F32        S0, S0, S16
VSTR            S0, [R4]
VLDR            S0, [R0,#4]
VSUB.F32        S0, S0, S17
VSTR            S0, [R4,#4]
VLDR            S0, [R0,#8]
VSUB.F32        S0, S0, S18
VSTR            S0, [R4,#8]
BLT             loc_15AFF4
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8-D9}
POP             {R4-R6,PC}
