LDR             R12, =off_6CE970
PUSH            {R4,LR}
LDR             R1, [R0,#0xC]
MOV             R4, R0
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
LDR             R2, =0x30204
SUB             SP, SP, #0x10
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
VLDR            S0, =0.0
VLDR            S1, =1.0
MOV             R1, SP
VSTMEA          SP, {S0-S1}
MOV             R0, R4
VSTR            S0, [SP,#0x18+var_10]
BL              sub_28F72C
ADD             SP, SP, #0x10
POP             {R4,PC}
