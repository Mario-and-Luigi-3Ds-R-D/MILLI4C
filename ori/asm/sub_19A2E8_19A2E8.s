ADD             R0, R0, R1,LSL#2
VLDR            S2, =0.0
LDR             R0, [R0,#0x10]
CMP             R2, #1
BEQ             loc_19A338
VCVT.U32.F32    S1, S0
CMP             R2, #4
VMOVEQ          R1, S1
STRBEQ          R1, [R0,#0x216]
BEQ             locret_19A334
CMP             R2, #6
BEQ             loc_19A354
CMP             R2, #0xD
BNE             locret_19A334
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0xB7]
BX              LR
VCMP.F32        S0, S2
LDR             R2, [R0]
VMRS            APSR_nzcv, FPSCR
LDR             R2, [R2,#0x48]
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
LDR             R1, [R0,#0x120]
TST             R1, #1
VMOV            R1, S1
BEQ             locret_19A334
MOV             R2, #1
B               sub_35C618
