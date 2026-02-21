PUSH            {R0-R11,LR}
MOV             R5, R1
MOV             R7, R2
VMOV            S0, R7
MOV             R6, R0
LDR             R10, =unk_6E1FD0
LDR             R11, =off_6CE970
LDR             R1, =0x10E0A4
MOV             R0, #0
VCVT.F32.U32    S0, S0
VPUSH           {D8-D9}
SUB             SP, SP, #0x2C
VLDR            S1, [R10,#(flt_6E2178 - 0x6E1FD0)]
LDR             R2, [R11]
LDR             R4, [SP,#0x70+arg_4]
LDR             R8, [SP,#0x70+arg_0]
ADD             R1, R1, R2; loc_10E0A4
STR             R1, [SP,#0x70+var_60]
CMP             R8, #0
VMUL.F32        S0, S1, S0
VCVT.U32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [R5,#0x10]
BEQ             loc_157650
LDRB            R1, [R6,#0x9EC]
LDRB            R0, [R4,#2]
CMP             R0, R1
MOVCS           R9, #0
BCS             loc_15763C
ADD             R0, R6, R0,LSL#1
ADD             R0, R0, #0x900
LDRH            R1, [R0,#0x6C]
MOV             R0, R2
BL              sub_52F508
MOV             R9, R0
LDR             R0, [R11]
BL              sub_52FC34
CMP             R0, R9
MOVEQ           R0, #1
MOVNE           R0, #0
LDRSH           R1, [R4]
MOV             R9, #0
CMP             R1, #0
BLE             loc_157674
CMP             R0, #0
BEQ             loc_157810
LDRB            R0, [R4,#4]
CMP             R8, R0
BHI             loc_157810
LDRB            R0, [R4,#2]
LDRB            R1, [R6,#0x9EC]
VLDR            S16, =0.0
CMP             R0, R1
BCS             loc_1576C0
CMP             R7, #0
VMOVEQ.F32      S0, S16
ADD             R0, R0, #1
STRB            R9, [R4,#4]
STRB            R0, [R4,#2]
BEQ             loc_1576B0
ADD             R1, R10, #0x1D8
LDR             R0, =dword_6D1F40
VLDM            R1, {S0-S1}
BL              sub_47EAA4
VCVT.U32.F32    S0, S0
STRH            R9, [R4]
VMOV            R0, S0
STRH            R0, [R4,#6]
LDRB            R0, [R4,#2]
LDRB            R1, [R6,#0x9EC]
CMP             R1, R0
BHI             loc_1577F0
ADD             R6, R6, #0x20 ; ' '
ADD             R3, R5, #4
LDM             R6, {R0-R2}
VLDR            S1, =360.0
STM             R3, {R0-R2}
VSTR            S16, [R5,#8]
LDRB            R0, [R4,#3]
LDR             R1, [SP,#0x70+var_28]
SUB             R4, R7, R0
SUB             R1, R1, R0
VMOV            S0, R1
LDR             R0, =dword_6D1F40
VCVT.F32.S32    S0, S0
VDIV.F32        S17, S1, S0
BL              sub_546DB0
VMOV            S2, R0
VLDR            S6, [R10,#(flt_6E2184 - 0x6E1FD0)]
VLDR            S0, =1.0
VLDR            S3, =0.000030518
VLDR            S4, =0.5
VMOV            S1, R4
VCVT.F32.U32    S5, S2
VMOV.F32        S2, S0
VMUL.F32        S4, S17, S4
ADD             R1, R10, #0x1AC
LDR             R0, =dword_6D1F40
VCVT.F32.S32    S1, S1
VMUL.F32        S5, S5, S6
VNMLS.F32       S0, S5, S3
VADD.F32        S0, S0, S2
VMUL.F32        S18, S4, S0
VMLA.F32        S18, S17, S1
VLDM            R1, {S0-S1}
BL              sub_47EAA4
VMOV.F32        S17, S0
VLDR            S0, =0.71111
ADD             R1, SP, #0x70+var_5C
ADD             R0, SP, #0x70+var_60
VMUL.F32        S0, S18, S0
BL              sub_462B20
VLDR            S0, [R5,#4]
VLDR            S1, [SP,#0x70+var_5C]
CMP             R7, #0
VMLA.F32        S0, S1, S17
VSTR            S0, [R5,#4]
VLDR            S0, [R5,#0xC]
VLDR            S1, [SP,#0x70+var_60]
VMLA.F32        S0, S1, S17
VSTR            S0, [R5,#0xC]
BEQ             loc_1577AC
ADD             R10, R10, #0x1D8
LDR             R0, =dword_6D1F40
VLDM            R10, {S0-S1}
BL              sub_47EAA4
VMOV.F32        S16, S0
ADD             R1, SP, #0x70+var_6C
MOV             R2, #0xB
VCVT.U32.F32    S0, S16
VMOV            R0, S0
STRH            R0, [R5,#0x10]
STR             R9, [R5]
ADD             R0, R5, #0x14
STR             R9, [SP,#0x70+var_6C]
STRH            R9, [SP,#0x70+var_68]
STRB            R9, [SP,#0x70+var_62]
BL              sub_127EB8
MOV             R0, #0
STRB            R9, [R5,#0x20]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
ADD             R0, R6, R0,LSL#1
ADD             R0, R0, #0x900
LDRH            R1, [R0,#0x6C]
LDR             R0, [R11]
BL              sub_52F508
ADD             R0, R0, #0x100
LDRH            R0, [R0,#0x48]
STRH            R0, [R4]
LDRB            R0, [R4,#2]
ADD             R0, R6, R0,LSL#1
ADD             R0, R0, #0x900
LDRH            R1, [R0,#0x6C]
LDR             R0, [R11]
BL              sub_52F508
MOV             R6, R0
LDRB            R0, [R0,#0x1D9]
TST             R0, #1
BNE             loc_157844
AND             R0, R0, #4
MOVS            R0, R0,LSR#2
BEQ             loc_15786C
MOV             R1, SP
MOV             R2, #0xB
ADD             R0, R5, #0x14
STR             R9, [SP,#0x70+var_70]
STRH            R9, [SP,#0x70+var_6C]
STRB            R9, [SP,#0x70+var_68+2]
BL              sub_127EB8
STRH            R9, [R4]
STRB            R9, [R5,#0x20]
B               loc_1578CC
LDR             R0, =dword_6E26C4
MOV             R8, #1
STR             R8, [SP,#0x70+var_70]
STRD            R8, R9, [SP,#0x70+var_6C]
LDR             R2, [R0,#(dword_6E2738 - 0x6E26C4)]
LDR             R3, [SP,#0x70+var_60]
MOV             R1, R6
ADD             R0, SP, #0x70+var_5C
BL              sub_4F1F24
ADD             R3, SP, #0x70+var_5C
LDM             R3, {R0-R2}
ADD             R3, SP, #0x70+var_50
STM             R3, {R0-R2}
MOV             R2, #0xB
ADD             R1, SP, #0x70+var_50
ADD             R0, R5, #0x14
BL              sub_127EB8
LDRSH           R1, [R4]
LDR             R0, [R5,#0x14]
CMP             R1, R0
SUBGE           R0, R1, R0
MOVLT           R0, #0
STRH            R0, [R4]
STRB            R8, [R5,#0x20]
LDRB            R1, [R4,#4]
ADD             R0, R7, #1
STRB            R0, [R4,#3]
CMP             R1, #0
BEQ             loc_15790C
ADD             R10, R10, #0x1E0
LDR             R0, =dword_6D1F40
VLDM            R10, {S0-S1}
BL              sub_47EAA4
LDRH            R0, [R4,#6]
VMOV            S1, R0
VCVT.F32.U32    S1, S1
VADD.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4,#6]
LDRH            R0, [R4,#6]
STRH            R0, [R5,#0x10]
STR             R6, [R5]
LDRH            R0, [R4]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R0, [R5,#0x21]
LDRB            R0, [R4,#4]
ADD             R0, R0, #1
STRB            R0, [R4,#4]
MOV             R0, #1
B               loc_1577E0
