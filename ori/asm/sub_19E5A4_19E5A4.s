PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R8, =off_6CE388
VPUSH           {D8-D9}
LDR             R0, [R8]
LDR             R0, [R0,#0x4C8]
MOV             R1, R0
LDR             R0, [R8]
BL              sub_5C6858
BL              sub_19E028
STRB            R0, [R5,#0x28]
LDR             R2, =dword_6D1F40
MOV             R1, #3
MOV             R0, #1
BL              sub_47EADC
LDRB            R7, [R5,#0x28]
SUBS            R6, R0, #0
MOV             R4, #0
BLS             loc_19E608
MOV             R0, R7
BL              sub_19E054
ADD             R4, R4, #1
CMP             R6, R4
MOV             R7, R0
BHI             loc_19E5F0
LDR             R0, [R8]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x58]
MOV             R1, R7
STR             R0, [R5,#0x2C]
LDRB            R2, [R5,#0x28]
ADD             R0, R5, #8
BL              sub_19DD64
ADD             R0, R5, #8
NOP
BL              sub_5C6460
SUB             R1, R0, #1
ADD             R0, R5, #8
BL              sub_5C6498
STRB            R0, [R5,#0x28]
ADD             R0, R5, #8
BL              sub_5C6410
MOV             R4, R0
ADD             R0, R5, #8
BL              sub_5C6460
SUB             R0, R0, #1
CMP             R4, R0
LDR             R0, [R8]
BNE             loc_19E67C
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0x5C]
VCVT.F32.U32    S0, S0
VSTR            S0, [R5,#0x2C]
B               loc_19E68C
NOP
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x58]
STR             R0, [R5,#0x2C]
MOV             R1, #0
ADD             R0, R5, #8
BL              sub_5C646C
LDR             R2, [R5,#4]
MOV             R1, R0
MOV             R0, R2
BL              sub_14E984
MOV             R1, #1
ADD             R0, R5, #8
BL              sub_5C646C
MOV             R4, R0
MOV             R1, #0
ADD             R0, R5, #8
BL              sub_5C646C
VLDM            R4, {S0-S2}
VLDM            R0, {S3-S5}
MOV             R0, #5
STRB            R0, [R5,#0x20]
LDR             R4, [R5,#4]
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S5
VLDR            S4, =1.0
LDR             R0, [R8]
ADD             R4, R4, #0x39C
VMUL.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S2, S2
VSQRT.F32       S5, S3
VDIV.F32        S3, S4, S5
VMUL.F32        S16, S0, S3
VMUL.F32        S17, S1, S3
VMUL.F32        S18, S2, S3
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x6BC]
VLDR            S0, =0.0
VMOV.F32        S2, S18
VSTR            S0, [R4]
STR             R0, [R4,#4]
LDR             R0, [R5,#4]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
LDR             R0, [R0,#0x410]
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_1A53D0
