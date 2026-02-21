PUSH            {R4-R8}
MOV             R3, R0
LDR             R0, [R0,#8]
VLDR            S2, =0.5
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VMOV            R2, S0
BICS            R12, R2, #0x80000000
BEQ             loc_12CABC
MOV             R12, R2,LSL#1
MOV             R12, R12,LSR#24
SUB             R12, R12, #0x40 ; '@'
CMP             R12, #0
MOVLT           R2, R2,LSR#31
MOVLT           R12, R2,LSL#23
BLT             loc_12CAD0
MOV             R4, R2,LSL#9
MOV             R2, R2,LSR#31
MOV             R4, R4,LSR#16
ORR             R12, R4, R12,LSL#16
ORR             R12, R12, R2,LSL#23
VMOV            S0, R0
VLDR            S1, =2.0
VCVT.F32.U32    S3, S0
VDIV.F32        S0, S1, S3
VMOV            R2, S0
BICS            R0, R2, #0x80000000
MOVEQ           R4, R2,LSL#9
MOVEQ           R4, R4,LSR#9
BEQ             loc_12CB18
MOV             R0, R2,LSL#1
MOV             R4, R2,LSL#9
MOV             R0, R0,LSR#24
SUB             R0, R0, #0x40 ; '@'
CMP             R0, #0
MOVLT           R0, R2,LSR#31
MOV             R4, R4,LSR#9
MOVLT           R0, R0,LSL#30
BLT             loc_12CB24
MOV             R2, R2,LSR#31
ORR             R0, R4, R0,LSL#23
ORR             R0, R0, R2,LSL#30
MOV             R5, R0,LSL#1
LDR             R0, [R3,#0xC]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VMOV            R2, S0
BICS            R4, R2, #0x80000000
BEQ             loc_12CB60
MOV             R4, R2,LSL#1
MOV             R4, R4,LSR#24
SUB             R4, R4, #0x40 ; '@'
CMP             R4, #0
MOVLT           R2, R2,LSR#31
MOVLT           R4, R2,LSL#23
BLT             loc_12CB74
MOV             R6, R2,LSL#9
MOV             R2, R2,LSR#31
MOV             R6, R6,LSR#16
ORR             R4, R6, R4,LSL#16
ORR             R4, R4, R2,LSL#23
VMOV            S0, R0
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
VMOV            R2, S0
BICS            R0, R2, #0x80000000
MOVEQ           R6, R2,LSL#9
MOVEQ           R6, R6,LSR#9
BEQ             loc_12CBB8
MOV             R0, R2,LSL#1
MOV             R6, R2,LSL#9
MOV             R0, R0,LSR#24
SUB             R0, R0, #0x40 ; '@'
CMP             R0, #0
MOVLT           R0, R2,LSR#31
MOV             R6, R6,LSR#9
MOVLT           R2, R0,LSL#30
BLT             loc_12CBC4
MOV             R2, R2,LSR#31
ORR             R0, R6, R0,LSL#23
ORR             R2, R0, R2,LSL#30
LDR             R8, =0x70041
LDR             R7, =0xF0042
ADD             R0, R1, #8
STR             R12, [R1]
STR             R8, [R1,#4]
STM             R0!, {R5,R7}
ORR             R6, R8, R7,ASR#18
MOV             R1, R2,LSL#1
STM             R0!, {R4,R6}
ADD             R2, R7, #2
STM             R0!, {R1,R2}
ADD             R12, R2, #0x24 ; '$'
LDM             R3, {R1,R2}
ORR             R1, R1, R2,LSL#16
STM             R0!, {R1,R12}
POP             {R4-R8}
BX              LR
