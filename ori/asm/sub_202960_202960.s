PUSH            {R4,LR}
BL              sub_2CF2C4
LDR             R1, =off_6B2930
MOV             R2, #0
VLDR            S0, =0.0
STR             R1, [R0]
STR             R2, [R0,#0x1BC]
VSTR            S0, [R0,#0x1C0]
VSTR            S0, [R0,#0x1C4]
VSTR            S0, [R0,#0x1C8]
MOV             R12, #1
STRB            R12, [R0,#0x1D2]
STRB            R2, [R0,#0x1D3]
STRB            R2, [R0,#0x1D4]
VSTR            S0, [R0,#0x1D8]
MOV             R3, #0x1E4
VSTR            S0, [R0,#0x1DC]
MOV             R1, #0xFFFFFFFF
VSTR            S0, [R0,#0x1E0]
VLDR            S1, =10.0
VLDR            S2, =2.0
VLDR            S3, =1.0
ADD             R2, R0, #0x1E8
STRH            R1, [R3,R0]
VSTM            R2, {S0-S3}
POP             {R4,PC}
