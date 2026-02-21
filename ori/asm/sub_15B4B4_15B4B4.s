PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R1, [R4,#0x658]
VLDR            S16, =0.0
BIC             R1, R1, #0xC0000000
ORR             R1, R1, #0x40000000
STR             R1, [R0,#0x658]
LDR             R0, [R0]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x4C]
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x284]
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x2D0]
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R0, R4
BLX             R1
VLDR            S0, =1.2
ADD             R0, R4, #0x800
VSTR            S0, [R4,#0xE4]
VSTR            S0, [R4,#0xE8]
VSTR            S0, [R4,#0xEC]
VSTR            S0, [R0,#0x2B8]
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x36C]
MOV             R0, R4
BLX             R2
LDRB            R0, [R4,#0xAB4]
LDR             R1, =0x122C
CMP             R0, #1
MOVHI           R0, #1
MOVLS           R0, #0
STRB            R0, [R1,R4]
VPOP            {D8}
POP             {R4,PC}
