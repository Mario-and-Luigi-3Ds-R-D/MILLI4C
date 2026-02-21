PUSH            {LR}
VLDR            S1, =0.15915
VPUSH           {D8}
SUB             SP, SP, #4
VLDR            S16, =16.0
MOV             R0, SP
VMUL.F32        S0, S0, S16
VMUL.F32        S0, S0, S1
BL              sub_5F6640
VMOV            R0, S0
CMP             R0, #0x3F000000
BLT             loc_22E944
VLDR            S0, [SP,#0x10+var_10]
VLDR            S1, =1.0
LDR             R1, =0x41800000
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [SP,#0x10+var_10]
CMP             R0, R1
VSUBGE.F32      S0, S0, S16
VSTRGE          S0, [SP,#0x10+var_10]
VLDR            S0, [SP,#0x10+var_10]
ADD             SP, SP, #4
VCVT.U32.F32    S0, S0
VPOP            {D8}
VMOV            R0, S0
UXTH            R0, R0
POP             {PC}
