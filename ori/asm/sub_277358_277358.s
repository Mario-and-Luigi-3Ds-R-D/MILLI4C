PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
LDR             R5, [R0,#0x2C]
VLDR            S0, =0.0
VLDR            S1, =1.0
MOV             R4, R0
VSTMEA          SP, {S0-S1}
MOV             R2, SP
VSTR            S0, [SP,#0x18+var_10]
VLDR            S2, [R0,#0x14]
VLDR            S1, [R0,#0x18]
VLDR            S0, [R0,#0x10]
MOV             R1, #1
ADD             R0, R5, #0x1DC
BL              sub_5A28C4
VLDR            S0, [R4,#0x18]
ADD             R2, R4, #0x1C
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A2B20
LDR             R0, [R5,#0x28]
MOV             R3, #0x100
MOV             R2, #0
STR             R0, [R4,#0x40]
LDRB            R1, [R4,#0x3A]
MOV             R0, R5
BL              sub_14C548
MOV             R0, #2
STRB            R0, [R4,#0x38]
LDR             R2, [R4,#0x30]
CMN             R2, #1
BEQ             loc_2773F4
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDRH            R1, [R5,#0x10]
MOV             R3, #0
LDR             R12, [R12]
SUB             R0, R12, R0
BL              sub_503808
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
