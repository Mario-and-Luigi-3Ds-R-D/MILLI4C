PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R7, R2
MOV             R11, R3
VPUSH           {D8}
SUB             SP, SP, #0x1C
ADD             R0, SP, #0x48+arg_0
VMOV.F32        S16, S0
LDM             R0, {R8-R10}
LDR             R0, =0x2686
LDR             R4, [SP,#0x48+arg_C]
LDRB            R0, [R0,R5]
CMP             R0, #1
BEQ             loc_170970
VMOV.F32        S0, S16
STR             R4, [SP,#0x48+var_3C]
MOV             R0, R5
STMEA           SP, {R8-R10}
BL              sub_22F3E8
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R0, R7, #4
VLDR            S1, [R6,#0x108]
VLDR            S5, [R7]
VLDR            S0, [R6,#0x10C]
VLDR            S2, [R6,#0x110]
VADD.F32        S1, S1, S5
VLDM            R0, {S3-S4}
ADD             R0, R5, #0x108
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VLDM            R0, {S3-S5}
LDR             R0, =0x2698
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S4
VSUB.F32        S2, S2, S5
VSTR            S1, [SP,#0x48+var_38]
VSTR            S0, [SP,#0x48+var_34]
VSTR            S2, [SP,#0x48+var_30]
LDRB            R0, [R0,R5]
CMP             R0, #1
BEQ             loc_170A94
CMP             R0, #2
BEQ             loc_1709E0
CMP             R0, #3
VSTREQ          S0, [SP,#0x48+var_38]
VNEGEQ.F32      S0, S1
BNE             loc_1709F0
B               loc_1709EC
VNEG.F32        S1, S1
VNEG.F32        S0, S0
VSTR            S1, [SP,#0x48+var_38]
VSTR            S0, [SP,#0x48+var_34]
LDR             R0, [R5]
MOV             R2, R4
ADD             R1, SP, #0x48+var_38
LDR             R3, [R0,#0x104]
MOV             R0, R5
BLX             R3
LDR             R0, [R4]
TST             R0, #7
MOVEQ           R0, #0
BEQ             loc_170964
BIC             R0, R0, #0x38 ; '8'
ORR             R0, R0, R9,LSL#5
BIC             R0, R0, #0xC0
MOV             R1, #0x3F00
ORR             R0, R0, R10,LSL#7
AND             R1, R1, R11,LSL#8
BIC             R0, R0, #0x3F00
ORR             R0, R0, R1
MOV             R2, #0xFC000
AND             R3, R2, R8,LSL#14
BIC             R0, R0, #0xFC000
ORR             R0, R0, R3
ADD             R1, R5, #0x108
STR             R0, [R4]
LDM             R1, {R0,R1,R3}
ADD             R12, R4, #0x1C
VLDR            S0, =0.0
MOV             R2, #0
STM             R12, {R0,R1,R3}
VCMPE.F32       S16, S0
LDM             R7, {R0,R1,R3}
ADD             R12, R4, #0x28 ; '('
STR             R2, [R4,#0xC]
VMRS            APSR_nzcv, FPSCR
STM             R12, {R0,R1,R3,R6}
BLE             loc_170AA4
VSTR            S16, [R4,#0x38]
VSTR            S16, [R4,#0x40]
VSTR            S0, [R4,#0x3C]
VSTR            S0, [R4,#0x44]
B               loc_170AC4
VNEG.F32        S0, S0
ADD             R0, SP, #0x48+var_38
VSTM            R0, {S0-S1}
B               loc_1709F0
LDR             R1, [R5,#0x47C]
STR             R1, [R4,#0x38]
LDR             R1, [R5,#0x48C]
STR             R1, [R4,#0x40]
LDR             R1, [R5,#0x484]
STR             R1, [R4,#0x3C]
LDR             R0, [R5,#0x494]
STR             R0, [R4,#0x44]
ADD             SP, SP, #0x1C
MOV             R0, #1
VPOP            {D8}
POP             {R4-R11,PC}
