CMN             R1, #1
BXEQ            LR
PUSH            {R4-R6,LR}
MOV             R0, R1
LDR             R6, =off_6CE970
VPUSH           {D8}
VMOV.F32        S16, S0
VMOV            R1, S16
ADD             R2, R1, #0x40000000
ADDS            R2, R2, #0x800000
LDREQ           R1, =flt_6E34B0
VLDREQ          S16, [R1,#(flt_6E37C8 - 0x6E34B0)]
LDR             R1, [R6]
VCVT.S32.F32    S0, S16
ADD             R5, R1, #0x10C000
ADD             R5, R5, #0x214
VMOV            R4, S0
BL              sub_58F1A0
MOV             R1, R0
MOV             R3, #1
MOV             R2, R4
MOV             R0, R5
BL              sub_4C638C
VLDR            S0, =0.0
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1DB680
LDR             R0, [R6]
MOV             R1, #1
VPOP            {D8}
ADD             R0, R0, #0x10C000
POP             {R4-R6,LR}
ADD             R0, R0, #0x214
B               sub_58EE44
VPOP            {D8}
POP             {R4-R6,PC}
