PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x9C]
STR             R0, [SP,#0x40+var_3C]
MOVS            R0, R0,LSR#24
BEQ             loc_2A2A58
MOV             R0, #0x300
STR             R0, [SP,#0x40+var_40]
MOV             R3, #0
MOV             R2, #1
ADD             R1, R4, #0x1B0
MOV             R0, R4
BL              sub_5C4A88
LDR             R0, [R4,#0x9C]
ADD             R2, SP, #0x40+var_3C
MOV             R1, #0
STR             R0, [SP,#0x40+var_3C]
ADD             R0, R4, #0x190
BL              sub_12C9C4
ADD             R6, R4, #0x190
ADD             R4, R5, #4
LDRB            R0, [R6,#0x6D]
LDR             R10, =0xBF800000
LDR             R8, =0xE000001F
CMP             R0, #0
LDRB            R0, [R6,#0x6F]
LDR             R7, [R6,#4]
MOVNE           R5, #1
MOVEQ           R5, #0
VLDR            S17, =-1.0
VLDR            S18, =1.0
VLDR            S19, =1.6777e7
VLDR            S16, =0.0
TST             R0, #1
MOV             R9, #0x1FFFFFFF
BEQ             loc_2A294C
VLDR            S0, [R6,#0x4C]
CMP             R5, #0
MOVEQ           R0, #0
VNEG.F32        S0, S0
BEQ             loc_2A2940
VLDR            S1, [R4,#0x7C]
VLDR            S4, [R4,#0x78]
VLDR            S2, [R4,#0x84]
VLDR            S3, [R4,#0x80]
VMLA.F32        S1, S0, S4
VMLA.F32        S2, S0, S3
VDIV.F32        S0, S1, S2
VMOV            R0, S0
CMP             R0, R10
VMOVHI.F32      S0, S17
BHI             loc_2A2930
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S16
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R5, #0
BEQ             loc_2A2A7C
B               loc_2A29DC
CMP             R5, #0
BEQ             loc_2A2A64
VLDR            S1, [R6,#0x2C]
VLDR            S0, [R6,#0x3C]
VLDR            S2, [R6,#0x4C]
CMP             R5, #0
MOVEQ           R0, #0
BEQ             loc_2A29D4
VLDR            S10, [R4,#0x68]
ADD             R0, R4, #0x6C ; 'l'
VLDR            S7, [R4,#0x74]
VMUL.F32        S1, S1, S10
VLDM            R0, {S8-S9}
ADD             R0, R4, #0x7C ; '|'
VLDR            S6, [R4,#0x78]
VLDR            S3, [R4,#0x84]
VLDM            R0, {S4-S5}
VMLA.F32        S1, S0, S8
VMLA.F32        S1, S2, S9
VADD.F32        S0, S7, S1
VMLA.F32        S4, S0, S6
VMLA.F32        S3, S0, S5
VDIV.F32        S0, S4, S3
VMOV            R0, S0
CMP             R0, R10
VMOVHI.F32      S0, S17
BHI             loc_2A29C4
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S16
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VCVT.U32.F32    S0, S0
VMOV            R0, S0
CMP             R5, #0
BEQ             loc_2A2A7C
BIC             R1, R1, #0x60000000
ORR             R1, R1, #0xC0000000
AND             R0, R9, R0,LSL#5
AND             R1, R1, R8
ORR             R0, R0, R1
BIC             R0, R0, #0x1F
AND             R2, R7, #3
ORR             R0, R0, #4
ORR             R7, R0, R2
LDR             R0, [R4,#0x14]
LDR             R2, [R4,#8]
LDR             R1, [R4,#0x10]
MOV             R8, #0
RSB             R3, R0, R0,LSL#3
MOV             R11, #1
ADD             R5, R2, R3,LSL#2
STR             R5, [R1,R0,LSL#2]
LDR             R0, [R4,#0x14]
MOV             R9, R8
MOV             R10, R8
ADD             R0, R0, #1
STR             R0, [R4,#0x14]
LDR             R0, [R4,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
STRB            R11, [R5]
STR             R7, [R5,#4]!
STR             R0, [R5,#0x14]
ADD             R5, R5, #4
STM             R5, {R6,R8-R10}
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
NOP
BL              sub_4635D8
VLDR            S1, [R0]
VLDR            S0, [R0,#4]
VLDR            S2, [R0,#8]
B               loc_2A2960
BIC             R0, R1, #0x80000000
AND             R0, R0, #0x80000000
BIC             R1, R7, #0xFC000000
ORR             R0, R0, #0x44000000
ORR             R7, R0, R1
B               loc_2A2A00
