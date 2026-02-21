PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
ADD             R8, SP, #0x38+arg_8
MOV             R4, R0
MOV             R7, R2
LDM             R8, {R0,R2,R5}
ADD             R8, SP, #0x38+arg_0
MOV             R6, R3
LDM             R8, {R3,R12}
LDR             R8, =0x2686
LDRB            R8, [R8,R4]
CMP             R8, #1
BEQ             loc_170784
ADD             R8, SP, #0x38+var_30
STMEA           SP, {R3,R12}
STM             R8, {R0,R2,R5}
MOV             R3, R6
MOV             R2, R7
MOV             R0, R4
BL              sub_22F2AC
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
VLDM            R7, {S0-S2}
CMP             R1, #0
BEQ             loc_1707D0
ADD             R1, SP, #0x38+var_24
VSTM            R1, {S0-S2}
ADD             R1, R4, #0x108
VLDM            R1, {S3-S5}
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S5
LDR             R1, =0x2698
LDRB            R1, [R1,R4]
CMP             R1, #1
BEQ             loc_170814
CMP             R1, #2
BEQ             loc_1707F8
CMP             R1, #3
BNE             loc_170840
B               loc_17082C
ADD             R1, R4, #0x108
VLDR            S3, [R4,#0x110]
VLDM            R1, {S4-S5}
VSUB.F32        S3, S2, S3
ADD             R1, SP, #0x38+var_24
VSUB.F32        S4, S0, S4
VSUB.F32        S5, S1, S5
VSTR            S3, [SP,#0x38+var_1C]
VSTM            R1, {S4-S5}
B               loc_1707AC
VLDR            S4, [SP,#0x38+var_24]
VLDR            S3, [SP,#0x38+var_20]
VNEG.F32        S4, S4
VNEG.F32        S3, S3
VSTR            S4, [SP,#0x38+var_24]
VSTR            S3, [SP,#0x38+var_20]
B               loc_170840
VLDR            S3, [SP,#0x38+var_20]
VLDR            S4, [SP,#0x38+var_24]
ADD             R1, SP, #0x38+var_24
VNEG.F32        S3, S3
VSTM            R1, {S3-S4}
B               loc_170840
VLDR            S3, [SP,#0x38+var_24]
ADD             R1, SP, #0x38+var_24
VNEG.F32        S4, S3
VLDR            S3, [SP,#0x38+var_20]
VSTM            R1, {S3-S4}
MOV             R7, #0x3F00
LDR             R1, [R5]
AND             R3, R7, R3,LSL#8
MOV             R7, #0xFC000
BIC             R1, R1, #0x28 ; '('
ORR             R1, R1, #0x17
ORR             R0, R1, R0,LSL#5
BIC             R0, R0, #0xC0
ORR             R0, R0, R2,LSL#7
BIC             R0, R0, #0x3F00
ORR             R0, R0, R3
AND             R12, R7, R12,LSL#14
BIC             R0, R0, #0xFC000
ORR             R0, R0, R12
ADD             R1, R4, #0x108
STR             R0, [R5]
LDM             R1, {R0-R2}
ADD             R8, R5, #0x1C
MOV             R7, #0
STM             R8, {R0-R2}
ADD             R1, R5, #0x28 ; '('
VSTM            R1, {S0-S2}
STR             R7, [R5,#0x34]
VLDR            S1, [SP,#0x38+var_24]
VLDR            S0, [SP,#0x38+var_1C]
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S3, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VMOV            S1, R6
VLDR            S2, =6.2832
MOV             R3, R5
MOV             R2, R6
ADD             R1, SP, #0x38+var_24
VCVT.F32.U32    S0, S0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S0, S3
VMUL.F32        S0, S0, S2
VSTR            S0, [R5,#4]
STR             R7, [R5,#0xC]
VSTR            S1, [R5,#0x38]
LDR             R0, [R4]
LDR             R12, [R0,#0x10C]
MOV             R0, R4
BLX             R12
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #1
POP             {R4-R8,PC}
