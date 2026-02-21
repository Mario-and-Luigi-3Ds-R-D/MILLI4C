PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0x24
MOV             R7, R1
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BEQ             loc_22D3B4
ADD             R5, R4, #0x400
MOV             R1, #4
LDRH            R0, [R5,#0xB6]
AND             R1, R1, R0,LSL#1
BIC             R0, R0, #4
ORR             R0, R0, R1
BIC             R0, R0, #2
STRH            R0, [R5,#0xB6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x180]
MOV             R0, R6
BL              sub_11C418
MOV             R8, R0
MOV             R0, R6
BL              sub_485B0C
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x150]
MOV             R6, R0
ADD             R9, SP, #0x40+var_30
VADD.F32        S0, S0, S1
MOV             R3, R6
MOV             R2, R8
MOV             R1, R7
VSTR            S0, [SP,#0x40+var_3C]
LDR             R0, [R4,#0x10C]
STR             R0, [SP,#0x40+var_38]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R4,#0x15C]
ADD             R0, SP, #0x40+var_3C
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_34]
STR             R9, [SP,#0x40+var_40]
BL              sub_145924
CMP             R0, #0
BEQ             loc_22D3B4
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x154]
MOV             R3, R6
MOV             R2, R8
VADD.F32        S0, S0, S1
MOV             R1, R7
ADD             R0, SP, #0x40+var_3C
VSTR            S0, [SP,#0x40+var_3C]
STR             R9, [SP,#0x40+var_40]
BL              sub_145924
CMP             R0, #0
BEQ             loc_22D3B4
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R4,#0x160]
MOV             R3, R6
MOV             R2, R8
VADD.F32        S0, S0, S1
MOV             R1, R7
ADD             R0, SP, #0x40+var_3C
VSTR            S0, [SP,#0x40+var_38]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R4,#0x158]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_34]
STR             R9, [SP,#0x40+var_40]
BL              sub_145924
CMP             R0, #0
BEQ             loc_22D3B4
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x150]
MOV             R3, R6
MOV             R2, R8
VADD.F32        S0, S0, S1
MOV             R1, R7
ADD             R0, SP, #0x40+var_3C
VSTR            S0, [SP,#0x40+var_3C]
STR             R9, [SP,#0x40+var_40]
BL              sub_145924
CMP             R0, #0
BEQ             loc_22D3B4
LDRH            R0, [R5,#0xB6]
ORR             R0, R0, #2
STRH            R0, [R5,#0xB6]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R9,PC}
