LDR             R2, [R0,#0x14]
LDR             R1, [R0,#0x20]
STR             R1, [R2,#0xC]
LDR             R2, [R0,#0x14]
LDR             R1, [R0,#0x24]
STR             R1, [R2,#0x1C]
VLDR            S1, [R0,#0x20]
VLDR            S3, [R0,#0x18]
VLDR            S0, [R0,#0x24]
VLDR            S2, [R0,#0x1C]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S2
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S1, S2
VMOV            R1, S1
CMP             R1, #0x41000000
BLT             locret_2A8A0C
VLDR            S4, =8.0
VLDR            S3, =0.05
VLDR            S2, =0.2
VSUB.F32        S1, S1, S4
VLDR            S0, =1.0
VMUL.F32        S1, S1, S3
VMLS.F32        S0, S1, S2
VMOV            R1, S0
CMP             R1, #0x3F000000
VLDRLT          S0, =0.5
MOV             R1, #0
LDR             R3, [R0,#0x14]
MOV             R2, R1
ADD             R1, R1, #1
MOV             R12, R3
ADD             R3, R3, R2,LSL#2
CMP             R1, #3
VLDR            S1, [R3]
VLDR            S2, [R3,#0x10]
VLDR            S3, [R3,#0x20]
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
ADD             R3, R12, R2,LSL#2
ADD             R2, R12, R2,LSL#2
VSTR            S1, [R3]
VSTR            S2, [R2,#0x10]
VSTR            S3, [R2,#0x20]
BLT             loc_2A89C4
BX              LR
