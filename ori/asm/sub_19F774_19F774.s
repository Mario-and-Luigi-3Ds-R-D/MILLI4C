PUSH            {R4,LR}
SUB             SP, SP, #0x10
VLDR            S0, =-264.0
VLDR            S1, =655.0
VLDR            S2, =532.0
MOV             R4, R0
VSTMEA          SP, {S0-S2}
MOV             R1, SP
LDR             R0, [R0,#4]
BL              sub_14E984
VLDR            S0, =5.0
MOV             R1, SP
VSTR            S0, [SP,#0x18+var_18]
VSTR            S0, [SP,#0x18+var_14]
VSTR            S0, [SP,#0x18+var_10]
LDR             R0, [R4,#4]
BL              sub_14EA04
ADD             SP, SP, #0x10
POP             {R4,PC}
