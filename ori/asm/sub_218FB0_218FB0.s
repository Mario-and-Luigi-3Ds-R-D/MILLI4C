PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R4, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0x24
LDRB            R0, [R0,#0xF2]
CMP             R0, #0
BEQ             loc_219284
LDR             R0, [R6,#0x9C]
MOVS            R0, R0,LSR#24
BEQ             loc_219284
ADD             R5, R6, #0x110
LDR             R1, =0x92492493
LDM             R5, {R5,R11}
MOV             R10, #0
MOV             R2, R10
SUB             R0, R11, R5
SMLAL           R2, R0, R1, R0
MOV             R2, R0,ASR#5
SUBS            R0, R2, R0,ASR#31
BEQ             loc_219284
LDRB            R0, [R6,#0xFD]
CMP             R0, #0
BEQ             loc_219290
CMP             R0, #1
BNE             loc_219284
LDR             R0, [R6,#0x148]
CMP             R0, #0
BEQ             loc_219284
CMP             R5, R11
ADD             R7, R4, #4
BEQ             loc_219184
VLDR            S18, =-1.0
VLDR            S19, =0.0
VLDR            S16, =1.0
VLDR            S17, =1.6777e7
LDRB            R3, [R6,#0xF0]
MOV             R2, #0
MOV             R1, R5
ADD             R0, SP, #0x58+var_40
BL              sub_14C73C
VLDR            S0, [SP,#0x58+var_40]
VLDR            S10, [R7,#0x68]
VLDR            S8, [SP,#0x58+var_3C]
VLDR            S9, [R7,#0x6C]
VMUL.F32        S0, S0, S10
VLDR            S6, [SP,#0x58+var_38]
VLDR            S7, [R7,#0x70]
VLDR            S3, [R7,#0x74]
VLDR            S2, [R7,#0x7C]
VLDR            S5, [R7,#0x78]
VLDR            S1, [R7,#0x84]
VLDR            S4, [R7,#0x80]
LDR             R1, =0xBF800000
VMLA.F32        S0, S8, S9
VMLA.F32        S0, S6, S7
VADD.F32        S0, S3, S0
VMLA.F32        S2, S0, S5
VMLA.F32        S1, S0, S4
VDIV.F32        S0, S2, S1
VMOV            R0, S0
CMP             R0, R1
VMOVHI          R0, S18
BHI             loc_2190C0
VMOV            S0, R0
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VMOVGT          R0, S19
LDR             R4, =0xE000001F
BIC             R12, R8, #0x60000000
VMOV            S0, R0
LDR             R0, [R6,#0x110]
LDR             R3, =0x92492493
MOV             R1, R10
SUB             R2, R5, R0
ORR             R0, R12, #0x80000000
VADD.F32        S0, S0, S16
ORR             R0, R0, #0x40000000
AND             R4, R4, R0
SMLAL           R1, R2, R3, R2
MOV             R12, #0x1FFFFFFF
MOV             R9, #1
MOV             R1, R2,ASR#5
VMUL.F32        S0, S0, S17
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R0, R12, R0,LSL#5
ORR             R0, R0, R4
BIC             R0, R0, #0x1F
ORR             R3, R0, #4
SUB             R0, R1, R2,ASR#31
AND             R0, R0, #3
ORR             R8, R3, R0
LDR             R0, [R7,#0x14]
LDR             R2, [R7,#8]
LDR             R1, [R7,#0x10]
RSB             R3, R0, R0,LSL#3
ADD             R4, R2, R3,LSL#2
STR             R4, [R1,R0,LSL#2]
LDR             R0, [R7,#0x14]
ADD             R0, R0, #1
STR             R0, [R7,#0x14]
LDR             R0, [R7,#0x1C]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
STRB            R9, [R4]
ADD             R1, R4, #0xC
STR             R6, [R4,#8]
STR             R8, [R4,#4]
STM             R1, {R5,R10}
ADD             R5, R5, #0x38 ; '8'
LDR             R0, =sub_14C5F8
STR             R10, [R4,#0x14]!
CMP             R5, R11
STR             R0, [R4,#4]
BNE             loc_219040
LDR             R0, =off_6CE970
LDR             R2, [R6,#0x148]
LDR             R0, [R0]
ADD             R1, R0, #0x100000
ADD             R1, R1, #0xC400
ADD             R3, R1, #0x150
ADD             R0, R2, #0x20 ; ' '
LDM             R3, {R3-R5,R7-R9,R11,R12}
STR             R3, [R2,#0x20]!
ADD             R2, R2, #4
STM             R2, {R4,R5,R7-R9,R11,R12}
ADD             R2, R1, #0x170
LDR             R1, [R1,#(off_10C57C - 0x10C400)]
LDM             R2, {R2,R3,R12}
STR             R1, [R0,#0x2C]
ADD             R0, R0, #0x20 ; ' '
ADD             R1, SP, #0x58+var_50
STM             R0, {R2,R3,R12}
MOV             R0, #0xFF
STRB            R0, [SP,#0x58+var_50]
STRB            R10, [SP,#0x58+var_4C]
STRB            R0, [SP,#0x58+var_48]
STRB            R10, [SP,#0x58+var_44]
STRB            R0, [SP,#0x58+var_50+1]
STRB            R10, [SP,#0x58+var_4C+1]
STRB            R0, [SP,#0x58+var_48+1]
STRB            R10, [SP,#0x58+var_44+1]
STRB            R0, [SP,#0x58+var_50+2]
STRB            R10, [SP,#0x58+var_4C+2]
STRB            R0, [SP,#0x58+var_48+2]
STRB            R10, [SP,#0x58+var_44+2]
STRB            R0, [SP,#0x58+var_50+3]
STRB            R10, [SP,#0x58+var_4C+3]
STRB            R0, [SP,#0x58+var_48+3]
STRB            R10, [SP,#0x58+var_44+3]
LDR             R0, [R6]
MOV             R2, #1
LDR             R3, [R0,#0x44]
MOV             R0, R6
BLX             R3
LDR             R0, [SP,#0x58+var_50]
MOV             R2, SP
MOV             R1, #0
STR             R0, [SP,#0x58+var_58]
LDR             R0, [R6,#0x148]
BL              sub_12C9C4
LDR             R0, [SP,#0x58+var_4C]
MOV             R2, SP
MOV             R1, #1
STR             R0, [SP,#0x58+var_58]
LDR             R0, [R6,#0x148]
BL              sub_12C9C4
LDR             R0, [SP,#0x58+var_48]
MOV             R2, SP
MOV             R1, #2
STR             R0, [SP,#0x58+var_58]
LDR             R0, [R6,#0x148]
BL              sub_12C9C4
LDR             R0, [SP,#0x58+var_44]
MOV             R2, SP
MOV             R1, #3
STR             R0, [SP,#0x58+var_58]
LDR             R0, [R6,#0x148]
BL              sub_12C9C4
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R11,PC}
LDRB            R1, [R6,#0xFE]
LDR             R2, [R6]
MOV             R0, R6
RSB             R1, R1, R1,LSL#3
LDR             R2, [R2,#0x20]
ADD             R1, R5, R1,LSL#3
BLX             R2
ADD             SP, SP, #0x24 ; '$'
MOV             R1, R4
VPOP            {D8-D9}
MOV             R0, R6
MOV             R3, #5
POP             {R4-R11,LR}
MOV             R2, #1
B               sub_14B490
