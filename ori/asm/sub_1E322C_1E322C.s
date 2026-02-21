PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R0, #4
VPUSH           {D8-D9}
VMOV.F32        S18, S1
VMOV.F32        S17, S2
VMOV.F32        S16, S3
VMOV.F32        S19, S0
MOV             R0, R5
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
ADD             R5, R4, #0x38 ; '8'
MOV             R0, R5
BL              sub_5A18EC
VSTR            S18, [R5,#0xC]
VSTR            S18, [R5,#4]
ADD             R5, R4, #0x6C ; 'l'
MOV             R0, R5
BL              sub_5A18EC
VSTR            S17, [R5,#0xC]
ADD             R4, R4, #0xA0
VSTR            S17, [R5,#4]
MOV             R0, R4
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#4]
VPOP            {D8-D9}
POP             {R4-R6,PC}
