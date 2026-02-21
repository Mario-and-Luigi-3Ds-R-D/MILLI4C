PUSH            {R4-R6,LR}
BL              sub_476034
ADD             R1, R0, #0x400
VLDR            S0, =0.0
VLDR            S1, =8.0
ADD             R1, R1, #0x264
MOV             R3, #0xE
VSTM            R1, {S0-S1}
MOV             R2, #0xA
STR             R3, [R0,#0x66C]
VLDR            S2, =1.0
VLDR            S3, =0.3
ADD             R3, R0, #0x670
VLDR            S1, =200.0
ADD             R12, R0, #0x30 ; '0'
VSTM            R3, {S2-S3}
MOV             R3, #0
VLDR            S2, =120.0
STR             R2, [R0,#0x678]
VSTR            S2, [R1,#0x18]
VSTR            S1, [R1,#0x1C]
VSTR            S0, [R1,#0x20]
VLDR            S0, =105.0
MOV             R2, R12
VSTR            S0, [R1,#0x24]
ADD             R1, R0, #0x2C ; ','
MOV             LR, #9
LDR             R4, [R1]
LDR             R5, [R2]
ADD             R2, R2, #4
CMP             R4, R5
ADDCC           R1, R12, R3,LSL#2
SUBS            LR, LR, #1
ADD             R3, R3, #1
BNE             loc_277F7C
MOV             R2, #0x64 ; 'd'
STR             R2, [R0,#0x690]
MOV             R2, #0x12C
STR             R2, [R0,#0x694]
ADD             R2, R2, #0xC9
STR             R2, [R0,#0x698]
MOV             R2, #0x2BC
MOV             R1, #0
STR             R2, [R0,#0x69C]
ADD             R1, R1, #1
CMP             R1, #5
BCC             loc_277FC0
ADD             R2, R0, #0x234
VLDR            S0, =0.017453
ADD             R1, R0, #0x6A0
VLDM            R2, {S1-S2}
ADD             R2, R0, #0x244
VSUB.F32        S1, S1, S2
VMUL.F32        S1, S1, S0
VSTR            S1, [R1]
VLDR            S1, [R0,#0x238]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#8]
VLDR            S1, [R0,#0x234]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#4]
ADD             R1, R0, #0x400
VLDM            R2, {S1-S2}
ADD             R1, R1, #0x2AC
ADD             R2, R0, #0x250
VSUB.F32        S1, S1, S2
VMUL.F32        S1, S1, S0
VSTR            S1, [R1]
VLDR            S1, [R0,#0x248]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#8]
VLDR            S1, [R0,#0x244]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#4]
ADD             R1, R0, #0x400
VLDM            R2, {S1-S2}
ADD             R1, R1, #0x2B8
ADD             R2, R0, #0x25C
VSUB.F32        S1, S1, S2
VMUL.F32        S1, S1, S0
VSTR            S1, [R1]
VLDR            S1, [R0,#0x254]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#8]
VLDR            S1, [R0,#0x250]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#4]
ADD             R1, R0, #0x400
VLDM            R2, {S1-S2}
ADD             R1, R1, #0x2C4
ADD             R2, R0, #0x6D0
VSUB.F32        S1, S1, S2
VMUL.F32        S1, S1, S0
VSTR            S1, [R1]
VLDR            S1, [R0,#0x260]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#8]
VLDR            S1, [R0,#0x25C]
VMUL.F32        S1, S1, S0
VSTR            S1, [R1,#4]
ADD             R1, R0, #0x25C
VLDM            R1, {S1-S2}
ADD             R1, R0, #0x400
VSUB.F32        S1, S1, S2
VMUL.F32        S1, S1, S0
VSTR            S1, [R2]
VLDR            S1, [R0,#0x260]
VMUL.F32        S1, S1, S0
VSTR            S1, [R2,#8]
VLDR            S1, [R0,#0x25C]
VMUL.F32        S0, S1, S0
VSTR            S0, [R2,#4]
VLDR            S1, [R0,#0x240]
VLDR            S0, [R0,#0x24C]
VSUB.F32        S1, S0, S1
VSTR            S1, [R1,#0x2DC]
VLDR            S1, [R0,#0x258]
VSUB.F32        S0, S1, S0
VSTR            S0, [R1,#0x2E0]
VLDR            S0, [R0,#0x264]
VSUB.F32        S0, S0, S1
VSTR            S0, [R1,#0x2E4]
VLDR            S0, [R0,#0x288]
VMUL.F32        S0, S0, S0
VSTR            S0, [R1,#0x28C]
POP             {R4-R6,PC}
