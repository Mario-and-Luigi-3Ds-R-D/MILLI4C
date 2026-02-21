PUSH            {R4-R9,LR}
MOV             R6, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x104]
LDR             R4, [R6,#0x100]
CMP             R0, R4
BEQ             loc_26B32C
LDR             R7, =off_6CDF98
VLDR            S16, =0.0
VLDR            S17, =1.0
VLDR            S18, =10.0
MOV             R8, #0x27 ; '''
MOV             R9, #6
LDR             R5, [R4]
LDRB            R0, [R5,#0x3F4]
CMP             R0, #5
BEQ             loc_26B31C
LDR             R0, [R7]
VLDR            S1, [R5,#0x28]
MOV             R2, SP
MOV             R1, #1
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x194]
VSTMEA          SP, {S16-S17}
VSUB.F32        S0, S0, S1
VSTR            S16, [SP,#0x38+var_30]
VLDR            S2, [R0,#0x190]
ADD             R0, R5, #0x1DC
VADD.F32        S1, S0, S18
BL              sub_5A299C
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
BIC             R0, R0, #0xC000003F
BIC             R0, R0, #0x3FC0
MOV             R3, #0x100
ADD             R1, R8, R0,LSR#12
MOV             R2, #0
MOV             R0, R5
BL              sub_14C548
STRB            R9, [R5,#0x3F4]
LDR             R0, [R6,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26B2A8
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R9,PC}
