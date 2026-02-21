PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
VMOV.F32        S16, S0
SUB             SP, SP, #0xC
ADD             R0, R0, #0x40 ; '@'
BL              sub_5A18EC
ADD             R0, R4, #0xC
BL              sub_5A18EC
VLDR            S0, =0.0
VMOV.F32        S1, S16
VSTR            S0, [R4,#0x18]
VSTR            S0, [R4,#0x10]
VLDR            S0, =1.0
ADD             R0, R4, #0xC
BL              sub_5A12F8
LDR             R1, [R4]
LDR             R0, [R4,#8]
VMOV.F32        S0, S16
ADD             R1, R1, #0x3C ; '<'
ADD             R0, R0, #0x1C4
BL              sub_5A2138
MOV             R0, #4
STRB            R0, [R4,#4]
LDR             R0, [R4]
VLDR            S4, [R5]
VLDR            S0, [R5,#8]
ADD             R0, R0, #0x1E0
VLDR            S1, [R5,#4]
MOV             R1, SP
VLDM            R0!, {S5}
VLDM            R0, {S2-S3}
ADD             R0, SP, #0x20+var_1C
VADD.F32        S4, S4, S5
VADD.F32        S2, S1, S2
VADD.F32        S3, S0, S3
VMOV.F32        S0, S16
VSTR            S4, [SP,#0x20+var_20]
VSTM            R0, {S2-S3}
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x2C]
STR             R0, [SP,#0x20+var_18]
LDR             R0, [R4]
LDR             R0, [R0,#0x4C]
STR             R0, [SP,#0x20+var_1C]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x11C
BL              sub_5A2138
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
