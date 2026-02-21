LDRB            R3, [R2]
TST             R3, #1
BXEQ            LR
BIC             R3, R3, #1
CMP             R1, #0
STRB            R3, [R2]
BXEQ            LR
PUSH            {R4-R6,LR}
ADD             R5, R2, #0x10
ADD             R6, R0, #0x108
VPUSH           {D8}
MOV             R4, #0
VLDR            S16, =1.0
ADD             R3, R5, R4,LSL#2
LDR             R2, [R5,#0x14]
VMOV.F32        S0, S16
LDR             R1, [R3,#8]
LDRB            R0, [R5,#1]
LDR             R3, [R3,#0x18]
BL              sub_1CB1F8
ADD             R0, R6, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, #3
VSTR            S0, [R0]
BLT             loc_22E344
VPOP            {D8}
POP             {R4-R6,PC}
