PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R6, =off_6CDC90
VPUSH           {D8}
SUB             SP, SP, #0x24
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_1FE870
CMP             R0, #1
BEQ             loc_1FE9F8
CMP             R0, #2
BNE             loc_1FE864
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
BNE             loc_1FE864
MOV             R0, #2
STRB            R0, [R4,#0xD]
STRB            R7, [R4,#0xE]
LDR             R0, [R6]
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6E0
LDR             R0, [R0,#0x1C]
LDR             R5, [R0,#-0xC]
MOV             R0, R5
BL              sub_1FC798
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
ADD             R0, R5, #4
BL              sub_14C548
MOV             R1, R4
MOV             R0, R5
BL              sub_1FC858
ADD             R4, R4, #0x400
LDR             R0, [R6]
ADD             R4, R4, #0xC
BL              sub_1F9D54
MOV             R0, #1
VSTR            S0, [R4]
STR             R0, [R4,#4]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1FE864
LDRB            R0, [R4,#0xC]
MOV             R2, #0
CMP             R0, #0
LDR             R0, [R6]
LDRNE           R1, [R0,#0x20]
LDREQ           R1, [R0,#0x24]
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R2, #0xFFFFFFFF
MOV             R1, #2
ADD             R0, R4, #0x10
BL              sub_5C55C8
VMOV            S0, R0
LDRB            R0, [R4,#0xC]
MOV             R2, #0
CMP             R0, #0
LDR             R0, [R6]
VCVT.F32.S32    S16, S0
LDREQ           R1, [R0,#0x50]
LDRNE           R1, [R0,#0x4C]
ADD             R0, R4, #0x10
BL              sub_14E6E0
LDRB            R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #1
CMP             R0, #0
MOVEQ           R1, #5
MOVNE           R1, #3
ADD             R0, R4, #0x10
BL              sub_14C548
MOV             R2, #0xFFFFFFFF
MOV             R1, R2
ADD             R0, R4, #0x10
BL              sub_5C55C8
VMOV            S0, R0
LDR             R3, [R6]
LDR             R0, =0x12700
VLDR            S2, [R4,#0x3C]
VLDR            S1, [R4,#0x38]
ADD             R12, SP, #0x40+var_34
LDR             R5, [R0,R3]
LDRB            R0, [R4,#0xC]
VCVT.F32.S32    S0, S0
MOV             R2, #0
CMP             R0, #0
ADDEQ           R0, R5, #0x1F4
ADDNE           R0, R5, #0x200
ADD             R1, SP, #0x40+var_34
VLDM            R0!, {S5}
VLDM            R0, {S3-S4}
MOV             R0, R3
VADD.F32        S16, S0, S16
VLDR            S0, [R4,#0x34]
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VADD.F32        S0, S0, S5
VSTM            R12, {S0-S2}
BL              sub_1F9C48
LDR             R0, [R6]
VMOV.F32        S0, S16
ADD             R1, R5, #0x20C
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6E0
LDR             R0, [R0,#0x1C]
LDR             R0, [R0,#-0xC]
ADD             R0, R0, #0x1E0
BL              sub_5A367C
VLDR            S2, =0.0
VLDR            S0, =1.0
VSTR            S2, [SP,#0x40+var_28]
VSTR            S0, [SP,#0x40+var_24]
VSTR            S2, [SP,#0x40+var_20]
LDR             R0, [R5,#0x218]
VMOV.F32        S1, S16
ADD             R1, SP, #0x40+var_28
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R6]
VLDR            S0, [SP,#0x40+var_30]
VLDR            S2, [SP,#0x40+var_38]
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6E0
VNEG.F32        S0, S0
LDR             R0, [R0,#0x1C]
LDR             R0, [R0,#-0xC]
ADD             R0, R0, #0x1E0
BL              sub_5A3264
STRB            R7, [R4,#0x103]
LDRB            R0, [R4,#0xE]
ADD             R0, R0, #1
STRB            R0, [R4,#0xE]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R0, R4, #0x10
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1FE864
LDRB            R0, [R4,#0xC]
MOV             R2, #0
CMP             R0, #0
LDR             R0, [R6]
LDRNE           R1, [R0,#0x20]
LDREQ           R1, [R0,#0x24]
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #2
ADD             R0, R4, #0x10
BL              sub_14C548
LDRB            R0, [R4,#0xE]
ADD             R0, R0, #1
STRB            R0, [R4,#0xE]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R7,PC}
