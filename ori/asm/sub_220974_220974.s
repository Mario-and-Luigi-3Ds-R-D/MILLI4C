PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
CMP             R1, #0
VPUSH           {D8-D9}
MOV             R5, R2
LDR             R0, [R0,#4]
VLDR            S17, =0.5
VLDR            S16, =30.0
BEQ             loc_2209C8
MOV             R1, R2
BL              sub_508930
VMOV.F32        S1, S16
LDR             R0, [R6]
VMOV.F32        S18, S1
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S18
VLDR            S0, =560.0
MOV             R1, #0
BL              sub_161074
B               loc_2209F4
VLDR            S17, =1.0
MOV             R1, R2
BL              sub_509304
VMOV.F32        S1, S16
LDR             R0, [R6]
VMOV.F32        S18, S1
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S18
VLDR            S0, =680.0
MOV             R1, #0
BL              sub_161074
CMP             R5, #0
BEQ             loc_220A20
LDR             R0, [R4,#4]
VMOV.F32        S1, S16
VMOV.F32        S0, S17
VPOP            {D8-D9}
ADD             R0, R0, #0x800
ADD             R0, R0, #0x28 ; '('
POP             {R4-R6,LR}
MOV             R1, #0
B               sub_5A1598
LDR             R0, [R4,#4]
ADD             R4, R0, #0x800
ADD             R4, R4, #0x28 ; '('
MOV             R0, R4
BL              sub_5A18EC
VSTR            S17, [R4,#0xC]
VSTR            S17, [R4,#4]
VPOP            {D8-D9}
POP             {R4-R6,PC}
