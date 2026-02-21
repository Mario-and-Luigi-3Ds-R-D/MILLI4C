PUSH            {R4-R6,LR}
ADD             R5, R0, #0x800
ADD             R5, R5, #0x38 ; '8'
VLDR            S0, [R0,#0x108]
VLDR            S1, [R5]
MOV             R4, R0
ADD             R0, R0, #0x108
VADD.F32        S0, S0, S1
ADD             R6, R4, #0x800
ADD             R6, R6, #0x44 ; 'D'
VSTR            S0, [R0]
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R5,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R5,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#8]
VLDR            S0, [R4,#0x118]
VLDR            S1, [R6]
MOV             R0, R4
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
BL              sub_57F660
VLDR            S0, [R4,#0x108]
VLDR            S1, [R5]
MOV             R1, R0
MOV             R0, R4
VSUB.F32        S0, S0, S1
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
MOV             R0, R1
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#8]
POP             {R4-R6,PC}
