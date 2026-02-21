PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R7, R2
VPUSH           {D8-D12}
SUB             SP, SP, #0xAC
BL              sub_464100
LDR             R1, [R4,#4]
MOV             R3, R0
ADD             R2, SP, #0xF0+var_E0
LDR             R0, [R1,#0x5BC]
LDR             R1, [R1,#0x5CC]
STRD            R0, R1, [SP,#0xF0+var_E0]
MOV             R1, R3
ADD             R0, SP, #0xF0+var_D8
BL              sub_4633DC
ADD             R2, SP, #0xF0+var_D8
MOV             R1, R5
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
LDR             R3, [R4,#4]
MOV             R1, R0
ADD             R2, SP, #0xF0+var_E0
LDR             R0, [R3,#0x5C0]
LDR             R3, [R3,#0x5CC]
STM             R2, {R0,R3}
ADD             R0, SP, #0xF0+var_C0
BL              sub_4633DC
ADD             R2, SP, #0xF0+var_C0
MOV             R1, R5
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
LDR             R1, [R4,#4]
VLDR            S22, =0.0
ADD             R2, SP, #0xF0+var_E0
LDR             R1, [R1,#0x5BC]
STR             R1, [SP,#0xF0+var_E0]
MOV             R1, R0
VSTR            S22, [SP,#0xF0+var_DC]
ADD             R0, SP, #0xF0+var_A8
BL              sub_4633DC
ADD             R2, SP, #0xF0+var_A8
MOV             R1, R5
MOV             R0, R2
BL              sub_4646D4
BL              sub_464100
MOV             R1, R0
LDR             R0, [R4,#4]
ADD             R2, SP, #0xF0+var_E0
LDR             R0, [R0,#0x5C0]
STR             R0, [SP,#0xF0+var_E0]
VSTR            S22, [SP,#0xF0+var_DC]
ADD             R0, SP, #0xF0+var_90
BL              sub_4633DC
ADD             R2, SP, #0xF0+var_90
MOV             R1, R5
MOV             R0, R2
BL              sub_4646D4
VLDR            S2, [SP,#0xF0+var_C4]
VLDR            S0, [SP,#0xF0+var_AC]
LDR             R0, [R4,#4]
VLDR            S1, [SP,#0xF0+var_D0]
VCMPE.F32       S2, S0
VLDR            S4, [SP,#0xF0+var_B8]
VMRS            APSR_nzcv, FPSCR
VLDR            S3, [R0,#0x108]
BCS             loc_23E7F0
VLDR            S4, [R0,#0x10C]
VADD.F32        S0, S1, S3
VLDR            S5, [SP,#0xF0+var_94]
VADD.F32        S1, S2, S4
VLDR            S2, [SP,#0xF0+var_A0]
VADD.F32        S17, S5, S4
VADD.F32        S16, S2, S3
VSUB.F32        S19, S1, S17
VSUB.F32        S18, S0, S16
B               loc_23E814
VADD.F32        S1, S4, S3
VLDR            S2, [R0,#0x10C]
VLDR            S5, [SP,#0xF0+var_88]
VLDR            S4, [SP,#0xF0+var_7C]
VADD.F32        S0, S0, S2
VADD.F32        S16, S5, S3
VADD.F32        S17, S4, S2
VSUB.F32        S18, S1, S16
VSUB.F32        S19, S0, S17
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x16C]
CMP             R4, #0
BEQ             loc_23E9B4
LDR             R8, =dword_6E1320
LDR             R9, =flt_6E1324
VLDR            S23, =40.744
VLDR            S24, =1.0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #8
BNE             loc_23E9A8
LDRB            R5, [R4,#0xAAC]
CMP             R5, #9
BEQ             loc_23E86C
CMP             R5, #0xA
BNE             loc_23E9A8
LDR             R6, [R4,#0xAA8]
LDRB            R0, [R6,#0xA]
CMP             R0, #1
LDRBEQ          R0, [R6,#9]
CMPEQ           R0, #0xFF
BNE             loc_23E9A8
VLDR            S1, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
VSUB.F32        S1, S1, S16
VSUB.F32        S0, S0, S17
VSTR            S1, [SP,#0xF0+var_70]
VSTR            S0, [SP,#0xF0+var_6C]
LDR             R0, [R8]
TST             R0, #1
BNE             loc_23E8D0
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_23E8D0
LDR             R0, =flt_6E1324
VSTR            S22, [R0]
VSTR            S22, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDRD            R0, R1, [R9]
ADD             R3, SP, #0xF0+var_E8
ADD             R2, SP, #0xF0+var_70
STRD            R0, R1, [SP,#0xF0+var_60]
ADD             R0, SP, #0xF0+var_58
ADD             R1, SP, #0xF0+var_60
VSTM            R0, {S18-S19}
LDRH            R0, [R6,#0xC]
VMOV            S0, R0
ADD             R0, SP, #0xF0+var_58
VCVT.F32.U32    S0, S0
BL              sub_45A8A4
CMP             R0, #0
NOP
BEQ             loc_23E9A8
ADD             R0, SP, #0xF0+var_E8
VLDM            R0, {S0-S1}
VADD.F32        S0, S0, S16
VADD.F32        S1, S1, S17
VSTR            S1, [SP,#0xF0+var_E4]
VLDR            S2, [R4,#0x108]
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0xF0+var_E8]
VLDR            S0, [R4,#0x10C]
VSUB.F32        S0, S1, S0
VSTR            S0, [SP,#0xF0+var_E4]
VLDR            S21, [R4,#0xF8]
VMUL.F32        S0, S21, S23
BL              sub_464318
VMOV.F32        S20, S0
VMUL.F32        S0, S21, S23
BL              sub_464380
VMUL.F32        S1, S20, S20
VLDR            S3, [SP,#0xF0+var_E8]
VMLA.F32        S1, S0, S0
VSQRT.F32       S2, S1
VDIV.F32        S1, S24, S2
VMUL.F32        S2, S20, S1
VMUL.F32        S0, S0, S1
VLDR            S1, [SP,#0xF0+var_E4]
VMUL.F32        S1, S2, S1
VMLS.F32        S1, S3, S0
VCMPE.F32       S1, S22
VMRS            APSR_nzcv, FPSCR
BLE             loc_23E9A8
MOV             R1, #0
MOV             R0, R6
BL              sub_2C3510
CMP             R7, #0
STRNE           R4, [R7]
ADD             SP, SP, #0xAC
MOV             R0, R5
VPOP            {D8-D12}
POP             {R4-R9,PC}
LDR             R4, [R4,#8]
CMP             R4, #0
BNE             loc_23E840
ADD             SP, SP, #0xAC
MOV             R0, #0xFF
VPOP            {D8-D12}
POP             {R4-R9,PC}
