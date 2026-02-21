ADD             R1, R3, #8
ADD             R2, R3, #0x68 ; 'h'
PUSH            {R4,LR}
LDR             R3, [R0,#0x458]
LDR             R0, [R1]
LDR             R1, [R1,#4]
VLDR            S0, [R2,#8]
LDR             R0, [R3,R0,LSL#2]
CMP             R1, #0
LDRNE           R0, [R0,#4]
CMP             R1, #8; switch 8 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_178D40; jumptable 00178D40 default case, cases 0,3,4
DCD def_178D40; jump table for switch statement
VLDR            S1, =256.0; jumptable 00178D40 case 1
ADD             R0, R0, #4
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
NOP
NOP
B               def_178D40; jumptable 00178D40 default case, cases 0,3,4
VCVT.S32.F32    S0, S0; jumptable 00178D40 case 2
VMOV            R1, S0
STRH            R1, [R0,#0xA]
B               def_178D40; jumptable 00178D40 default case, cases 0,3,4
VLDR            S1, =0.0; jumptable 00178D40 case 5
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x1CC]
NOP
NOP
B               def_178D40; jumptable 00178D40 default case, cases 0,3,4
VCVT.U32.F32    S0, S0; jumptable 00178D40 case 6
MOV             R1, #0
VMOV            R2, S0
B               loc_178DE0
VCVT.U32.F32    S0, S0; jumptable 00178D40 case 7
MOV             R1, #1
VMOV            R2, S0
BL              sub_231C40
MOV             R0, #0; jumptable 00178D40 default case, cases 0,3,4
POP             {R4,PC}
