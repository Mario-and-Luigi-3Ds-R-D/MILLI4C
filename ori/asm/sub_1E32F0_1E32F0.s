PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_1E3390
ADD             R0, R4, #4
VLDR            S17, =1.0
VMOV.F32        S0, S17
BL              sub_5A176C
LDR             R5, =off_6D1648
VMOV.F32        S16, S0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VMOV.F32        S0, S17
VSTR            S16, [R0,#0x294]
ADD             R0, R4, #0x38 ; '8'
BL              sub_5A176C
VMOV.F32        S16, S0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VMOV.F32        S0, S17
VSTR            S16, [R0,#0x298]
ADD             R0, R4, #0x6C ; 'l'
BL              sub_5A176C
VMOV.F32        S16, S0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VMOV.F32        S0, S17
VSTR            S16, [R0,#0x29C]
ADD             R0, R4, #0xA0
BL              sub_5A176C
VMOV.F32        S16, S0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VSTR            S16, [R0,#0x2A0]
VPOP            {D8}
POP             {R4-R6,PC}
