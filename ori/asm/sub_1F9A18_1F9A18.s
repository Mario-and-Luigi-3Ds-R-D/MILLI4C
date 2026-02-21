PUSH            {R3,LR}
BL              sub_4749AC
VLDR            S0, =0.0
VMOV            R2, S0
VSTR            S0, [SP,#8+var_8]
STR             R2, [R0,#0x30C]
LDR             R1, [R0,#0x70]
STR             R1, [SP,#8+var_8]
LDR             R1, [R0,#0x78]
VLDR            S0, [SP,#8+var_8]
VMOV            S1, R1
STR             R1, [SP,#8+var_8]
VADD.F32        S0, S0, S1
VMOV            R1, S0
VSTR            S0, [SP,#8+var_8]
STR             R1, [R0,#0x54]
LDR             R1, [R0,#0x70]
STR             R1, [SP,#8+var_8]
LDR             R1, [R0,#0x74]
VLDR            S0, [SP,#8+var_8]
STR             R1, [SP,#8+var_8]
VLDR            S1, [SP,#8+var_8]
LDR             R1, [R0,#0x78]
VADD.F32        S0, S0, S1
VMOV            S1, R1
STR             R1, [SP,#8+var_8]
VADD.F32        S0, S0, S1
VMOV            R1, S0
VSTR            S0, [SP,#8+var_8]
STR             R1, [R0,#0x60]
POP             {R3,PC}
