LDR             R12, =off_6CE970
PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R1, [R0,#0xAC]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
LDR             R2, =0x30204
SUB             SP, SP, #0x24
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R5, =off_6CDD80
LDR             R0, [R5]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_5438BC
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
BL              sub_14C548
LDR             R0, [R5]
VLDR            S0, =0.0
ADD             R2, SP, #0x30+var_28
VLDR            S1, =1.0
LDR             R5, [R0,#8]
MOV             R1, #1
LDR             R0, [R5,#0x228]
STR             R0, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_1C]
VSTR            S0, [SP,#0x30+var_18]
STR             R0, [SP,#0x30+var_14]
VSTM            R2, {S0-S1}
VSTR            S0, [SP,#0x30+var_20]
LDR             R0, [R5,#0x22C]
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R5,#0x230]
STR             R0, [SP,#0x30+var_30]
LDR             R0, [R4,#0xAC]
VLDMEA          SP, {S1-S2}
ADD             R0, R0, #0x1DC
BL              sub_5A28C4
LDR             R0, [R5,#0x230]
ADD             R2, SP, #0x30+var_1C
MOV             R1, #0
STR             R0, [SP,#0x30+var_30]
LDR             R0, [R4,#0xAC]
VLDR            S0, [SP,#0x30+var_30]
ADD             R0, R0, #0x1DC
BL              sub_5A2B20
MOV             R1, #3
MOV             R0, #0
STRB            R1, [R4,#0xB0]
STRB            R0, [R4,#0x39]
STRB            R0, [R4,#0xDC]
ADD             SP, SP, #0x24 ; '$'
POP             {R4,R5,PC}
