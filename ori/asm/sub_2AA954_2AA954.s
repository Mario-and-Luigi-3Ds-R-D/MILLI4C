PUSH            {R0-R2,R4-R7,LR}
MOV             R4, R0
VPUSH           {D8-D9}
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BEQ             loc_2AAAA4
ADD             R5, R4, #0x800
ADD             R5, R5, #0x38 ; '8'
VLDR            S0, [R4,#0x108]
VLDR            S1, [R5]
ADD             R6, R4, #0x800
ADD             R6, R6, #0x44 ; 'D'
VADD.F32        S0, S0, S1
LDR             R7, =off_6D1648
ADD             R0, R4, #0x108
VSTR            S0, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R5,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10C]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R5,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x110]
VLDR            S0, [R4,#0x118]
VLDR            S1, [R6]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x118]
VLDR            S0, [R4,#0x11C]
VLDR            S1, [R6,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x11C]
VLDR            S0, [R4,#0x120]
VLDR            S1, [R6,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x120]
VLDM            R0, {S16-S18}
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x30+var_18
ADD             R2, SP, #0x30+var_1C
MOV             R1, R4
BL              sub_21DC20
ADD             R3, SP, #0x30+var_1C
MOV             R0, R4
LDM             R3, {R1,R2}
BL              sub_573788
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x30+var_18
ADD             R2, SP, #0x30+var_1C
MOV             R1, R4
BL              sub_21DF60
ADD             R0, R4, #0x108
VSTM            R0, {S16-S18}
MOV             R0, R4
VLDR            S1, [R5]
VSUB.F32        S0, S16, S1
VSTR            S0, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R5,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x10C]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R5,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x110]
VLDR            S0, [R4,#0x118]
VLDR            S1, [R6]
ADD             R4, R4, #0x118
VSUB.F32        S0, S0, S1
VSTR            S0, [R4]
VLDR            S0, [R0,#0x11C]
VLDR            S1, [R6,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R0,#0x120]
VLDR            S1, [R6,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#8]
VPOP            {D8-D9}
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
