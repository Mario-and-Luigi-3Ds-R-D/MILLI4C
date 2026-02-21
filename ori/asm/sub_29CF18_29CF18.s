LDRH            R2, [R0]
LDR             R3, =unk_65B108
AND             R2, R2, #0xF00
MOV             R2, R2,LSR#8
CMP             R2, #9; switch 9 cases
LDRB            R3, [R3,R2]
SMULBB          R1, R3, R1
ADD             R0, R0, R1
ADD             R0, R0, #2
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_29CF3C; jumptable 0029CF3C default case
DCD loc_29CF68; jump table for switch statement
LDRB            R0, [R0]; jumptable 0029CF3C case 0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
LDRB            R0, [R0]; jumptable 0029CF3C case 3
SXTB            R0, R0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
LDRH            R0, [R0]; jumptable 0029CF3C case 1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
LDRH            R0, [R0]; jumptable 0029CF3C cases 4,6
SXTH            R0, R0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
LDR             R1, [R0]; jumptable 0029CF3C case 2
LDRB            R0, [R0,#3]
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
LDR             R1, [R0]; jumptable 0029CF3C cases 5,7
LDRB            R0, [R0,#3]
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
LDR             R1, [R0]; jumptable 0029CF3C case 8
LDRB            R0, [R0,#3]
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
VMOV            S0, R0
BX              LR
VLDR            S0, =0.0; jumptable 0029CF3C default case
BX              LR
