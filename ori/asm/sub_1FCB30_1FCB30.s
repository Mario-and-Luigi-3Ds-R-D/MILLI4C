PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R7, #0
ADD             R6, R4, #0x400
LDR             R9, =off_6CE970
VPUSH           {D8-D9}
SUB             SP, SP, #0x24
LDRB            R0, [R0,#0x3F8]
VLDR            S16, =0.0
CMP             R0, #1
BEQ             loc_1FCBEC
CMP             R0, #2
VLDR            S17, =10.0
VLDR            S18, =-4.0
BEQ             loc_1FCDF0
CMP             R0, #4
BEQ             loc_1FCEF4
CMP             R0, #5
BNE             loc_1FCBE0
LDR             R0, [R4]
ADD             R0, R0, #0x400
ADD             R0, R0, #4
LDR             R3, [R0,#4]
CMP             R3, #0
BEQ             loc_1FCBA0
LDRB            R0, [R0]
BIC             R2, R2, #0xFF
ORR             R2, R2, R0
SXTB            R0, R2
CMP             R0, #0
BEQ             loc_1FCBE0
MOV             R0, R4
BL              sub_1FC798
ADD             R0, SP, #0x50+var_4C
ADD             R3, SP, #0x50+var_4C
VSTM            R0, {S16-S18}
ADD             R2, R4, #4
LDR             R0, [R9]
MOV             R1, #0x3C ; '<'
STR             R7, [SP,#0x50+var_50]
BL              sub_52AE88
LDR             R1, [R4]
MOV             R0, R4
BL              sub_1FC858
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
ADD             R0, R4, #0x1E0
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1FCBE0
LDR             R8, =off_6CDC90
LDRSB           R1, [R6,#0x24]
LDR             R0, [R8]
BL              sub_1FA668
LDRSB           R1, [R6,#0x24]
MOV             R5, R0
LDR             R2, =0x300C5
LDR             R0, =0xFFE683CC
ORRS            R1, R1, R5
BEQ             loc_1FCCDC
LDR             R12, [R9]
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#0x418]
CMP             R0, #0
BEQ             loc_1FCC50
BL              sub_533330
STR             R7, [R4,#0x418]
MOV             R0, #4
STRB            R0, [R4,#0x3F8]
LDR             R0, [R8]
VLDR            S0, =1.0
ADD             R1, SP, #0x50+var_44
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R6, [R0]
VSTR            S16, [SP,#0x50+var_44]
VSTR            S0, [SP,#0x50+var_40]
VSTR            S16, [SP,#0x50+var_3C]
LDR             R0, [R6,#0x230]
STR             R0, [SP,#0x50+var_50]
LDR             R0, [R6,#0x234]
VLDR            S0, [R4,#0x2C]
VLDR            S2, [SP,#0x50+var_50]
VMOV            S1, R0
VNEG.F32        S0, S0
ADD             R0, R4, #0x1E0
VCVT.F32.U32    S1, S1
BL              sub_5A3264
LDR             R0, [R6,#0x22C]
ADD             R1, SP, #0x50+var_38
STR             R0, [SP,#0x50+var_50]
VSTR            S16, [SP,#0x50+var_38]
VSTR            S16, [SP,#0x50+var_34]
STR             R0, [SP,#0x50+var_30]
LDR             R0, [R6,#0x234]
VMOV            S0, R0
ADD             R0, R4, #0x1E0
VCVT.F32.U32    S0, S0
BL              sub_5A367C
NOP
NOP
B               loc_1FCDE0
LDR             R12, [R9]
CMP             R5, #0
LDREQ           R2, =0x300C2
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #2
STRB            R0, [R4,#0x3F8]
LDR             R1, [R8]
LDR             R0, [R4]
CMP             R5, #0
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x2700
LDRB            R2, [R0,#0xC]
LDR             R1, [R1]
BEQ             loc_1FCD5C
CMP             R2, #0
ADDEQ           R1, R1, #0x278
ADDNE           R1, R1, #0x284
VLDR            S0, [R0,#0x34]
VLDR            S2, [R0,#0x38]
VLDR            S1, [R0,#0x3C]
VLDM            R1!, {S5}
VLDM            R1, {S3-S4}
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VSTR            S0, [SP,#0x50+var_48]
VSTR            S2, [SP,#0x50+var_44]
VSTR            S1, [SP,#0x50+var_40]
B               loc_1FCD94
CMP             R2, #0
ADDNE           R1, R1, #0x26C
ADDEQ           R1, R1, #0x260
VLDR            S2, [R0,#0x34]
ADD             R0, R0, #0x38 ; '8'
VLDM            R1!, {S5}
ADD             R2, SP, #0x50+var_44
VLDM            R0, {S0-S1}
VADD.F32        S2, S2, S5
VLDM            R1, {S3-S4}
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTR            S2, [SP,#0x50+var_48]
VSTM            R2, {S0-S1}
LDR             R0, [R8]
BL              sub_5C8950
VMOV.F32        S16, S0
CMP             R5, #0
MOVNE           R0, R4
BLNE            sub_1FC798
ADD             R2, SP, #0x50+var_48
VMOV.F32        S0, S16
MOV             R1, #0
ADD             R0, R4, #0x1E0
BL              sub_5A2074
LDR             R0, [R4,#0x208]
ADD             R7, R4, #0x400
ADD             R7, R7, #0xC
ADD             R1, R0, #0x1C
LDM             R1, {R1-R3}
STM             R7, {R1-R3}
LDR             R0, [R0,#0x18]
STR             R0, [R6,#8]
STRB            R5, [R4,#0x425]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
ADD             R0, R4, #0x1E0
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1FCBE0
LDRB            R0, [R6,#0x25]
CMP             R0, #0
BEQ             loc_1FCE70
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14C548
LDR             R0, [R4,#0x418]
CMP             R0, #0
BEQ             loc_1FCE38
BL              sub_533330
STR             R7, [R4,#0x418]
MOV             R0, #5
STRB            R0, [R4,#0x3F8]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
DCD off_6CE970
DCFS 0.0
DCFS 10.0
DCFS -4.0
DCD off_6CDC90
DCD 0x300C5
DCD 0xFFE683CC
DCFS 1.0
DCD 0x300C2
LDR             R0, [R4]
BL              sub_1FDF94
LDR             R0, [R4]
ADD             R0, R0, #0x400
ADD             R0, R0, #4
LDR             R2, [R0,#4]
CMP             R2, #0
BEQ             loc_1FCE9C
LDRB            R0, [R0]
BIC             R2, R5, #0xFF
ORR             R5, R2, R0
SXTB            R0, R5
CMP             R0, #0
BNE             loc_1FCBB4
LDR             R0, [R4,#0x208]
VLDR            S1, =1000.0
MOV             R2, SP
MOV             R1, #0
VLDR            S0, [R0,#0x18]
ADD             R0, R0, #0x1C
VLDM            R0, {S2-S4}
ADD             R0, R4, #0x1E0
VMUL.F32        S2, S2, S1
VMUL.F32        S3, S3, S1
VMUL.F32        S1, S4, S1
VSTR            S1, [SP,#0x50+var_48]
VSTMEA          SP, {S2-S3}
BL              sub_5A25D0
MOV             R0, #3
STRB            R0, [R4,#0x3F8]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
ADD             R0, R4, #0x1E0
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, #6
BNE             loc_1FCBE0
B               loc_1FCE3C
