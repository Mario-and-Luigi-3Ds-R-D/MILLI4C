PUSH            {R4-R6}
MOV             R12, #1
VLDR            S0, [R0]
VLDR            S1, =0.0
LDR             R2, =0xF006D
VLDR            S2, =128.0
VCMP.F32        S0, S1
SUB             R4, R2, #0x20 ; ' '
SUB             R3, R2, #0x1F
VMRS            APSR_nzcv, FPSCR
BNE             loc_11E260
STR             R12, [R1],#4
ADD             R5, R0, #0xC
STR             R2, [R1],#4
VLDM            R5, {S0-S1}
VSUB.F32        S0, S0, S1
VMOV            R2, S0
BICS            R5, R2, #0x80000000
BEQ             loc_11E1B8
MOV             R5, R2,LSL#1
MOV             R5, R5,LSR#24
SUB             R5, R5, #0x40 ; '@'
CMP             R5, #0
MOVLT           R2, R2,LSR#31
MOVLT           R2, R2,LSL#23
BLT             loc_11E1CC
MOV             R6, R2,LSL#9
MOV             R2, R2,LSR#31
MOV             R6, R6,LSR#16
ORR             R5, R6, R5,LSL#16
ORR             R2, R5, R2,LSL#23
STM             R1!, {R2,R4}
LDRB            R2, [R0,#4]
CMP             R2, #0
VLDREQ          S0, [R0,#0xC]
BEQ             loc_11E214
VLDR            S3, [R0,#0x10]
VLDR            S0, [R0,#0xC]
VLDR            S1, [R0,#8]
LDRB            R0, [R0,#0x14]
VSUB.F32        S3, S0, S3
MOV             R0, R12,LSL R0
SUB             R0, R0, #1
VMUL.F32        S2, S3, S2
VMUL.F32        S2, S2, S1
VMOV            S1, R0
VCVT.F32.S32    S3, S1
VDIV.F32        S1, S2, S3
VSUB.F32        S0, S0, S1
VMOV            R0, S0
BICS            R2, R0, #0x80000000
BEQ             loc_11E23C
MOV             R2, R0,LSL#1
MOV             R2, R2,LSR#24
SUB             R2, R2, #0x40 ; '@'
CMP             R2, #0
MOVLT           R0, R0,LSR#31
MOVLT           R0, R0,LSL#23
BLT             loc_11E250
MOV             R12, R0,LSL#9
MOV             R0, R0,LSR#31
MOV             R12, R12,LSR#16
ORR             R2, R12, R2,LSL#16
ORR             R0, R2, R0,LSL#23
STM             R1, {R0,R3}
ADD             R0, R1, #8
POP             {R4-R6}
BX              LR
MOV             R5, #0
STR             R5, [R1],#4
STR             R2, [R1],#4
VLDR            S0, [R0]
VNEG.F32        S0, S0
VMOV            R2, S0
BICS            R5, R2, #0x80000000
BEQ             loc_11E29C
MOV             R5, R2,LSL#1
MOV             R5, R5,LSR#24
SUB             R5, R5, #0x40 ; '@'
CMP             R5, #0
MOVLT           R2, R2,LSR#31
MOVLT           R2, R2,LSL#23
BLT             loc_11E2B0
MOV             R6, R2,LSL#9
MOV             R2, R2,LSR#31
MOV             R6, R6,LSR#16
ORR             R5, R6, R5,LSL#16
ORR             R2, R5, R2,LSL#23
STM             R1!, {R2,R4}
LDRB            R2, [R0,#4]
CMP             R2, #0
BEQ             loc_11E354
LDRB            R2, [R0,#0x14]
CMP             R2, #0x18
BEQ             loc_11E318
VLDR            S1, [R0,#8]
MOV             R0, R12,LSL R2
SUB             R0, R0, #1
VMOV            S0, R0
VCVT.F32.S32    S2, S0
VDIV.F32        S0, S1, S2
VMOV            R0, S0
BICS            R2, R0, #0x80000000
BEQ             loc_11E300
MOV             R2, R0,LSL#1
MOV             R2, R2,LSR#24
SUBS            R2, R2, #0x40 ; '@'
BMI             loc_11E344
MOV             R12, R0,LSL#9
MOV             R0, R0,LSR#31
MOV             R12, R12,LSR#16
ORR             R2, R12, R2,LSL#16
ORR             R0, R2, R0,LSL#23
B               loc_11E34C
VLDR            S0, [R0,#8]
VLDR            S1, =1.6777e7
VMUL.F32        S2, S0, S2
VDIV.F32        S0, S2, S1
VMOV            R0, S0
BICS            R2, R0, #0x80000000
BEQ             loc_11E300
MOV             R2, R0,LSL#1
MOV             R2, R2,LSR#24
SUBS            R2, R2, #0x40 ; '@'
BPL             loc_11E300
MOV             R0, R0,LSR#31
MOV             R0, R0,LSL#23
VMOV            S0, R0
VCVT.F32.U32    S1, S0
VCVT.U32.F32    S0, S1
VMOV            R0, S0
B               loc_11E250
