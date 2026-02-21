PUSH            {R4-R6,LR}
VPUSH           {D8}
LDR             R0, [R2,#8]
VLDR            S0, [R2,#0x14]
LDR             R3, [R2,#0xC]
LDR             R2, [R2,#0x10]
VCVT.F32.S32    S16, S0
UXTH            R1, R0
LDR             R0, =off_6CE970
SXTH            R5, R2
SXTB            R4, R3
LDR             R0, [R0]
BL              sub_52F508
CMP             R4, #0
BEQ             loc_20CBA8
VMOV.F32        S0, S16
MOV             R1, R5
BL              sub_4FFEE0
B               loc_20CBB0
NOP
BL              sub_500010
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
