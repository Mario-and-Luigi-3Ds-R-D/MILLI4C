PUSH            {R4-R6,LR}
MOV             R5, #0
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S17, S0
STRB            R5, [R0,#0x7F]
ADD             R0, R0, #0x160
BL              sub_592EDC
LDR             R1, [R4,#0x2B4]
ADD             R0, R4, #0x160
BL              sub_536F10
LDRB            R1, [R4,#0x78]
MOV             R3, #0x80
MOV             R2, #0
ADD             R0, R4, #0x160
BL              sub_11DCDC
MOV             R0, #1
ADD             R2, R4, #0x12C
STRB            R0, [R4,#0x270]
STRB            R5, [R4,#0x1D3]
LDM             R2, {R2,R3,R12}
ADD             R6, R4, #0x280
ADD             R0, R4, #0x128
ADD             R1, R4, #0x27C
STM             R6, {R2,R3,R12}
ADD             R2, R4, #0x138
ADD             R6, R4, #0x28C
LDM             R2, {R2,R3,R12}
VLDR            S16, =1.0
STM             R6, {R2,R3,R12}
ADD             R2, R4, #0x144
ADD             R6, R4, #0x298
LDM             R2, {R2,R3,R12}
STM             R6, {R2,R3,R12}
ADD             R2, R4, #0x150
ADD             R6, R4, #0x2A4
LDM             R2, {R2,R3,R12}
STM             R6, {R2,R3,R12}
LDRB            R0, [R0,#0x34]
STRB            R0, [R1,#0x34]
VLDR            S0, [R4,#0x2AC]
ADD             R0, R4, #0x2B8
VSUB.F32        S0, S0, S16
VSTR            S0, [R4,#0x2AC]
BL              sub_5A18EC
VSTR            S16, [R4,#0x2C4]
VSTR            S16, [R4,#0x2BC]
VLDR            S16, =8.0
VMOV.F32        S0, S17
ADD             R0, R4, #0x2B8
VMOV.F32        S1, S16
BL              sub_5A12F8
ADD             R0, R4, #0x2EC
BL              sub_5A18EC
VMOV.F32        S1, S16
VLDR            S16, =0.0
VLDR            S17, =255.0
ADD             R0, R4, #0x2EC
VMOV.F32        S0, S16
VSTR            S17, [R4,#0x2F8]
VSTR            S17, [R4,#0x2F0]
BL              sub_5A12F8
ADD             R0, R4, #0x320
BL              sub_5A18EC
VSTR            S16, [R4,#0x32C]
VSTR            S16, [R4,#0x324]
VMOV.F32        S2, S17
VMOV.F32        S0, S16
VPOP            {D8}
ADD             R0, R4, #0x320
POP             {R4-R6,LR}
VLDR            S1, =4.0
B               sub_5A2CAC
