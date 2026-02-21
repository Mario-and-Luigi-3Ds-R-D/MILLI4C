PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R0, R0, #0x15000
MOV             R5, R1
MOV             R11, R2
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R0,#0x1CC]
CMP             R0, #0
BEQ             loc_164094
LDR             R1, =0x13D5C
VLDR            S16, =0.0
ADD             R8, R4, #0x16C00
ADD             R9, R4, #0x16800
LDR             R3, [R1,R4]
ADD             R10, R4, #0x10000
MOV             R0, #0
ADD             R8, R8, #0x2C ; ','
ADD             R9, R9, #0x3D4
ADD             R10, R10, #0x6B00
ADD             R7, R4, #0x13C00
ADD             R6, R4, #0x16800
ADD             R1, R0, R0,LSL#2
ADD             R1, R1, R0,LSL#3
ADD             R2, R3, R1,LSL#2
LDRH            R1, [R2]
TST             R1, #2
BEQ             loc_163FA0
CMP             R2, R5
BNE             loc_163FA0
ADD             R2, R4, R0
ADD             R2, R2, #0x16C00
LDRB            R2, [R2,#0x30]
CMP             R2, #0
BEQ             loc_163FA0
LDR             R1, =0x16BF4
MOV             R0, #1
STRB            R0, [R1,R4]
ADD             R0, R5, #8
VLDM            R5, {S0-S1}
ADD             R5, R5, #0x20 ; ' '
LDM             R0, {R0-R3,R12,LR}
VSTR            S0, [R6,#0x3F8]
VSTR            S1, [R6,#0x3FC]
STR             R0, [R6,#0x400]
ADD             R0, R6, #0x400
ADD             R0, R0, #4
STM             R0, {R1-R3,R12,LR}
ADD             LR, R6, #0x400
LDM             R5, {R0-R3,R12}
ADD             LR, LR, #0x18
STM             LR, {R0-R3,R12}
ADD             R0, R4, #0x15000
MOV             R2, SP
STRB            R11, [R8]
VSTR            S16, [SP,#0x40+var_40]
VSTR            S16, [SP,#0x40+var_3C]
VSTR            S16, [SP,#0x40+var_38]
VSTR            S16, [SP,#0x40+var_34]
MOV             R1, #2
ADD             R0, R0, #0x13C
BL              sub_19DA04
MOV             R0, #0
STR             R0, [R9]
VSTR            S16, [R10,#0xD8]
VSTR            S16, [R10,#0xDC]
VLDR            S1, [R6,#0x3CC]
VLDR            S0, [R6,#0x3C0]
VLDR            S2, [R6,#0x3D8]
VLDR            S3, [R6,#0x3E4]
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S2, S3
VMUL.F32        S0, S0, S1
VSTR            S0, [R7,#0x48]
VLDR            S1, [R6,#0x3C4]
VLDR            S2, [R6,#0x3D0]
VLDR            S0, [R6,#0x3DC]
VLDR            S3, [R6,#0x3E8]
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S0, S3
VMUL.F32        S0, S1, S0
B               loc_164084
TST             R1, #1
BNE             loc_163FB4
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_163EB0
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xF10
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_164094
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E4614
ADD             R0, R0, #0x23000
ADD             R0, R0, #0x5D0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_164094
LDR             R1, =0x16BF5
MOV             R0, #1
ADD             LR, R6, #0x3F8
STRB            R0, [R4,R1]
ADD             R0, R5, #8
VLDM            R5, {S0-S1}
ADD             R5, R5, #0x20 ; ' '
LDM             R0, {R0-R4,R12}
VSTM            LR, {S0-S1}
ADD             LR, R6, #0x400
STM             LR, {R0-R4,R12}
ADD             LR, R6, #0x400
ADD             LR, LR, #0x18
LDM             R5, {R0-R3,R12}
STM             LR, {R0-R3,R12}
MOV             R0, #0
STRB            R11, [R8]
STR             R0, [R9]
VSTR            S16, [R10,#0xD8]
VSTR            S16, [R10,#0xDC]
VLDR            S3, [R6,#0x3CC]
VLDR            S0, [R6,#0x3D8]
VLDR            S1, [R6,#0x3E4]
VLDR            S2, [R6,#0x3C0]
VMUL.F32        S0, S0, S1
VMUL.F32        S2, S2, S3
VMUL.F32        S0, S2, S0
VSTR            S0, [R7,#0x48]
VLDR            S0, [R6,#0x3C4]
VLDR            S2, [R6,#0x3D0]
VLDR            S1, [R6,#0x3DC]
VLDR            S3, [R6,#0x3E8]
VMUL.F32        S0, S0, S2
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S1
VSTR            S0, [R7,#0x4C]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
ADD             SP, SP, #0x14
MOV             R2, R11
VPOP            {D8}
MOV             R1, R5
MOV             R0, R4
POP             {R4-R11,LR}
B               sub_18D790
