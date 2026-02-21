PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D11}
VMOV.F32        S18, S1
VMOV.F32        S22, S0
VMOV.F32        S19, S2
VMOV.F32        S20, S3
VLDR            S0, [R0,#8]
VLDR            S23, =0.5
VMOV.F32        S21, S4
VADD.F32        S0, S0, S18
ADD             R0, R0, #4
VMUL.F32        S17, S0, S23
BL              sub_5A18EC
VLDR            S0, [R4,#0x3C]
VSTR            S17, [R4,#0x10]
VSTR            S17, [R4,#8]
VADD.F32        S0, S0, S19
ADD             R0, R4, #0x38 ; '8'
VMUL.F32        S16, S0, S23
BL              sub_5A18EC
VLDR            S0, [R4,#0x70]
VSTR            S16, [R4,#0x44]
VSTR            S16, [R4,#0x3C]
VADD.F32        S0, S0, S20
ADD             R0, R4, #0x6C ; 'l'
VMUL.F32        S17, S0, S23
BL              sub_5A18EC
VLDR            S0, [R4,#0xA4]
VSTR            S17, [R4,#0x78]
VSTR            S17, [R4,#0x70]
VADD.F32        S0, S0, S21
ADD             R0, R4, #0xA0
VMUL.F32        S16, S0, S23
BL              sub_5A18EC
VSTR            S16, [R4,#0xAC]
VSTR            S16, [R4,#0xA4]
VLDR            S17, =90.0
VLDR            S16, =-90.0
VMOV.F32        S1, S22
VMOV.F32        S3, S17
VMOV.F32        S2, S16
VMOV.F32        S0, S18
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_5A15F4
VMOV.F32        S3, S17
VMOV.F32        S2, S16
VMOV.F32        S1, S22
VMOV.F32        S0, S19
MOV             R1, #0
ADD             R0, R4, #0x38 ; '8'
BL              sub_5A15F4
VMOV.F32        S3, S17
VMOV.F32        S2, S16
VMOV.F32        S1, S22
VMOV.F32        S0, S20
MOV             R1, #0
ADD             R0, R4, #0x6C ; 'l'
BL              sub_5A15F4
VMOV.F32        S3, S17
VMOV.F32        S2, S16
VMOV.F32        S1, S22
VMOV.F32        S0, S21
VPOP            {D8-D11}
ADD             R0, R4, #0xA0
MOV             R1, #0
POP             {R4,LR}
B               sub_5A15F4
