ADD             R12, R0, #0x10000
ADD             R12, R12, #0x2700
PUSH            {R3,R4}
LDR             R12, [R12]
ADD             R0, R0, #0x12400
LDR             R4, [R12,#0xC0]
CMP             R4, #1
BNE             loc_1FABB8
VLDR            S0, [R1]
VLDR            S5, [R2]
VLDR            S1, [R1,#4]
VLDR            S3, [R2,#4]
VSUB.F32        S0, S0, S5
VLDR            S2, [R1,#8]
VSUB.F32        S1, S1, S3
VLDR            S4, [R2,#8]
VSUB.F32        S2, S2, S4
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VLDR            S2, [R0,#0x32C]
VSQRT.F32       S1, S0
VDIV.F32        S0, S1, S2
VSTR            S0, [R0,#0x328]
CMP             R3, #4
BCS             loc_1FABE4
MOV             R1, #0x21C
ADD             R1, R1, R3,LSL#2
ADD             R1, R1, R12
LDR             R1, [R1]
VMOV            S0, R1
STR             R1, [SP,#8+var_8]
VLDR            S1, [R0,#0x328]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x328]
POP             {R3,R4}
BX              LR
