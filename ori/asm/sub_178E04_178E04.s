PUSH            {R4-R6,LR}
ADD             R12, R3, #8
LDR             R0, [R0,#4]
LDR             R4, [R3,#8]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x108
AND             R4, R4, #0xFF
LDR             R5, [R0,#0x14]
LDRB            R4, [R5,R4]
CMP             R4, #0xFF
MOVEQ           R0, #0
BEQ             loc_178E44
MOV             R5, #0x67 ; 'g'
LDR             R0, [R0]
SMULBB          R4, R4, R5
ADD             R0, R0, R4,LSL#2
LDR             R12, [R12,#4]
CMP             R12, #0
VLDRNE          S0, =0.0
BEQ             loc_178E64
LDRH            R0, [R3,#2]
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
LDRB            R0, [R0,#0x17D]
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               loc_178E54
