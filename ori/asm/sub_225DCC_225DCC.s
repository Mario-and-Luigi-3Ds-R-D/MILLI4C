PUSH            {R3,LR}
BL              sub_417844
VLDR            S0, =0.0
MOV             R1, #0
VMOV            R2, S0
VSTR            S0, [SP,#8+var_8]
STR             R2, [R0,#0x494]
ADD             R1, R1, #1
CMP             R1, #9
BCC             loc_225DE8
LDR             R2, [R0,#0x300]
ADD             R1, R0, #0x400
STR             R2, [R0,#0x49C]
VLDR            S0, [R0,#0x24]
VLDR            S1, [R0,#0x1D4]
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0xA0]
VLDR            S0, [R0,#0x304]
VLDR            S1, [R0,#0x48]
VSUB.F32        S0, S0, S1
VSTR            S0, [R1,#0xA4]
LDR             R2, [R0,#0x1D8]
STR             R2, [R0,#0x498]
LDR             R2, [R0,#0x44]
STR             R2, [R0,#0x4A8]
POP             {R3,PC}
