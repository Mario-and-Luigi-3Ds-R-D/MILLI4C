PUSH            {R4-R9,LR}
MOV             R5, R0
CMP             R1, #0
MOV             R9, R3
VPUSH           {D8-D11}
SUB             SP, SP, #0xC
ADD             R0, SP, #0x48+arg_0
VMOV.F32        S19, S0
VMOV.F32        S20, S1
VMOV.F32        S21, S2
VMOV.F32        S22, S3
LDM             R0, {R6-R8}
LDR             R4, [SP,#0x48+arg_C]
VLDM            R2, {S16-S18}
BEQ             loc_22F6A0
ADD             R0, R5, #0x108
VSTMEA          SP, {S16-S18}
VLDM            R0, {S0-S2}
VADD.F32        S16, S16, S0
VADD.F32        S17, S17, S1
VADD.F32        S18, S18, S2
LDR             R0, [R5]
MOV             R2, R4
MOV             R1, SP
LDR             R12, [R0,#0x104]
MOV             R0, R5
BLX             R12
LDR             R0, [R4]
TST             R0, #7
MOVEQ           R0, #0
BEQ             loc_22F694
BIC             R0, R0, #0x38 ; '8'
ORR             R0, R0, R7,LSL#5
BIC             R0, R0, #0xC0
MOV             R1, #0x3F00
ORR             R0, R0, R8,LSL#7
AND             R1, R1, R9,LSL#8
BIC             R0, R0, #0x3F00
ORR             R0, R0, R1
MOV             R2, #0xFC000
AND             R2, R2, R6,LSL#14
BIC             R0, R0, #0xFC000
ORR             R0, R0, R2
ADD             R1, R5, #0x108
STR             R0, [R4]
LDM             R1, {R0-R2}
ADD             R3, R4, #0x1C
MOV             R6, #0
STM             R3, {R0-R2}
ADD             R1, R4, #0x28 ; '('
VSTM            R1, {S16-S18}
STR             R6, [R4,#0x34]
VLDR            S1, [SP,#0x48+var_48]
VLDR            S0, [SP,#0x48+var_40]
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S3, =0.0
UXTH            R0, R0
VMOV            S0, R0
VCMPE.F32       S19, S3
VLDR            S2, =0.000015259
VLDR            S1, =6.2832
VMRS            APSR_nzcv, FPSCR
VCVT.F32.U32    S0, S0
ADDGT           R0, R4, #0x38 ; '8'
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#4]
STR             R6, [R4,#0xC]
VSTMGT          R0, {S19-S22}
BGT             loc_22F674
ADD             R0, R5, #0x400
VLDR            S19, [R0,#0x7C]
VSTR            S19, [R4,#0x38]
LDR             R1, [R5,#0x484]
STR             R1, [R4,#0x3C]
LDR             R1, [R5,#0x48C]
STR             R1, [R4,#0x40]
LDR             R0, [R5,#0x494]
STR             R0, [R4,#0x44]
LDR             R0, [R5]
VMOV.F32        S0, S19
MOV             R2, R4
MOV             R1, SP
LDR             R3, [R0,#0x108]
MOV             R0, R5
BLX             R3
MOV             R0, #1
ADD             SP, SP, #0xC
VPOP            {D8-D11}
POP             {R4-R9,PC}
ADD             R0, R5, #0x10C
VLDR            S2, [R5,#0x108]
VLDM            R0, {S0-S1}
VSUB.F32        S2, S16, S2
ADD             R0, SP, #0x48+var_44
VSUB.F32        S0, S17, S0
VSUB.F32        S1, S18, S1
VSTR            S2, [SP,#0x48+var_48]
VSTM            R0, {S0-S1}
B               loc_22F588
