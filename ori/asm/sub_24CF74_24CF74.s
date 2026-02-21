PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6CE098
MOV             R1, #0
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R0]
VLDR            S16, =0.0
ADD             R2, SP, #0x30+var_24
LDR             R5, [R0,#0x8C]
ADD             R0, R4, #0x1FC
VLDR            S0, [R5,#0x244]
VSTR            S16, [SP,#0x30+var_24]
VSTR            S16, [SP,#0x30+var_20]
VNEG.F32        S0, S0
VSTR            S0, [SP,#0x30+var_1C]
VLDR            S0, [R5,#0x24C]
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
VSTR            S16, [SP,#0x30+var_28]
MOV             R2, SP
VLDR            S2, [R5,#0x248]
VLDR            S1, [R5,#0x24C]
VLDR            S0, [R5,#0x250]
MOV             R1, #1
ADD             R0, R4, #0x1FC
BL              sub_5A28C4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C548
MOV             R0, #0
MOV             R3, R0
STRB            R0, [R4,#0x1C]
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x301E7
ADD             R1, R4, #0x20 ; ' '
LDR             R0, [R0]
SUB             R0, R0, R12
BL              sub_503720
MOV             R0, #1
STRB            R0, [R4,#0x414]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4,R5,PC}
