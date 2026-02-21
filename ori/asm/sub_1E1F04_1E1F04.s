PUSH            {R4,LR}
VPUSH           {D8}
VLDR            S0, [R0,#0xB0]
VLDR            S16, =0.0
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1E1F30
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E4614
VSTR            S16, [R0,#0x110]
VPOP            {D8}
POP             {R4,PC}
