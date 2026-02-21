PUSH            {R4-R11,LR}
MOV             R6, R0
MOVS            R8, R2
MOV             R7, R3
MOV             R5, #0
ADD             R4, R1, #4
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
BEQ             loc_14B664
MOV             R2, #1
MOV             R1, SP
BL              sub_5C4198
LDRB            R0, [R6,#0xF0]
LDR             R9, =0xBF800000
VLDR            S16, =-1.0
VLDR            S17, =1.0
VLDR            S18, =1.6777e7
VLDR            S19, =0.0
CMP             R0, #0
BEQ             loc_14B4F4
CMP             R0, #1
BEQ             loc_14B578
CMP             R0, #2
BNE             loc_14B664
B               loc_14B608
VLDR            S10, [R4,#0x68]
VLDR            S0, [SP,#0x40+var_40]
VLDR            S9, [R4,#0x6C]
VLDR            S8, [SP,#0x40+var_3C]
VMUL.F32        S0, S0, S10
VLDR            S7, [R4,#0x70]
VLDR            S6, [SP,#0x40+var_38]
VLDR            S5, [R4,#0x74]
ADD             R0, R4, #0x7C ; '|'
VLDR            S4, [R4,#0x78]
VLDR            S1, [R4,#0x84]
VLDM            R0, {S2-S3}
VMLA.F32        S0, S8, S9
VMLA.F32        S0, S6, S7
VADD.F32        S0, S5, S0
VMLA.F32        S2, S0, S4
VMLA.F32        S1, S0, S3
VDIV.F32        S0, S2, S1
VMOV            R0, S0
CMP             R0, R9
VMOVHI          R0, S16
BHI             loc_14B560
VMOV.F32        S0, S19
VMOV            S1, R0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT          R0, S0
VMOV            S0, R0
VADD.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VCVT.U32.F32    S0, S0
VMOV            R5, S0
B               loc_14B664
MOV             R1, SP
MOV             R0, R1
BL              sub_4800C0
VLDR            S10, [R4,#0x68]
VLDR            S0, [SP,#0x40+var_40]
VLDR            S9, [R4,#0x6C]
VLDR            S8, [SP,#0x40+var_3C]
VMUL.F32        S0, S0, S10
VLDR            S6, [R4,#0x70]
VLDR            S7, [SP,#0x40+var_38]
VLDR            S5, [R4,#0x74]
ADD             R1, R4, #0x7C ; '|'
VLDR            S4, [R4,#0x78]
VLDR            S1, [R4,#0x84]
VLDM            R1, {S2-S3}
VMLA.F32        S0, S8, S9
VMLA.F32        S0, S7, S6
VADD.F32        S0, S5, S0
VMLA.F32        S2, S0, S4
VMLA.F32        S1, S0, S3
VDIV.F32        S0, S2, S1
VMOV            R1, S0
CMP             R1, R9
VMOVHI          R1, S16
BHI             loc_14B5F0
VMOV.F32        S0, S19
VMOV            S1, R1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT          R1, S0
VMOV            S0, R1
VADD.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VCVT.U32.F32    S0, S0
VMOV            R5, S0
B               loc_14B664
VLDR            S0, [SP,#0x40+var_38]
VLDR            S1, [R4,#0x7C]
VLDR            S4, [R4,#0x78]
VNEG.F32        S0, S0
VLDR            S2, [R4,#0x84]
VLDR            S3, [R4,#0x80]
VMLA.F32        S1, S0, S4
VMLA.F32        S2, S0, S3
VDIV.F32        S0, S1, S2
VMOV            R2, S0
CMP             R2, R9
VMOVHI          R2, S16
BHI             loc_14B650
VMOV.F32        S0, S19
VMOV            S1, R2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT          R2, S0
VMOV            S0, R2
VADD.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VCVT.U32.F32    S0, S0
VMOV            R5, S0
CMP             R8, #0
BEQ             loc_14B760
BIC             R2, R0, #0x60000000
LDR             R0, =0xE000001F
MOV             R1, #0x1FFFFFFF
ORR             R2, R2, #0xC0000000
AND             R12, R1, R5,LSL#5
AND             R0, R0, R2
MOV             R3, #0x1C
ORR             R0, R0, R12
AND             R1, R3, R7,LSL#2
BIC             R0, R0, #0x1C
ORR             R0, R0, R1
BIC             R8, R0, #3
LDR             R0, [R4,#0x14]
LDR             R2, [R4,#8]
LDR             R1, [R4,#0x10]
MOV             R9, #0
RSB             R3, R0, R0,LSL#3
MOV             R10, R9
ADD             R5, R2, R3,LSL#2
STR             R5, [R1,R0,LSL#2]
LDR             R0, [R4,#0x14]
MOV             R11, R9
ADD             R0, R0, #1
STR             R0, [R4,#0x14]
ADD             R0, R4, R7,LSL#2
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, =sub_14C5F8
STRB            R7, [R5]
STR             R0, [R5,#0x18]
ADD             R0, R5, #8
STR             R8, [R5,#4]
STM             R0, {R6,R9-R11}
LDR             R0, [R6,#0x40]
CMP             R0, #0
CMPNE           R5, #0
BEQ             loc_14B750
TST             R8, #0x80000000
MOV             R1, R8
BEQ             loc_14B750
MOV             R2, R1,LSL#3
MOV             R3, #0
ADD             R0, R0, R2,LSR#8
MOV             R2, #0xFFFFFF
CMP             R2, R0
MOVLE           R0, R2
BLE             loc_14B738
CMP             R0, #0
MOVLE           R0, R3
MOV             R3, #0x1FFFFFFF
ADD             R2, R3, #0xC0000020
AND             R1, R8, R2
AND             R0, R3, R0,LSL#5
ORR             R0, R0, R1
STR             R0, [R5,#4]
ADD             SP, SP, #0xC
MOV             R0, R5
VPOP            {D8-D9}
POP             {R4-R11,PC}
MOV             R2, #0x1C000000
BIC             R0, R0, #0xFC000000
AND             R1, R2, R7,LSL#26
ORR             R0, R0, #0x40000000
ORR             R0, R0, R1
AND             R8, R0, #0xFC000000
B               loc_14B69C
