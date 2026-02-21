MOV             R2, R0
PUSH            {R4,LR}
LDR             R0, [R0,#8]
VLDR            S0, =0.5
SUB             SP, SP, #0x40
ADD             R0, R0, #0x400
ADD             R0, R0, #0x188
MOV             R4, R1
VLDR            S2, [R0,#0xC]
VLDR            S1, [R0]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [R1]
VLDR            S2, [R0,#0x10]
VLDR            S1, [R0,#4]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [R1,#4]
VLDR            S2, [R0,#0x14]
VLDR            S1, [R0,#8]
LDR             R1, =off_6CDFE0
LDR             R0, =off_6CDFD8
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [R4,#8]
LDR             R1, [R1]
LDR             R0, [R0]
ADD             R1, R1, #0x1000
ADD             R1, R1, #0xFE0
VLDR            S1, [R0,#0x2D8]
LDR             R1, [R1]
ADD             R1, R1, #0x800
ADD             R1, R1, #0x324
VLDR            S0, [R1]
MOV             R1, SP
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
LDR             R0, [R0,#0x2D4]
VLDR            S0, =0.0
VSTR            S0, [SP,#0x48+var_18]
STR             R0, [SP,#0x48+var_14]
VSTR            S0, [SP,#0x48+var_10]
LDR             R0, [R2,#0xC]
LDR             R0, [R0,#0xC90]
BL              sub_5D0668
ADD             R2, SP, #0x48+var_18
MOV             R1, SP
MOV             R0, R2
BL              sub_1169FC
VLDR            S0, [R4]
VLDR            S1, [SP,#0x48+var_18]
MOV             R0, R4
VADD.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R4,#4]
VLDR            S1, [SP,#0x48+var_14]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VLDR            S1, [SP,#0x48+var_10]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
ADD             SP, SP, #0x40 ; '@'
POP             {R4,PC}
