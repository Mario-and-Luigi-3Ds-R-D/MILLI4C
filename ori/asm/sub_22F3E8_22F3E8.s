PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R7, R2
MOV             R11, R3
VPUSH           {D8}
SUB             SP, SP, #0xC
ADD             R0, SP, #0x38+arg_0
VMOV.F32        S16, S0
LDM             R0, {R8-R10}
ADD             R0, R2, #4
VLDR            S0, [R1,#0x108]
VLDR            S5, [R2]
VLDR            S1, [R1,#0x110]
VLDR            S2, [R1,#0x10C]
VADD.F32        S0, S0, S5
VLDM            R0, {S3-S4}
ADD             R0, R5, #0x10C
LDR             R4, [SP,#0x38+arg_C]
MOV             R1, SP
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VLDR            S3, [R5,#0x108]
MOV             R2, R4
VLDM            R0, {S4-S5}
VSUB.F32        S3, S0, S3
ADD             R0, SP, #0x38+var_34
VSUB.F32        S0, S2, S4
VSUB.F32        S1, S1, S5
VSTR            S3, [SP,#0x38+var_38]
VSTM            R0, {S0-S1}
LDR             R0, [R5]
LDR             R3, [R0,#0x104]
MOV             R0, R5
BLX             R3
LDR             R0, [R4]
TST             R0, #7
MOVEQ           R0, #0
BEQ             loc_22F524
BIC             R0, R0, #0x38 ; '8'
ORR             R0, R0, R9,LSL#5
BIC             R0, R0, #0xC0
MOV             R1, #0x3F00
ORR             R0, R0, R10,LSL#7
AND             R1, R1, R11,LSL#8
BIC             R0, R0, #0x3F00
ORR             R0, R0, R1
MOV             R2, #0xFC000
AND             R2, R2, R8,LSL#14
BIC             R0, R0, #0xFC000
ORR             R0, R0, R2
ADD             R1, R5, #0x108
STR             R0, [R4]
LDM             R1, {R0-R2}
ADD             R12, R4, #0x1C
VLDR            S0, =0.0
MOV             R3, #0
STM             R12, {R0-R2}
VCMPE.F32       S16, S0
LDM             R7, {R0-R2}
ADD             R12, R4, #0x28 ; '('
STR             R3, [R4,#0xC]
VMRS            APSR_nzcv, FPSCR
STM             R12, {R0-R2,R6}
BLE             loc_22F500
VSTR            S16, [R4,#0x38]
VSTR            S16, [R4,#0x40]
VSTR            S0, [R4,#0x3C]
VSTR            S0, [R4,#0x44]
B               loc_22F520
LDR             R1, [R5,#0x47C]
STR             R1, [R4,#0x38]
LDR             R1, [R5,#0x48C]
STR             R1, [R4,#0x40]
LDR             R1, [R5,#0x484]
STR             R1, [R4,#0x3C]
LDR             R0, [R5,#0x494]
STR             R0, [R4,#0x44]
MOV             R0, #1
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
