PUSH            {R4-R9,LR}
ADD             R0, R0, #0x34 ; '4'
VPUSH           {D8}
SUB             SP, SP, #0xC
LDM             R0, {R5,R6}
CMP             R5, R6
BEQ             loc_1F7CE4
LDR             R7, =off_6CDD80
VLDR            S16, =0.0
MOV             R8, #0
MOV             R9, #6
LDR             R4, [R5]
STRB            R9, [R4,#0x41A]
STRB            R8, [R4,#0x41B]
LDR             R0, [R7]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x238]
STR             R1, [SP,#0x30+var_2C]
LDR             R0, [R0,#0x234]
VMOV            S1, R1
STR             R0, [SP,#0x30+var_30]
LDR             R0, =dword_6D1F40
VLDR            S0, [SP,#0x30+var_30]
BL              sub_47EAA4
VSTR            S16, [R4,#0x39C]
ADD             R5, R5, #0xC
CMP             R5, R6
VSTR            S0, [R4,#0x3A0]
BNE             loc_1F7C9C
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
