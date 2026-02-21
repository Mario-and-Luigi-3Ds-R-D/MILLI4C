ADD             R3, R3, #0x68 ; 'h'
VLDR            S0, =0.017453
VLDR            S1, [R3]
LDR             R1, [R0,#4]
VMUL.F32        S1, S1, S0
ADD             R1, R1, #0x14000
VSTR            S1, [R1,#0x2E4]
VLDR            S1, [R3,#4]
LDR             R1, [R0,#4]
VMUL.F32        S1, S1, S0
ADD             R1, R1, #0x14000
VSTR            S1, [R1,#0x2E8]
VLDR            S1, [R3,#8]
LDR             R0, [R0,#4]
VMUL.F32        S0, S1, S0
ADD             R0, R0, #0x14000
VSTR            S0, [R0,#0x2EC]
MOV             R0, #0
BX              LR
