PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
SUB             SP, SP, #0xC
VLDR            S0, =0.0
VLDR            S1, =1.0
LDR             R5, [R0,#0x18]
MOV             R2, SP
VSTMEA          SP, {S0-S1}
MOV             R1, #1
VSTR            S0, [SP,#0x18+var_10]
LDRB            R0, [R4,#0x15]
ADD             R0, R4, R0,LSL#4
ADD             R0, R0, #0x18
VLDM            R0, {S0-S2}
ADD             R0, R5, #0x1DC
BL              sub_5A2954
LDRB            R1, [R4,#0x15]
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
CMP             R1, #0
LDRH            R1, [R5,#0x10]
MOV             R3, #0
BEQ             loc_21C0BC
LDR             R0, [R0]
MOV             R2, #0x10000
SUB             R0, R0, R12
BL              sub_503808
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
LDR             R0, [R0]
LDR             R2, =0x30008
SUB             R0, R0, R12
BL              sub_503808
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
