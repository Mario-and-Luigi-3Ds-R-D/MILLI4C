PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R6, #0
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x5FC]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_25C7A8
LDR             R0, [R4,#0x7EC]
CMP             R0, #0
BEQ             loc_25C798
BL              sub_533330
STR             R6, [R4,#0x7EC]
LDR             R0, [R4,#0x404]
CMP             R0, #0
ADDNE           R0, R4, #0x3F8
BLNE            sub_528B1C
LDRB            R0, [R4,#1]
VLDR            S18, =1.0
VLDR            S17, =0.000015259
ADD             R5, R4, #0x800
CMP             R0, #0
ADD             R5, R5, #8
ADD             R7, R4, #0x800
BEQ             loc_25C960
CMP             R0, #1
BNE             loc_25C954
ADD             R0, R4, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_25CA60
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S19, S0, S17
BL              sub_546DB0
VMOV            S1, R0
VLDR            S2, [R5,#0x18]
VLDR            S0, [R5,#0xC]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S1, S1
VMLS.F32        S19, S1, S17
VMLA.F32        S0, S19, S2
VSTR            S0, [R5,#0xC]
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S19, S0, S17
BL              sub_546DB0
VMOV            S1, R0
VLDR            S2, [R5,#0x18]
VLDR            S0, [R5,#0x14]
ADD             R6, R4, #0x800
ADD             R6, R6, #0x14
ADD             R0, R4, #0x28 ; '('
VCVT.F32.U32    S1, S1
MOV             R1, SP
VMLS.F32        S19, S1, S17
VMLA.F32        S0, S19, S2
VSTR            S0, [R5,#0x14]
VLDR            S3, [R5,#0xC]
VLDR            S1, [R5,#0x10]
VMUL.F32        S2, S3, S3
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S4, S2
VDIV.F32        S2, S18, S4
VMUL.F32        S3, S3, S2
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S0, S2
VSTR            S3, [R6]
VSTR            S1, [R6,#4]
VSTR            S0, [R6,#8]
VLDR            S0, [R5,#0x1C]
VLDR            S1, [R5,#0xC]
VMUL.F32        S1, S1, S0
VSTR            S1, [R6]
VLDR            S1, [R5,#0x10]
VMUL.F32        S1, S1, S0
VSTR            S1, [R6,#4]
VLDR            S1, [R5,#0x14]
VMUL.F32        S0, S1, S0
VSTR            S0, [R6,#8]
VLDR            S0, [R5,#0x20]
VLDR            S2, [R5]
VLDR            S1, [R5,#4]
VLDR            S6, [R5,#8]
VMUL.F32        S2, S2, S0
VLDR            S5, [R5,#0xC]
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S6, S0
VLDR            S3, [R5,#0x14]
VLDR            S4, [R5,#0x10]
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VADD.F32        S0, S3, S0
VMUL.F32        S3, S2, S2
VMLA.F32        S3, S1, S1
VMLA.F32        S3, S0, S0
VSQRT.F32       S4, S3
VDIV.F32        S3, S18, S4
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S3, S0, S3
VLDR            S0, [R7,#0x2C]
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S2, S0
VSTR            S1, [SP,#0x30+var_2C]
VMUL.F32        S1, S1, S16
VMUL.F32        S2, S3, S16
VMUL.F32        S0, S0, S16
VSTR            S3, [SP,#0x30+var_28]
VLDM            R0, {S3-S5}
ADD             R0, R4, #4
VADD.F32        S1, S4, S1
VADD.F32        S2, S5, S2
VADD.F32        S0, S3, S0
VSTMEA          SP, {S0-S2}
BL              sub_14E984
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R7,PC}
ADD             R0, R4, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_25C954
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOV             R3, #0x100
MOV             R0, R0,LSR#16
ADD             R1, R0, #0x16
MOV             R2, #0
ADD             R0, R4, #4
BL              sub_14C548
LDRB            R0, [R7]
CMP             R0, #0
BEQ             loc_25C9C4
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x30175
MOV             R3, #0
LDR             R0, [R0]
ADD             R1, R4, #4
SUB             R0, R0, R12
BL              sub_503720
LDR             R0, [R4,#0x838]
VLDR            S16, =0.0
LDR             R6, [R0,#8]
VSTR            S16, [R5]
VSTR            S16, [R5,#4]
VSTR            S18, [R5,#8]
LDR             R0, [R6,#0x138]
ADD             R1, R6, #0x268
STR             R0, [R7,#0x28]
VLDR            S0, [R6,#0x13C]
VSTR            S0, [R7,#0x24]
LDR             R0, [R6,#0x264]
STR             R0, [R7,#0x20]
VLDR            S1, [R5]
VLDR            S2, [R5,#8]
LDR             R0, =dword_6D1F40
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VSTR            S1, [R5,#0xC]
VSTR            S1, [R5,#0x10]
VSTR            S0, [R5,#0x14]
VLDM            R1, {S18-S19}
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S19, S18
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S1
VADD.F32        S0, S18, S0
VSTR            S0, [R7,#0x2C]
LDR             R0, [R6,#0x144]
VSTR            S16, [R4,#0x3A0]
STR             R0, [R4,#0x3A4]
LDRB            R0, [R4,#1]
ADD             R0, R0, #1
STRB            R0, [R4,#1]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R7,PC}
LDR             R0, [R4,#0x7EC]
CMP             R0, #0
BEQ             loc_25CA74
BL              sub_533330
STR             R6, [R4,#0x7EC]
LDR             R0, [R4,#0x7F0]
CMP             R0, #0
BEQ             loc_25CA88
BL              sub_533330
STR             R6, [R4,#0x7F0]
LDR             R0, [R4,#0x10]
CMP             R0, #0
ADDNE           R0, R4, #4
BLNE            sub_528B1C
LDR             R0, [R4,#0x404]
CMP             R0, #0
ADDNE           R0, R4, #0x3F8
BLNE            sub_528B1C
MOV             R0, #4
STRB            R0, [R4]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R7,PC}
