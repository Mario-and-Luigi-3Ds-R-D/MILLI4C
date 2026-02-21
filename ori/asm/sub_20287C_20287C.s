CMP             R1, #6
BEQ             loc_20293C
BGT             loc_2028B4
VCVT.S32.F32    S2, S0
VCVT.U32.F32    S1, S0
CMP             R1, #6; switch 6 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 00202894 default case, case 3
DCD loc_2028E4; jump table for switch statement
CMP             R1, #8
VSTREQ          S0, [R0,#0x1E8]
BEQ             def_202894; jumptable 00202894 default case, case 3
CMP             R1, #9
VSTREQ          S0, [R0,#0x1EC]
BEQ             def_202894; jumptable 00202894 default case, case 3
CMP             R1, #0xA
VSTREQ          S0, [R0,#0x1F0]
BEQ             def_202894; jumptable 00202894 default case, case 3
CMP             R1, #0x14
VSTREQ          S0, [R0,#0x1F4]
BX              LR
LDR             R2, [R0]; jumptable 00202894 case 0
VMOV            R1, S2
LDR             R2, [R2,#0x88]
BX              R2
LDR             R2, [R0]; jumptable 00202894 case 1
VMOV            R1, S2
LDR             R2, [R2,#0x84]
BX              R2
VLDR            S1, =0.0; jumptable 00202894 case 2
LDR             R2, [R0]
VCMP.F32        S0, S1
LDR             R2, [R2,#0x48]
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BX              R2
VMOV            R1, S1; jumptable 00202894 case 4
STRB            R1, [R0,#0x1D2]
BX              LR
VMOV            R1, S1; jumptable 00202894 case 5
STRB            R1, [R0,#0x1D0]
BX              LR
VLDR            S1, =0.017453
VLDR            S2, =2.0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
VSTR            S0, [R0,#0x1CC]
BX              LR
