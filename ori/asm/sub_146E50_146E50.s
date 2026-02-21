PUSH            {R4-R12,LR}
ADD             R0, R0, #0x164
MOV             R7, R1
VPUSH           {D8-D9}
LDM             R0, {R6,R8}
CMP             R6, R8
BEQ             loc_1470E8
MOV             R10, #5
VLDR            S16, =1.0
VLDR            S17, =0.0
VLDR            S18, =255.0
VLDR            S19, =0.5
MOV             R9, #0
CMP             R7, #0
BEQ             loc_146ED4
LDR             R0, [R6]
MOV             R4, R7
LDR             R5, [R0,#8]
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_146ED4
LDR             R1, [R5,#0xC]
ADD             R0, R5, #0xC
CMP             R1, #0
ADDNE           R1, R1, R0
LDR             R0, [R4]
BL              sub_3000AC
CMP             R0, #0
NOP
BEQ             loc_1470DC
LDR             R0, [R4,#4]!
CMP             R0, #0
BNE             loc_146EA4
LDR             R0, [R6]
LDR             R11, [R0,#0x48]
ADD             R1, R11, #0x288
LDR             R0, [R11,#0x288]
CMP             R0, #0
ADDNE           R1, R1, R0
MOVEQ           R1, R9
MOV             R0, R1
ADD             R1, R1, #0xB8
MOV             R5, R1
LDR             R2, [R1]
AND             R2, R2, #0xFF
CMP             R2, #5
BEQ             loc_146F48
LDR             LR, [R5,#4]
LDR             R1, [R5,#0xC]
ORR             LR, LR, #0xF
BIC             R1, R1, #0xF
BIC             LR, LR, #0xF0
BIC             R1, R1, #0xF0
ORR             LR, LR, #0xE0
STR             R1, [R5,#0xC]
STR             LR, [R5,#4]
LDR             R1, [R5,#0x10]
BIC             R1, R1, #0xF
ORR             R1, R1, #1
STR             R1, [R5,#0x10]
STR             R10, [R5]
STR             R9, [R11,#0x2C8]
ADD             R0, R0, #0x9C
MOV             R3, R0
LDR             R1, [R0]
AND             R1, R1, #0xFF
CMP             R1, #5
BEQ             loc_146F8C
LDR             R12, [R3,#4]
ORR             R12, R12, #0xF
STR             R12, [R3,#4]
LDR             R0, [R3,#0xC]
BIC             R0, R0, #0xF
STR             R0, [R3,#0xC]
LDR             R0, [R3,#0x10]
BIC             R0, R0, #0xF
STR             R0, [R3,#0x10]
STR             R10, [R3]
STR             R9, [R11,#0x2C8]
LDR             R0, =dword_6CEEC8
LDR             R1, [R0]
LDR             R0, [R6]
TST             R1, #1
LDR             R5, [R0,#0x30]
BNE             loc_146FD4
LDR             R0, =dword_6CEEC8
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_146FD4
LDR             R0, =flt_6EA2F8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6EA2FC - 0x6EA2F8)]
VSTR            S16, [R0,#(flt_6EA300 - 0x6EA2F8)]
VSTR            S16, [R0,#(flt_6EA304 - 0x6EA2F8)]
LDR             R0, =dword_6CEEC8
NOP
LDR             R2, =flt_6EA2F8
ADD             R1, R5, #0xC4
ADD             R0, R5, #0x24 ; '$'
LDM             R2, {R3,R12}
LDR             R4, [R2,#(flt_6EA300 - 0x6EA2F8)]
LDR             R2, [R2,#(flt_6EA304 - 0x6EA2F8)]
STR             R2, [R5,#0xD0]
STR             R4, [R5,#0xCC]
STM             R1, {R3,R12}
VLDR            S1, [R5,#0xC4]
VMOV            R2, S1
CMP             R2, #0x3F800000
VMOVGT.F32      S1, S16
BGT             loc_147018
VCMPE.F32       S1, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S17
VMOV.F32        S2, S19
VLDR            S0, [R1,#4]
VMOV            R3, S0
VMLA.F32        S2, S1, S18
CMP             R3, #0x3F800000
VMOVGT.F32      S0, S16
VCVT.U32.F32    S1, S2
VMOV            R2, S1
AND             R2, R2, #0xFF
BGT             loc_14704C
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S17
VMOV.F32        S2, S19
VLDR            S1, [R1,#8]
VMOV            R3, S1
VMLA.F32        S2, S0, S18
CMP             R3, #0x3F800000
VMOVGT.F32      S1, S16
VCVT.U32.F32    S0, S2
VMOV            R12, S0
AND             R3, R12, #0xFF
BGT             loc_147080
VCMPE.F32       S1, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S17
VMOV.F32        S2, S19
VLDR            S0, [R1,#0xC]
VMOV            R1, S0
VMOV.F32        S3, S2
CMP             R1, #0x3F800000
VMOVGT.F32      S0, S16
VMLA.F32        S3, S1, S18
VCVT.U32.F32    S1, S3
VMOV            R12, S1
AND             R12, R12, #0xFF
BGT             loc_1470B8
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S17
VMLA.F32        S2, S0, S18
VCVT.U32.F32    S0, S2
VMOV            R1, S0
MOV             R1, R1,LSL#24
ORR             R1, R1, R12,LSL#16
ORR             R1, R1, R3,LSL#8
ORR             R1, R1, R2
STR             R1, [R0,#0xD8]
STR             R9, [R5,#0x2B4]
ADD             R6, R6, #4
CMP             R6, R8
BNE             loc_146E84
VPOP            {D8-D9}
POP             {R4-R12,PC}
