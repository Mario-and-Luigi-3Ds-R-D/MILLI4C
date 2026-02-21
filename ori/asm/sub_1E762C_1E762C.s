PUSH            {R4-R6,LR}
ADD             R5, R0, #0x400
MOV             R4, R0
VPUSH           {D8-D10}
ADD             R5, R5, #0x358
LDR             R0, [R0]
VLDR            S16, =8.0
VLDR            S17, =32.0
VLDR            S18, =16.0
VLDR            S19, =0.0
VLDR            S20, =-8.0
LDR             R1, [R0,#0x4C]
VMOV.F32        S4, S16
VMOV.F32        S3, S17
VMOV.F32        S2, S18
VMOV.F32        S1, S19
VMOV.F32        S0, S20
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S17
VMOV.F32        S2, S18
LDR             R1, [R0,#0x284]
VMOV.F32        S1, S19
VMOV.F32        S0, S20
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S17
VMOV.F32        S2, S18
LDR             R1, [R0,#0x2D0]
VMOV.F32        S1, S19
VMOV.F32        S0, S20
MOV             R0, R4
BLX             R1
LDRB            R0, [R5,#0x2F4]
BIC             R0, R0, #0x3F ; '?'
ORR             R0, R0, #9
STRB            R0, [R5,#0x2F4]
VPOP            {D8-D10}
POP             {R4-R6,PC}
