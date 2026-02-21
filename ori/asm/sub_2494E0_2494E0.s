PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R7, R1
LDR             R9, =off_6CDD80
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
LDR             R0, [R9]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x2B4]
CMP             R1, #0
BEQ             loc_2496AC
ADD             R0, R0, #0xC00
ADD             R1, R4, #0xEC
ADD             R0, R0, #0x2D4
NOP
MOV             R0, #9
MOV             R8, #0
STRB            R0, [R4,#0x4E8]
STRB            R8, [R4,#0x4EA]
LDR             R6, [R4,#8]
LDR             R0, [R6,#8]
CMP             R0, R6
BEQ             loc_249578
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R5, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R8, [R0,#8]
STR             R8, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R5,#8]
CMP             R0, R6
BNE             loc_24953C
ADD             R2, R4, #0x40 ; '@'
VLDR            S17, =1.0
VLDR            S16, =0.0
MOV             R1, R7
VMOV.F32        S1, S17
VMOV.F32        S2, S16
VMOV.F32        S0, S17
MOV             R0, R2
BL              sub_43A868
MOV             R0, R4
NOP
BL              sub_248B74
ADD             R0, R4, #0x40 ; '@'
VLDR            S0, [R4,#0x48]
ADD             R1, R4, #0x400
VLDM            R0, {S2-S3}
ADD             R0, R4, #0x40 ; '@'
VMUL.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VMLA.F32        S1, S0, S0
VSQRT.F32       S4, S1
VSTR            S4, [R1,#0x150]
VDIV.F32        S1, S17, S4
VMUL.F32        S0, S0, S1
VMUL.F32        S3, S3, S1
VMUL.F32        S2, S2, S1
VSTR            S0, [R4,#0x48]
VLDR            S0, =1000.0
VSTM            R0, {S2-S3}
VLDR            S1, [R4,#0x40]
VMUL.F32        S1, S1, S0
VSTR            S1, [R4,#0x40]
VLDR            S1, [R4,#0x44]
VMUL.F32        S1, S1, S0
VSTR            S1, [R4,#0x44]
VLDR            S1, [R4,#0x48]
VMUL.F32        S0, S1, S0
VSTR            S0, [R4,#0x48]
STR             R8, [R4,#0x548]
LDR             R0, [R9]
LDR             R0, [R0,#8]
LDR             R2, [R0,#0x2B8]
STR             R2, [SP,#0x40+var_40]
VMOV            S0, R2
VLDR            S1, [R1,#0x14C]
ADD             R2, SP, #0x40+var_38
VSTM            R2, {S16-S17}
VSTR            S16, [SP,#0x40+var_30]
LDR             R1, [R4,#0x548]
VMUL.F32        S18, S0, S1
VMOV.F32        S0, S16
ADD             R0, R0, R1,LSL#2
LDR             R1, [R0,#0x2C4]
STR             R1, [SP,#0x40+var_3C]
LDR             R0, [R0,#0x2D0]
VMOV            S2, R1
MOV             R1, #1
VMOV            S1, R0
STR             R0, [SP,#0x40+var_40]
ADD             R0, R4, #0x2C8
BL              sub_5A28C4
MOV             R1, #0
ADD             R0, R4, #0x2C8
BL              sub_5A2640
VMOV.F32        S0, S18
ADD             R2, R4, #0x40 ; '@'
MOV             R1, #0
ADD             R0, R4, #0x2C8
BL              sub_5A25D0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x17
ADD             R0, R4, #0xEC
BL              sub_14C548
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R9,PC}
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R9,LR}
B               sub_249408
