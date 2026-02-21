PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x18
LDRB            R0, [R0,#0x4EA]
CMP             R0, #0
BNE             loc_2498D8
LDR             R0, [R4,#0x2F0]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2498D8
LDR             R0, =off_6CDD80
LDR             R1, [R4,#0x548]
ADD             R3, R4, #0x400
ADD             R3, R3, #0x148
LDR             R2, [R0]
ADD             R1, R1, #1
LDR             R0, [R2,#8]
STR             R1, [R4,#0x548]
LDR             R12, [R0,#0x2DC]
CMP             R1, R12
BCS             loc_2498E4
ADD             R1, R0, R1,LSL#2
ADD             R2, R4, #0x400
LDR             R1, [R1,#0x2B8]
VMOV            S0, R1
STR             R1, [SP,#0x28+var_28]
VLDR            S1, [R2,#0x14C]
ADD             R2, SP, #0x28+var_20
VMUL.F32        S16, S0, S1
VLDR            S0, =0.0
VLDR            S1, =1.0
VSTM            R2, {S0-S1}
VSTR            S0, [SP,#0x28+var_18]
LDR             R1, [R3]
ADD             R0, R0, R1,LSL#2
LDR             R1, [R0,#0x2C4]
STR             R1, [SP,#0x28+var_24]
LDR             R0, [R0,#0x2D0]
VMOV            S2, R1
MOV             R1, #1
VMOV            S1, R0
STR             R0, [SP,#0x28+var_28]
ADD             R0, R4, #0x2C8
BL              sub_5A28C4
MOV             R1, #0
ADD             R0, R4, #0x2C8
BL              sub_5A2640
VMOV.F32        S0, S16
ADD             R2, R4, #0x40 ; '@'
MOV             R1, #0
ADD             R0, R4, #0x2C8
BL              sub_5A25D0
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4,PC}
ADD             R0, R2, #0xC00
ADD             R1, R4, #0x110
ADD             R0, R0, #0x32C
BL              sub_1C41E8
MOV             R0, #3
STRB            R0, [R4,#0x4E8]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4,PC}
