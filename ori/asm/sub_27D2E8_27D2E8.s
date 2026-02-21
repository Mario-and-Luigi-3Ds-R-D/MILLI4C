PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
ADD             R0, R0, #0x400
BL              sub_5A18EC
LDR             R0, =off_6CDF98
VLDR            S1, =0.5
LDR             R0, [R0]
VMUL.F32        S1, S16, S1
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x38]
ADD             R0, R4, #0x400
BL              sub_5A14A4
LDR             R0, [R4,#0x71C]
CMP             R0, #0
BEQ             loc_27D344
LDR             R1, [R0]
LDR             R1, [R1,#0x30]
VPOP            {D8}
POP             {R4,LR}
BX              R1
VPOP            {D8}
POP             {R4,PC}
