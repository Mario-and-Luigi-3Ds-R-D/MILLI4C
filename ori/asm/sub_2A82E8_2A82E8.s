PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #3
STRB            R0, [R4]
LDR             R0, =off_6CE970
MOV             R5, #1
STRB            R5, [R4,#1]
MOV             R6, #0
STRB            R5, [R4,#2]
STRB            R6, [R4,#3]
LDR             R1, =0xC00B
LDR             R0, [R0]
BL              sub_52FACC
STR             R0, [R4,#4]
STRB            R6, [R4,#8]
STRB            R5, [R4,#9]
STRB            R5, [R4,#0xA]
MOV             R1, #0x14
STRB            R5, [R4,#0xB]
VLDR            S0, =0.3
STR             R1, [R4,#0x10]
STR             R5, [R4,#0xC]
VSTR            S0, [R4,#0x14]
VLDR            S2, =-6.0
VLDR            S1, =-11.0
VSTR            S2, [R4,#0x18]
VLDR            S0, =0.0
VSTR            S1, [R4,#0x1C]
VSTR            S0, [R4,#0x20]
VLDR            S1, =6.0
VLDR            S2, =9.0
ADD             R0, R4, #0x24 ; '$'
VSTR            S0, [R4,#0x2C]
VSTM            R0, {S1-S2}
ADD             R0, R4, #0x30 ; '0'
VLDR            S1, =-1.0
VLDR            S2, =-2.0
VSTR            S0, [R4,#0x38]
VSTM            R0, {S1-S2}
ADD             R0, R4, #0x3C ; '<'
VLDR            S1, =1.0
VLDR            S2, =2.0
VSTR            S0, [R4,#0x44]
VSTM            R0, {S1-S2}
MOV             R0, R4
STR             R6, [R4,#0x48]
STR             R6, [R4,#0x4C]
POP             {R4-R6,PC}
