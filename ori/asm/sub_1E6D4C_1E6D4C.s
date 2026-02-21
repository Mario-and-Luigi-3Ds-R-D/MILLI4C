PUSH            {R0-R11,LR}
MOV             R5, R1
MOV             R7, R2
VPUSH           {D8-D9}
SUB             SP, SP, #0x44
LDR             R1, [R2,#0x30]
LDR             R0, [SP,#0x88+var_28]
ADD             R0, R0, R0,LSL#2
ADD             R8, R1, R0
LDR             R1, [SP,#0x88+var_28]
ADD             R0, R2, #0x14
BL              sub_5D0174
LDRB            R12, [R0,#4]
LDRB            R2, [R0,#3]
LDRB            R3, [R0,#2]
VMOV            S0, R12
LDRSB           R4, [R0,#1]
LDR             R1, [SP,#0x88+var_34]
LDRSB           R0, [R0]
LDR             R6, [SP,#0x88+var_34]
VMOV            S3, R2
VCVT.F32.U32    S6, S0
VMOV            S2, R3
VMOV            S1, R4
VMOV            S0, R0
LDR             R1, [R1]
ADD             R6, R6, #0x400
STR             R6, [SP,#0x88+var_48]
VLDR            S5, [R6,#0x1B4]
VCVT.F32.U32    S4, S3
VCVT.F32.U32    S2, S2
VADD.F32        S3, S6, S5
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
LDR             R1, [R1,#0x4C]
LDR             R0, [SP,#0x88+var_34]
BLX             R1
LDRB            R0, [R5,#0x2F4]
MOV             R10, #0
MOV             R6, #1
BIC             R0, R0, #0x3F ; '?'
MOV             R4, R10
STRB            R0, [R5,#0x2F4]
LDRB            R0, [R8,R6]
CMP             R0, #0xFF
BEQ             loc_1E6E60
LDR             R1, [SP,#0x88+var_28]
AND             R2, R4, #0xFF
ADD             R0, R7, #0x14
BL              sub_5D0190
LDRB            R9, [R0,#4]
LDR             R1, [SP,#0x88+var_28]
AND             R2, R4, #0xFF
ADD             R0, R7, #0x14
BL              sub_5D01CC
MOV             R1, SP
ADD             R1, R1, R4,LSL#3
LDRB            R0, [R0,#4]
ADD             R2, SP, #0x88+var_68
ADD             R2, R2, R4,LSL#3
STM             R1, {R4,R9}
ADD             R12, R10, #1
STR             R0, [R2,#4]
ADD             R6, R6, #1
STR             R4, [R2]
CMP             R6, #5
AND             R10, R12, #0xFF
ADD             R4, R4, #1
BLT             loc_1E6DF8
SUB             R1, R10, #1
CMP             R1, #0
MOVGE           R11, SP
BLT             loc_1E6EE0
CMP             R1, #0
MOV             R0, #0xFFFFFFFF
BLE             loc_1E6EE0
MOV             R12, #0
ADD             R4, R11, #4
ADD             R2, R11, #0xC
LDR             R6, [R4]
LDR             R9, [R2]
CMP             R6, R9
BGE             loc_1E6EC4
MOV             R0, R12
LDR             R3, [R2,#-4]
ADD             R6, R11, R0,LSL#3
VLDM            R6, {S0-S1}
STR             R3, [R6]
LDR             R3, [R2]
VCVT.F32.S32    S1, S1
STR             R3, [R6,#4]
SUB             R3, R2, #4
VCVT.S32.F32    S1, S1
VSTM            R3, {S0-S1}
SUBS            R1, R1, #1
ADD             R4, R4, #8
ADD             R2, R2, #8
ADD             R12, R12, #1
BNE             loc_1E6E88
SUBS            R1, R0, #0
BGE             loc_1E6E70
SUB             R1, R10, #1
CMP             R1, #0
ADDGE           R11, SP, #0x88+var_68
BLT             loc_1E6F60
CMP             R1, #0
MOV             R0, #0xFFFFFFFF
BLE             loc_1E6F60
MOV             R12, #0
ADD             R4, R11, #4
ADD             R2, R11, #0xC
LDR             R6, [R4]
LDR             R9, [R2]
CMP             R6, R9
BGE             loc_1E6F44
MOV             R0, R12
LDR             R3, [R2,#-4]
ADD             R6, R11, R0,LSL#3
VLDM            R6, {S0-S1}
STR             R3, [R6]
LDR             R3, [R2]
VCVT.F32.S32    S1, S1
STR             R3, [R6,#4]
SUB             R3, R2, #4
VCVT.S32.F32    S1, S1
VSTM            R3, {S0-S1}
SUBS            R1, R1, #1
ADD             R4, R4, #8
ADD             R2, R2, #8
ADD             R12, R12, #1
BNE             loc_1E6F08
SUBS            R1, R0, #0
BGE             loc_1E6EF0
MOV             R0, #0
VLDR            S19, =0.5
VLDR            S18, =0.024544
STRB            R0, [R5,#0x2F6]
MOV             R6, #1
MOV             R4, R0
STRB            R0, [R5,#0x2F5]
LDRB            R0, [R8,R6]
CMP             R0, #0xFF
BEQ             loc_1E7120
LDR             R1, [SP,R4,LSL#3]
LDRB            R2, [R5,#0x2F6]
MOV             R0, R4,LSL#1
CMP             R4, #0
ORR             R1, R2, R1,LSL R0
ADD             R3, SP, #0x88+var_68
STRB            R1, [R5,#0x2F6]
LDR             R1, [R3,R4,LSL#3]
LDRB            R2, [R5,#0x2F5]
ORR             R0, R2, R1,LSL R0
STRB            R0, [R5,#0x2F5]
LDR             R1, [SP,#0x88+var_28]
AND             R2, R4, #0xFF
ADD             R0, R7, #0x14
BEQ             loc_1E7154
BL              sub_5D0190
LDR             R1, [SP,#0x88+var_48]
LDRB            R9, [R0,#4]
LDRSB           R2, [R0,#1]
LDRB            R12, [R0,#2]
VLDR            S5, [R1,#0x1B4]
LDRSB           R1, [R0]
LDRB            R0, [R0,#3]
VMOV            S1, R2
VMOV            S4, R1
VMOV            S2, R0
VMOV            S3, R12
VMOV            S0, R9
SUB             R11, R4, #1
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S16, S4
VCVT.F32.U32    S2, S2
VCVT.F32.U32    S3, S3
VCVT.F32.U32    S0, S0
AND             R11, R11, #0xFF
ADD             R9, R5, R11,LSL#4
ADD             R0, R9, #0x27C
ADD             R11, R5, R11,LSL#2
VSUB.F32        S2, S1, S2
VADD.F32        S17, S16, S3
VADD.F32        S0, S0, S5
VSTR            S2, [R9,#0x284]
VADD.F32        S3, S2, S1
VSTR            S1, [R9,#0x288]
VSTM            R0, {S16-S17}
VSTR            S0, [R11,#0x2AC]
VMOV.F32        S0, S16
VMUL.F32        S1, S3, S19
VSTR            S1, [R11,#0x2B8]
BL              sub_4645C0
VMUL.F32        S0, S0, S18
VSTR            S0, [R9,#0x2C4]
VLDR            S0, [R11,#0x2B8]
VNEG.F32        S1, S0
VMOV.F32        S0, S16
BL              sub_4645C0
VMUL.F32        S0, S0, S18
VSTR            S0, [R9,#0x2C8]
VLDR            S0, [R11,#0x2B8]
VNEG.F32        S1, S0
VMOV.F32        S0, S17
BL              sub_4645C0
VMUL.F32        S0, S0, S18
VSTR            S0, [R9,#0x2CC]
VMOV.F32        S0, S17
VLDR            S1, [R11,#0x2B8]
BL              sub_4645C0
VMUL.F32        S0, S0, S18
AND             R2, R4, #0xFF
ADD             R0, R7, #0x14
VSTR            S0, [R9,#0x2D0]
LDR             R1, [SP,#0x88+var_28]
BL              sub_5D01CC
LDR             R1, [SP,#0x88+var_48]
LDRSB           R2, [R0,#1]
LDRB            R12, [R0,#2]
LDRB            LR, [R0,#4]
VLDR            S6, [R1,#0x1B4]
LDRSB           R1, [R0]
LDRB            R0, [R0,#3]
VMOV            S3, LR
VMOV            S0, R1
VMOV            S4, R2
VMOV            S5, R0
VMOV            S1, R12
VCVT.F32.U32    S7, S3
VCVT.F32.S32    S2, S0
VCVT.F32.S32    S0, S4
VCVT.F32.U32    S3, S5
VCVT.F32.U32    S4, S1
VSTR            S2, [R9,#0x240]
VADD.F32        S1, S7, S6
VSTR            S0, [R9,#0x24C]
VSUB.F32        S3, S0, S3
VADD.F32        S2, S2, S4
ADD             R9, R9, #0x244
VSTM            R9, {S2-S3}
VSTR            S1, [R11,#0x270]
ADD             R6, R6, #1
CMP             R6, #5
ADD             R4, R4, #1
BLT             loc_1E6F7C
LDRB            R1, [R5,#0x2F4]
AND             R0, R10, #7
MOV             R2, #0x38 ; '8'
BIC             R3, R1, #7
ORR             R0, R0, R3
AND             R1, R2, R10,LSL#3
BIC             R0, R0, #0x38 ; '8'
ORR             R0, R0, R1
STRB            R0, [R5,#0x2F4]
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8-D9}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
NOP
BL              sub_5D0190
LDR             R1, [SP,#0x88+var_34]
LDRB            R2, [R0,#3]
LDRB            R12, [R0,#2]
LDRSB           R9, [R0,#1]
LDR             R11, [R1]
LDRB            R1, [R0,#4]
LDRSB           R0, [R0]
VMOV            S2, R12
VMOV            S0, R1
LDR             R1, [SP,#0x88+var_48]
VMOV            S1, R9
VMOV            S5, R0
LDR             R11, [R11,#0x2D0]
VLDR            S3, [R1,#0x1B4]
VCVT.F32.U32    S6, S0
VMOV            S0, R2
VCVT.F32.U32    S2, S2
VCVT.F32.S32    S1, S1
LDR             R0, [SP,#0x88+var_34]
VCVT.F32.U32    S4, S0
VCVT.F32.S32    S0, S5
VADD.F32        S3, S6, S3
BLX             R11
LDR             R1, [SP,#0x88+var_28]
AND             R2, R4, #0xFF
ADD             R0, R7, #0x14
BL              sub_5D01CC
MOV             R9, R0
LDR             R0, [SP,#0x88+var_34]
LDRB            R11, [R9,#4]
LDRB            R2, [R9,#2]
LDRSB           R12, [R9,#1]
VMOV            S0, R11
LDR             R1, [R0]
LDRB            R0, [R9,#3]
LDRSB           R9, [R9]
LDR             LR, [SP,#0x88+var_48]
VMOV            S4, R0
VCVT.F32.U32    S5, S0
VMOV            S2, R2
VMOV            S1, R12
VMOV            S0, R9
VLDR            S3, [LR,#0x1B4]
VCVT.F32.U32    S4, S4
LDR             R1, [R1,#0x284]
VCVT.F32.U32    S2, S2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VADD.F32        S3, S5, S3
LDR             R0, [SP,#0x88+var_34]
BLX             R1
B               loc_1E7110
