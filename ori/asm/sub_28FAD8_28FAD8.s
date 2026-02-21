PUSH            {R4,LR}
BL              sub_476CBC
ADD             R1, R0, #0x400
VLDR            S0, =0.0
ADD             R1, R1, #0x18
ADD             R3, R0, #0x400
VSTR            S0, [R1]
VLDR            S0, [R0,#0x3E8]
VLDR            S1, [R0,#0x3F4]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x1C
VMUL.F32        S0, S0, S1
ADD             R3, R3, #0xC
ADD             R2, R0, #0x400
ADD             R2, R2, #0x28 ; '('
VSTR            S0, [R1]
VLDR            S0, [R0,#0x3EC]
VLDR            S1, [R0,#0x3F8]
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#4]
VLDR            S0, [R0,#0x3F0]
VLDR            S1, [R0,#0x3FC]
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#8]
ADD             R1, R0, #0x400
VLDR            S1, [R3]
VLDR            S0, [R1]
VMUL.F32        S0, S0, S1
VSTR            S0, [R2]
VLDR            S0, [R1,#4]
VLDR            S1, [R3,#4]
VMUL.F32        S0, S0, S1
VSTR            S0, [R2,#4]
VLDR            S0, [R1,#8]
VLDR            S1, [R3,#8]
VMUL.F32        S0, S0, S1
VSTR            S0, [R2,#8]
POP             {R4,PC}
