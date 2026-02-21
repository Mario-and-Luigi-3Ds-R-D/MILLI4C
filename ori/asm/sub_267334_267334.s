PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x18
ADD             R0, R0, #0xC
BL              sub_5A18EC
VLDR            S16, =0.0
ADD             R0, R4, #0x40 ; '@'
VSTR            S16, [R4,#0x18]
VSTR            S16, [R4,#0x10]
BL              sub_5A18EC
LDR             R0, =dword_6E2378
VSTR            S16, [R4,#0x4C]
VSTR            S16, [R4,#0x44]
LDR             R0, [R0,#(dword_6E237C - 0x6E2378)]
BL              sub_4FA910
MOV             R1, R0
LDR             R0, [R4,#8]
VLDR            S1, [R1,#0x54]
VLDR            S2, [R4,#0x74]
VLDR            S0, [R0,#0x24]
VSUB.F32        S0, S0, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_267388
LDR             R1, [R0,#0x28]
LDR             R0, [R0,#0x2C]
VSTR            S0, [SP,#0x28+var_28]
STR             R1, [SP,#0x28+var_24]
STR             R0, [SP,#0x28+var_20]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
LDR             R0, [R4]
LDR             R1, [R4,#8]
ADD             R2, R0, #0x400
VLDR            S0, [R0,#0x1F4]
VLDR            S1, [R1,#0x24]
VLDR            S2, [R2,#0x14]
ADD             R0, R0, #0x23C
ADD             R1, SP, #0x28+var_1C
VADD.F32        S1, S1, S2
VLDM            R0!, {S4}
VLDM            R0, {S2-S3}
VADD.F32        S2, S16, S2
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTR            S0, [SP,#0x28+var_14]
VSTM            R1, {S1-S2}
LDR             R0, [R4]
LDR             R2, [R4,#8]
ADD             R1, R0, #0x400
ADD             R0, R2, #0x11C
VLDR            S0, [R1,#0x18]
ADD             R1, SP, #0x28+var_1C
BL              sub_5A2138
MOV             R0, #2
STRB            R0, [R4,#4]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4,PC}
