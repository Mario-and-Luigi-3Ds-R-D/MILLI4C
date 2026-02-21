VMOV.F32        S1, S0
PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S2, =0.0
VLDR            S0, =-10.0
VPUSH           {D8-D9}
VCMP.F32        S1, S2
VLDR            S16, =10.0
VLDR            S18, =-60.0
VLDR            S17, =-30.0
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E30A4
VMOV.F32        S19, S0
ADD             R5, R4, #4
MOV             R0, R5
BL              sub_5A18EC
VMOV.F32        S0, S19
VSTR            S0, [R5,#0xC]
VSTR            S0, [R5,#4]
ADD             R5, R4, #0x38 ; '8'
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
ADD             R5, R4, #0x6C ; 'l'
MOV             R0, R5
BL              sub_5A18EC
VSTR            S18, [R5,#0xC]
ADD             R4, R4, #0xA0
VSTR            S18, [R5,#4]
MOV             R0, R4
BL              sub_5A18EC
VSTR            S17, [R4,#0xC]
VSTR            S17, [R4,#4]
VPOP            {D8-D9}
POP             {R4-R6,PC}
VMOV.F32        S19, S1
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_5A1598
VMOV.F32        S1, S19
VMOV.F32        S0, S16
MOV             R1, #0
ADD             R0, R4, #0x38 ; '8'
BL              sub_5A1598
VMOV.F32        S1, S19
VMOV.F32        S0, S18
MOV             R1, #0
ADD             R0, R4, #0x6C ; 'l'
BL              sub_5A1598
VMOV.F32        S1, S19
VMOV.F32        S0, S17
VPOP            {D8-D9}
ADD             R0, R4, #0xA0
MOV             R1, #0
POP             {R4-R6,LR}
B               sub_5A1598
