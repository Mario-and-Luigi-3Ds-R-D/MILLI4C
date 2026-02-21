PUSH            {R3-R5,LR}
MOV             R4, R0
MOV             R2, #0xEC
ADD             R0, R0, #4
BL              sub_127EB8
ADD             R0, R4, #0xC0
ADD             R3, R4, #0xF0
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0xFC
BL              sub_5A18EC
VLDR            S0, =0.0
ADD             R3, R4, #0x88
VSTR            S0, [R4,#0x108]
VSTR            S0, [R4,#0x100]
VSTR            S0, [R4,#0x168]
LDR             R0, [R4,#0x3C]
VSTR            S0, [R4,#0x16C]
ADD             R2, R4, #0x80
STR             R0, [R4,#0x170]
MOV             R0, #0
STR             R0, [SP,#0x10+var_10]
ADD             R0, R4, #0x7400
LDRB            R1, [R4,#0xCC]
VLDR            S0, [R4,#0xD0]
ADD             R0, R0, #0x4C ; 'L'
BL              sub_58DDDC
LDR             R2, =0x750C
LDR             R1, =0x5C24
STRB            R0, [R2,R4]
LDRB            R0, [R4,#0x1D]
STRB            R0, [R1,R4]
POP             {R3-R5,PC}
