PUSH            {R4-R9,LR}
MOV             R6, R0
MOV             R7, #0
VPUSH           {D8}
SUB             SP, SP, #0xC
STRB            R7, [R0,#0x24]
LDR             R0, [R0,#0x38]
LDR             R4, [R6,#0x34]
CMP             R0, R4
BEQ             loc_1F7154
LDR             R8, =off_6CDD80
VLDR            S16, =0.0
MOV             R9, #6
LDR             R5, [R4]
LDRB            R0, [R5,#0x41A]
CMP             R0, #2
BNE             loc_1F7144
STRB            R9, [R5,#0x41A]
STRB            R7, [R5,#0x41B]
LDR             R0, [R8]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x238]
STR             R1, [SP,#0x30+var_2C]
LDR             R0, [R0,#0x234]
VMOV            S1, R1
STR             R0, [SP,#0x30+var_30]
LDR             R0, =dword_6D1F40
VLDR            S0, [SP,#0x30+var_30]
BL              sub_47EAA4
VSTR            S16, [R5,#0x39C]
VSTR            S0, [R5,#0x3A0]
LDR             R0, [R6,#0x38]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_1F70FC
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
