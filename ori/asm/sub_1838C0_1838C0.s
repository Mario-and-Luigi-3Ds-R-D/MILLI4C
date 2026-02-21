PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #0x68 ; 'h'
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R2, [R4,#4]
LDR             R1, =0xBF800000
VMOV            S0, R2
CMP             R2, R1
BEQ             loc_183904
VLDR            S1, =2.0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VMOV            R2, S0
CMP             R2, R1
BEQ             loc_183920
VLDR            S1, =4.0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#8]
LDR             R1, [R0]
VMOV.F32        S1, S0
VLDR            S0, [R4,#4]
VLDR            S2, =-1.0
LDR             R1, [R1,#0x214]
BLX             R1
MOV             R0, #0
POP             {R4,PC}
