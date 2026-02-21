PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
MOV             R7, R2
ADD             LR, SP, #0x20+arg_8
MOV             R5, R0
LDM             LR, {R0,R2,R4}
ADD             LR, SP, #0x20+arg_0
MOV             R6, R3
VLDM            R7, {S0-S2}
CMP             R1, #0
LDM             LR, {R3,R12}
BEQ             loc_22F3B8
VSTMEA          SP, {S0-S2}
ADD             R1, R5, #0x108
VLDM            R1, {S3-S5}
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S5
LDR             R1, [R4]
MOV             R7, #0x3F00
AND             R3, R7, R3,LSL#8
BIC             R1, R1, #0x28 ; '('
ORR             R1, R1, #0x17
ORR             R0, R1, R0,LSL#5
BIC             R0, R0, #0xC0
ORR             R0, R0, R2,LSL#7
BIC             R0, R0, #0x3F00
MOV             R7, #0xFC000
ORR             R0, R0, R3
AND             R12, R7, R12,LSL#14
BIC             R0, R0, #0xFC000
ORR             R0, R0, R12
ADD             R1, R5, #0x108
STR             R0, [R4]
LDM             R1, {R0-R2}
ADD             LR, R4, #0x1C
MOV             R7, #0
STM             LR, {R0-R2}
ADD             R1, R4, #0x28 ; '('
VSTM            R1, {S0-S2}
STR             R7, [R4,#0x34]
VLDR            S1, [SP,#0x20+var_20]
VLDR            S0, [SP,#0x20+var_18]
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S3, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VMOV            S1, R6
VLDR            S2, =6.2832
MOV             R3, R4
MOV             R2, R6
MOV             R1, SP
VCVT.F32.U32    S0, S0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S0, S3
VMUL.F32        S0, S0, S2
VSTR            S0, [R4,#4]
STR             R7, [R4,#0xC]
VSTR            S1, [R4,#0x38]
LDR             R0, [R5]
LDR             R12, [R0,#0x10C]
MOV             R0, R5
BLX             R12
ADD             SP, SP, #0xC
MOV             R0, #1
POP             {R4-R7,PC}
ADD             R1, R5, #0x10C
VLDR            S5, [R5,#0x108]
VLDM            R1, {S3-S4}
VSUB.F32        S5, S0, S5
ADD             R1, SP, #0x20+var_1C
VSUB.F32        S3, S1, S3
VSUB.F32        S4, S2, S4
VSTR            S5, [SP,#0x20+var_20]
VSTM            R1, {S3-S4}
B               loc_22F2F4
