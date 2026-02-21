PUSH            {R4,LR}
VLDR            S0, [R0,#0x3B4]
VLDR            S1, =0.71111
MOV             R4, R0
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, [R4,#0x3B8]
VLDR            S2, =6.0
VLDR            S3, [R4,#0x3B4]
VLDR            S4, =2.0
VMLA.F32        S1, S0, S2
LDR             R1, =0x43B40000
VADD.F32        S0, S3, S4
VMOV            R0, S0
VSTR            S0, [R4,#0x3B4]
VSTR            S1, [R4,#0x154]
CMP             R0, R1
BLT             locret_1850A8
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x3B4]
POP             {R4,PC}
