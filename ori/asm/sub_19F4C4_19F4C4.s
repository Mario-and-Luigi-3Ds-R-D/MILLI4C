PUSH            {R4,LR}
VLDR            S0, =-3000.0
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
VLDR            S16, =0.0
VSTR            S0, [SP,#0x20+var_20]
VSTR            S16, [SP,#0x20+var_1C]
VSTR            S16, [SP,#0x20+var_18]
LDR             R0, [R0,#4]
MOV             R1, SP
BL              sub_14E984
LDR             R0, [R4,#4]
VLDR            S0, =60.0
ADD             R0, R0, #0x39C
VSTR            S16, [R0]
VSTR            S0, [R0,#4]
MOV             R0, #0
STRB            R0, [R4,#8]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
