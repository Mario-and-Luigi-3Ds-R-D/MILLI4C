PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VLDR            S0, [R0,#4]
VLDR            S1, [R0,#0xB8]
VLDR            S19, =0.0
VLDR            S18, =1.3333
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
LDRBNE          R0, [R4,#0x4D]
CMPNE           R0, #0
BEQ             loc_1E0BD0
LDRSB           R0, [R4,#0x4C]
VLDR            S1, [R4,#0x1C]
VLDR            S16, =2.0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S1, S0
VLDR            S1, =0.75
VMUL.F32        S17, S0, S1
VLDR            S0, [R4,#0x10]
VMOV.F32        S1, S16
VADD.F32        S0, S0, S16
BL              sub_5F63A4
VADD.F32        S2, S17, S16
VMOV.F32        S1, S0
VLDR            S0, [R4,#4]
VSTR            S1, [R4,#8]
VMOV.F32        S1, S16
VADD.F32        S0, S0, S2
BL              sub_5F63A4
VSTR            S0, [R4,#4]
VMOV.F32        S2, S19
VMOV.F32        S1, S18
VPOP            {D8-D9}
ADD             R0, R4, #0x58 ; 'X'
POP             {R4,LR}
B               sub_1C839C
LDR             R0, [R4,#0x1A0]
VMOV.F32        S16, S19
BIC             R0, R0, #8
STR             R0, [R4,#0x1A0]
VLDR            S0, [R4,#0xB4]
ADD             R0, R4, #0x10
VSTR            S0, [R4,#8]
VSTR            S1, [R4,#4]
VMOV.F32        S2, S16
VMOV.F32        S1, S18
BL              sub_1C839C
VMOV.F32        S2, S16
VMOV.F32        S1, S18
VLDR            S0, [R4,#4]
ADD             R0, R4, #0x58 ; 'X'
BL              sub_1C839C
VSTR            S16, [R4,#0xBC]
MOV             R2, #0x18
MOV             R1, #0
ADD             R0, R4, #0xC0
BL              sub_110BE4
MOV             R0, #0
STRB            R0, [R4,#0xD8]
VPOP            {D8-D9}
POP             {R4,PC}
