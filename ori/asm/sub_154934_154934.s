PUSH            {R4-R11,LR}
MOV             R6, R1
MOV             R7, R0
MOV             R4, #0x1F
MOV             R9, #0
LDR             R8, =unk_6E1FD0
LDR             R10, =off_63FDB0
MOV             R11, #1
VPUSH           {D8-D11}
SUB             SP, SP, #0x44
VLDR            S16, =0.0
VLDR            S20, =1.0
VLDR            S22, =0.000015259
VLDR            S23, =0.5
VLDR            S21, =0.71111
ADD             R0, R7, R4,LSL#2
LDR             R5, [R0,#0x40]
CMP             R5, #0
BEQ             loc_154AB8
CMP             R6, #0
BLE             loc_154AC0
MOV             R1, #1
MOV             R0, R5
BL              sub_14C9A4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xB
MOV             R0, R5
STRB            R9, [R5,#0x3F6]
BL              sub_14C548
MOV             R2, #0
ADD             R1, SP, #0x88+var_6C
MOV             R0, R5
BL              sub_5C4198
VSTR            S16, [SP,#0x88+var_60]
VSTR            S20, [SP,#0x88+var_5C]
VSTR            S16, [SP,#0x88+var_58]
VLDR            S0, [SP,#0x88+var_68]
ADD             R1, R8, #0x18C
ADD             R2, SP, #0x88+var_60
VNEG.F32        S0, S0
VLDM            R1, {S1-S2}
MOV             R1, #1
ADD             R0, R5, #0x1DC
BL              sub_5A2954
VLDR            S0, [SP,#0x88+var_68]
ADD             R0, R8, #0x18C
VNEG.F32        S0, S0
VLDM            R0, {S1-S2}
BL              sub_589714
VMOV.F32        S18, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S1, S0, S22
VLDR            S0, [R8,#(flt_6E2168 - 0x6E1FD0)]
VMUL.F32        S1, S1, S0
VMLS.F32        S1, S0, S23
VMUL.F32        S19, S1, S21
VMOV.F32        S0, S19
BL              sub_464318
VMOV.F32        S17, S0
VMOV.F32        S0, S19
BL              sub_464380
VMOV.F32        S1, S0
VSTR            S17, [SP,#0x88+var_80]
VSTR            S16, [SP,#0x88+var_7C]
ADD             R3, SP, #0x88+var_80
ADD             R2, SP, #0x88+var_80
VSTR            S1, [SP,#0x88+var_78]
VLDR            S0, [R8,#(flt_6E2164 - 0x6E1FD0)]
MOV             R1, #0
ADD             R0, R5, #0x1DC
VMUL.F32        S0, S0, S18
VMUL.F32        S2, S17, S0
VMUL.F32        S3, S16, S0
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x88+var_78]
VMOV.F32        S0, S18
VSTM            R3, {S2-S3}
BL              sub_5A2B20
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x88+var_50
REV             R0, R0
STR             R0, [SP,#0x88+var_50]
VLDR            S0, [R8,#(flt_6E216C - 0x6E1FD0)]
ADD             R0, R5, #0x32C
VMUL.F32        S0, S0, S18
BL              sub_4E665C
STRB            R11, [R5,#0x3F5]
LDRD            R0, R1, [R10,#(off_63FE00 - 0x63FDB0)]
ADD             R5, R5, #0x3F8
SUB             R6, R6, #1
STM             R5, {R0,R1}
CMP             R6, #0
BLE             loc_154AC0
SUBS            R4, R4, #1
BPL             loc_154970
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8-D11}
POP             {R4-R11,PC}
