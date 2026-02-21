PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R2,#0x2C]
SUB             SP, SP, #0x10
CMP             R0, #4
BNE             loc_1C3F34
LDR             R0, =off_6CE970
LDR             R1, =sub_10D4F0
LDR             R12, =0xFFE683CC
LDR             R2, =0x30204
LDR             R0, [R0]
MOV             R3, #0
LDR             R1, [R0,R1]
SUB             R0, R0, R12
BL              sub_503720
VLDR            S0, =0.0
VLDR            S1, =1.0
MOV             R1, SP
VSTMEA          SP, {S0-S1}
MOV             R0, R4
VSTR            S0, [SP,#0x18+var_10]
BL              sub_1C3D74
ADD             SP, SP, #0x10
POP             {R4,PC}
