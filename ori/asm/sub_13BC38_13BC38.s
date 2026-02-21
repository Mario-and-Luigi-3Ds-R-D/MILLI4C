PUSH            {R4-R12,LR}
LDR             R2, =off_6D48F8
LDR             R3, [R2]
LDR             R2, [R0,#0x34]
ADD             R12, R3, #0x58 ; 'X'
ADD             R4, R3, #0x770
ADD             R3, R12, R1
CMP             R2, #0
LDRB            LR, [R3,#0xAC]
LDREQ           R2, =0x502
MOVNE           R2, #0
CMP             LR, #0
BEQ             loc_13BC74
CMP             R2, #0
BEQ             loc_13BCC4
CMP             R1, #0
LDREQ           R0, [R4]
BICEQ           R0, R0, #1
BEQ             loc_13BCB0
CMP             R1, #1
LDREQ           R0, [R4]
BICEQ           R0, R0, #2
BEQ             loc_13BCB0
CMP             R1, #2
LDREQ           R0, [R4]
LDRNE           R0, =0x501
BICEQ           R0, R0, #4
STREQ           R0, [R4]
BEQ             loc_13BCB4
POP             {R4-R12,PC}
STR             R0, [R4]
LDRB            R0, [R3,#0xAC]
CMP             R0, #0
MOVNE           R0, R2
POP             {R4-R12,PC}
VLDR            S0, =255.0
VLDR            S7, [R0,#0x1C]
VLDR            S8, [R0,#0x18]
VLDR            S1, [R0,#0x20]
VLDR            S6, [R0,#0x24]
VMUL.F32        S7, S7, S0
VMUL.F32        S8, S8, S0
VMUL.F32        S9, S1, S0
VMUL.F32        S10, S6, S0
VLDR            S2, =16.0
VLDR            S5, =256.0
VLDR            S3, =8191.0
VLDR            S4, =4096.0
VLDR            S1, =0.0
CMP             R1, #0
VCVT.U32.F32    S6, S7
VCVT.U32.F32    S0, S8
VCVT.U32.F32    S7, S9
VCVT.U32.F32    S8, S10
MOV             R11, #0x7FFFFFF
MOV             LR, #0xFF
MOV             R2, #0xF0000
MOV             R3, #0xF000000
MOV             R6, #0
VMOV            R8, S6
VMOV            R7, S0
VMOV            R9, S7
VMOV            R10, S8
ORR             R7, R7, R8,LSL#8
ADD             R5, R0, #0x34 ; '4'
ORR             R7, R7, R9,LSL#16
ORR             R7, R7, R10,LSL#24
BEQ             loc_13BD60
LDR             R12, =0x190A
CMP             R1, #1
BEQ             loc_13C2D4
CMP             R1, #2
BNE             loc_13CBC8
B               loc_13C74C
LDR             R1, [R4,#0xC]
STR             R7, [R4,#4]
BIC             R8, R1, #0x100000
STR             R8, [R4,#0xC]
LDR             R1, [R4,#8]
LDR             R7, [R5,#0xC]
BIC             R1, R1, #0x7000000
BIC             R1, R1, #0xFF0000
AND             R7, R11, R7,LSL#16
ORR             R1, R1, R7
STR             R1, [R4,#8]
LDR             R7, [R5,#0x10]
MOV             R1, R1,LSR#11
MOV             R1, R1,LSL#11
MOV             R7, R7,LSL#21
MOV             R7, R7,LSR#21
ORR             R7, R7, R1
STR             R7, [R4,#8]
VLDR            S0, [R0,#0x28]
VMOV            R1, S0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_13BDC8
MOV             R1, R1,LSL#1
CMP             LR, R1,LSR#24
BNE             loc_13BDD8
LDR             R1, [R4,#0x10]
MOV             LR, R1,LSR#13
MOV             LR, LR,LSL#13
B               loc_13BE34
VADD.F32        S0, S0, S2
VMUL.F32        S0, S0, S5
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_13BE3C
VMOV            R1, S0
CMP             R1, #0x46000000
VMOVGE.F32      S0, S3
BGE             loc_13BE10
LDR             LR, =0x45800000
VMOV            R1, S0
CMP             R1, LR
BLT             loc_13BE3C
VSUB.F32        S0, S0, S4
LDR             LR, [R4,#0x10]
MOV             LR, LR,LSR#13
MOV             LR, LR,LSL#13
VCVT.U32.F32    S0, S0
VMOV            R1, S0
MOV             R1, R1,LSL#19
MOV             R1, R1,LSR#19
ORR             LR, LR, R1
STR             LR, [R4,#0x10]
B               loc_13BE64
VADD.F32        S0, S0, S4
LDR             LR, [R4,#0x10]
MOV             LR, LR,LSR#13
MOV             LR, LR,LSL#13
VCVT.U32.F32    S0, S0
VMOV            R1, S0
MOV             R1, R1,LSL#19
MOV             R1, R1,LSR#19
ORR             LR, LR, R1
STR             LR, [R4,#0x10]
LDR             R1, [R4,#0x38]
LDR             R7, [R5,#0x1C]
LDR             LR, =0x6040
BIC             R1, R1, #0xF
AND             R7, R7, #0xF
ORR             R7, R7, R1
STR             R7, [R4,#0x38]
LDR             R1, [R5,#0x14]
CMP             R1, LR
SUB             LR, R1, LR
BEQ             loc_13C200
BGT             loc_13BEA8
SUB             R1, R1, #0x1900
SUB             R1, R1, #6
CMP             R1, #4
BHI             loc_13BEC4
B               loc_13BECC
CMP             LR, #0x10
BEQ             loc_13C23C
CMP             LR, #0x6C0
SUBNE           R1, LR, #0x700
SUBSNE          R1, R1, #0x1A
CMPNE           R1, #1
BEQ             loc_13BECC
LDR             R0, =0x502
POP             {R4-R12,PC}
LDR             R1, [R12,#0xA0]
CMP             R1, #0x6E00
LDR             R1, [R4,#0xC]
BICEQ           R1, R1, #0x70000000
ORREQ           R12, R1, #0x30000000
BICNE           R12, R1, #0x70000000
STR             R12, [R4,#0xC]
LDR             R1, [R0,#8]
SUB             R1, R1, #0x2900
SUBS            R1, R1, #1
BEQ             loc_13BF24
SUB             R1, R1, #0x5800
SUBS            R1, R1, #0x2C ; ','
BEQ             loc_13BF34
CMP             R1, #2
LDREQ           R1, [R4,#0xC]
BICEQ           R12, R1, #0x7000
BEQ             loc_13BF50
SUB             R1, R1, #0x200
SUBS            R1, R1, #0x43 ; 'C'
BNE             loc_13BF54
B               loc_13BF44
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x7000
ORR             R12, R1, #0x2000
B               loc_13BF50
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x7000
ORR             R12, R1, #0x1000
B               loc_13BF50
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x7000
ORR             R12, R1, #0x3000
STR             R12, [R4,#0xC]
LDR             R1, [R0,#0xC]
SUB             R1, R1, #0x2900
SUBS            R1, R1, #1
BEQ             loc_13BF90
SUB             R1, R1, #0x5800
SUBS            R1, R1, #0x2C ; ','
BEQ             loc_13BFD0
CMP             R1, #2
LDREQ           R1, [R4,#0xC]
BICEQ           R12, R1, #0x700
BEQ             loc_13BFEC
SUB             R1, R1, #0x200
SUBS            R1, R1, #0x43 ; 'C'
BNE             loc_13BFF0
B               loc_13BFE0
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x200
B               loc_13BFEC
DCD off_6D48F8
DCD 0x502
DCD 0x501
DCFS 255.0
DCFS 16.0
DCFS 256.0
DCFS 8191.0
DCFS 4096.0
DCFS 0.0
DCD 0x190A
DCD 0x45800000
DCD 0x6040
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x100
B               loc_13BFEC
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x300
STR             R12, [R4,#0xC]
LDR             R1, [R0]
CMP             R1, #0x2600
LDREQ           R1, [R4,#0xC]
BICEQ           R12, R1, #2
BEQ             loc_13C018
SUB             R1, R1, #0x2600
SUBS            R1, R1, #1
LDREQ           R1, [R4,#0xC]
ORREQ           R12, R1, #2
BNE             loc_13C01C
STR             R12, [R4,#0xC]
LDR             R12, [R0,#4]
LDR             R1, =0x2701
CMP             R12, R1
SUB             R1, R12, R1
BEQ             loc_13C178
BGT             loc_13C054
CMP             R12, #0x2600
BEQ             loc_13C068
SUB             R1, R12, #0x2600
SUBS            R1, R1, #1
BEQ             loc_13C134
CMP             R1, #0xFF
BNE             loc_13C154
B               loc_13C08C
CMP             R1, #1
BEQ             loc_13C0E0
CMP             R1, #2
BNE             loc_13C154
B               loc_13C1B8
LDR             R1, [R4,#0x10]
LDR             R2, [R4,#0xC]
BIC             R1, R1, #0xF000000
BIC             R2, R2, #4
BIC             R1, R1, #0xF0000
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x10]
STR             R2, [R4,#0xC]
B               loc_13C154
LDR             R1, [R4,#0xC]
BIC             R12, R1, #4
STR             R12, [R4,#0xC]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x10]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x10]
LDR             R0, [R0,#0x14]
BIC             R2, R1, #0xF000000
CMP             R0, #0
BLT             loc_13C1B0
LDR             R1, [R4,#0xC]
AND             R0, R3, R0,LSL#24
ADD             R6, R4, #0xC
ORR             R2, R2, R0
BIC             R1, R1, #0x1000000
STM             R6, {R1,R2}
B               loc_13C154
LDR             R1, [R4,#0xC]
BIC             R12, R1, #4
STR             R12, [R4,#0xC]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x10]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x10]
LDR             R0, [R0,#0x14]
BIC             R2, R1, #0xF000000
CMP             R0, #0
BLT             loc_13C1F0
LDR             R1, [R4,#0xC]
AND             R0, R3, R0,LSL#24
ADD             R6, R4, #0xC
ORR             R2, R2, R0
ORR             R1, R1, #0x1000000
STM             R6, {R1,R2}
B               loc_13C154
LDR             R1, [R4,#0x10]
LDR             R2, [R4,#0xC]
BIC             R1, R1, #0xF000000
ORR             R2, R2, #4
BIC             R1, R1, #0xF0000
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x10]
STR             R2, [R4,#0xC]
LDR             R2, [R5,#0x14]
LDR             R1, [R4,#0xC]
SUB             R0, R2, #0x6700
SUBS            R0, R0, #0x5A ; 'Z'
MOVEQ           R0, #2
MOVNE           R0, #0
BIC             R1, R1, #0x30 ; '0'
ORR             R1, R1, R0,LSL#4
B               loc_13C1F8
LDR             R1, [R4,#0xC]
ORR             R12, R1, #4
STR             R12, [R4,#0xC]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x10]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x10]
LDR             R0, [R0,#0x14]
BIC             R2, R1, #0xF000000
CMP             R0, #0
BGE             loc_13C0C4
MOV             R0, #0
B               loc_13C0C4
LDR             R1, [R4,#0xC]
ORR             R12, R1, #4
STR             R12, [R4,#0xC]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x10]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x10]
LDR             R0, [R0,#0x14]
BIC             R2, R1, #0xF000000
CMP             R0, #0
BGE             loc_13C118
MOV             R0, #0
B               loc_13C118
STR             R1, [R4,#0xC]
B               loc_13C270
LDR             R1, [R4,#0x10]
LDR             R2, [R4,#0xC]
BIC             R1, R1, #0xF000000
BIC             R1, R1, #0xF0000
BIC             R0, R2, #0x71000000
MOV             R2, R1,LSR#13
ORR             R1, R0, #0x20000006
ADD             R0, R4, #0xC
MOV             R2, R2,LSL#13
ORR             R1, R1, #0x100000
STM             R0, {R1,R2}
BIC             R0, R1, #0x7000
BIC             R0, R0, #0x730
ORR             R1, R0, #0x1100
B               loc_13C1F8
ADD             R1, R4, #0xC
LDM             R1, {R1,R2}
BIC             R0, R1, #0x30 ; '0'
BIC             R1, R2, #0xF000000
BIC             R1, R1, #0xF0000
BIC             R0, R0, #0x70000000
MOV             R1, R1,LSR#13
BIC             R2, R0, #6
MOV             R1, R1,LSL#13
STR             R1, [R4,#0x10]
BIC             R1, R2, #0x7700
STR             R1, [R4,#0xC]
STR             R6, [R4,#4]
LDR             R0, [R5]
BL              sub_13BC34
LDR             R1, [R4,#0x14]
ADD             R2, R4, #4
AND             R1, R1, #0xC0000000
ORR             R1, R1, R0,LSR#3
STR             R1, [R4,#0x14]
LDR             R0, [R4]
ORR             R1, R0, #1
STR             R1, [R4]
MOV             R1, #0xA
MOV             R0, #0x81
BL              sub_1406F0
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_13CBC8
LDR             R3, [R4,#0x38]
LDR             R12, =0xF008E
ADD             LR, R1, #8
STM             R1, {R3,R12}
STR             LR, [R2]
B               loc_13CBC8
VLDR            S0, [R0,#0x28]
VMOV            R1, S0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_13C2F4
MOV             R1, R1,LSL#1
CMP             LR, R1,LSR#24
BNE             loc_13C2FC
MOV             R1, #0
B               loc_13C350
VADD.F32        S0, S0, S2
VMUL.F32        S0, S0, S5
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_13C344
VMOV            R1, S0
CMP             R1, #0x46000000
VMOVGE.F32      S0, S3
BGE             loc_13C334
LDR             LR, =0x45800000
VMOV            R1, S0
CMP             R1, LR
BLT             loc_13C344
VSUB.F32        S0, S0, S4
VCVT.U32.F32    S0, S0
VMOV            R1, S0
B               loc_13C350
VADD.F32        S0, S0, S4
VCVT.U32.F32    S0, S0
VMOV            R1, S0
LDR             LR, [R4,#0x50]
MOV             R1, R1,LSL#19
MOV             LR, LR,LSR#13
MOV             R1, R1,LSR#19
MOV             LR, LR,LSL#13
ORR             LR, LR, R1
STR             LR, [R4,#0x50]
LDR             R1, [R4,#0x4C]
BIC             R1, R1, #0xC0
STR             R1, [R4,#0x4C]
LDR             LR, [R5,#0x14]
CMP             LR, R12
SUB             R12, LR, #0x1900
SUB             R12, R12, #0xA
BEQ             loc_13C3D0
BGE             loc_13C3B0
SUB             R12, LR, #0x1900
SUBS            R12, R12, #6
CMPNE           R12, #1
BEQ             loc_13C3D0
CMP             R12, #2
CMPNE           R12, #3
BEQ             loc_13C3D0
B               loc_13BEC4
SUB             R12, R12, #0x4700
SUBS            R12, R12, #0x46 ; 'F'
BEQ             loc_13C678
CMP             R12, #0x6B0
SUBNE           R12, R12, #0x700
SUBSNE          R12, R12, #0xA
CMPNE           R12, #1
BNE             loc_13BEC4
LDR             R12, [R0,#8]
SUB             R12, R12, #0x2900
SUBS            R12, R12, #1
BICEQ           R1, R1, #0x7000
ORREQ           R12, R1, #0x2000
BEQ             loc_13C41C
SUB             R12, R12, #0x5800
SUBS            R12, R12, #0x2C ; ','
BICEQ           R1, R1, #0x7000
ORREQ           R12, R1, #0x1000
BEQ             loc_13C41C
CMP             R12, #2
BICEQ           R12, R1, #0x7000
BEQ             loc_13C41C
SUB             R12, R12, #0x200
SUBS            R12, R12, #0x43 ; 'C'
BICEQ           R1, R1, #0x7000
ORREQ           R12, R1, #0x3000
BNE             loc_13C420
STR             R12, [R4,#0x4C]
LDR             R1, [R0,#0xC]
SUB             R1, R1, #0x2900
SUBS            R1, R1, #1
BEQ             loc_13C45C
SUB             R1, R1, #0x5800
SUBS            R1, R1, #0x2C ; ','
BEQ             loc_13C46C
CMP             R1, #2
LDREQ           R1, [R4,#0x4C]
BICEQ           R12, R1, #0x700
BEQ             loc_13C488
SUB             R1, R1, #0x200
SUBS            R1, R1, #0x43 ; 'C'
BNE             loc_13C48C
B               loc_13C47C
LDR             R1, [R4,#0x4C]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x200
B               loc_13C488
LDR             R1, [R4,#0x4C]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x100
B               loc_13C488
LDR             R1, [R4,#0x4C]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x300
STR             R12, [R4,#0x4C]
LDR             R1, [R0]
CMP             R1, #0x2600
LDREQ           R1, [R4,#0x4C]
BICEQ           R12, R1, #2
BEQ             loc_13C4B4
SUB             R1, R1, #0x2600
SUBS            R1, R1, #1
LDREQ           R1, [R4,#0x4C]
ORREQ           R12, R1, #2
BNE             loc_13C4B8
STR             R12, [R4,#0x4C]
LDR             R12, [R0,#4]
LDR             R1, =0x2701
CMP             R12, R1
SUB             R1, R12, R1
BEQ             loc_13C5F8
BGT             loc_13C4F0
CMP             R12, #0x2600
BEQ             loc_13C504
SUB             R1, R12, #0x2600
SUBS            R1, R1, #1
BEQ             loc_13C5D0
CMP             R1, #0xFF
BNE             loc_13C5F0
B               loc_13C528
CMP             R1, #1
BEQ             loc_13C57C
CMP             R1, #2
BNE             loc_13C5F0
B               loc_13C638
LDR             R1, [R4,#0x50]
LDR             R2, [R4,#0x4C]
BIC             R1, R1, #0xF000000
BIC             R2, R2, #4
BIC             R1, R1, #0xF0000
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x50]
STR             R2, [R4,#0x4C]
B               loc_13C5F0
LDR             R1, [R4,#0x4C]
BIC             R12, R1, #4
STR             R12, [R4,#0x4C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x50]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BLT             loc_13C630
LDR             R2, [R4,#0x4C]
AND             R0, R3, R0,LSL#24
ORR             R1, R1, R0
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x50]
STR             R2, [R4,#0x4C]
B               loc_13C5F0
LDR             R1, [R4,#0x4C]
BIC             R12, R1, #4
STR             R12, [R4,#0x4C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x50]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BLT             loc_13C670
LDR             R2, [R4,#0x4C]
AND             R0, R3, R0,LSL#24
ORR             R1, R1, R0
ORR             R2, R2, #0x1000000
STR             R1, [R4,#0x50]
STR             R2, [R4,#0x4C]
B               loc_13C5F0
LDR             R1, [R4,#0x50]
LDR             R2, [R4,#0x4C]
BIC             R1, R1, #0xF000000
ORR             R2, R2, #4
BIC             R1, R1, #0xF0000
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x50]
STR             R2, [R4,#0x4C]
STR             R7, [R4,#0x44]
B               loc_13C6A4
LDR             R1, [R4,#0x4C]
ORR             R12, R1, #4
STR             R12, [R4,#0x4C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x50]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BGE             loc_13C560
MOV             R0, #0
B               loc_13C560
LDR             R1, [R4,#0x4C]
ORR             R12, R1, #4
STR             R12, [R4,#0x4C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x50]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x50]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BGE             loc_13C5B4
MOV             R0, #0
B               loc_13C5B4
BIC             R0, R1, #2
LDR             R1, [R4,#0x50]
BIC             R2, R0, #4
BIC             R2, R2, #0x7700
BIC             R1, R1, #0xF000000
BIC             R1, R1, #0xF0000
MOV             R1, R1,LSR#13
MOV             R1, R1,LSL#13
STR             R1, [R4,#0x50]
STR             R2, [R4,#0x4C]
STR             R6, [R4,#0x44]
LDR             R2, [R5,#0x14]
LDR             R1, [R4,#0x4C]
SUB             R0, R2, #0x6700
SUBS            R0, R0, #0x5A ; 'Z'
MOVEQ           R0, #2
MOVNE           R0, #0
BIC             R1, R1, #0x30 ; '0'
ORR             R1, R1, R0,LSL#4
STR             R1, [R4,#0x4C]
LDR             R0, [R4,#0x48]
LDR             R1, [R5,#0xC]
BIC             R0, R0, #0x7000000
BIC             R0, R0, #0xFF0000
AND             R1, R11, R1,LSL#16
ORR             R0, R0, R1
STR             R0, [R4,#0x48]
LDR             R1, [R5,#0x10]
MOV             R0, R0,LSR#11
MOV             R0, R0,LSL#11
MOV             R1, R1,LSL#21
MOV             R1, R1,LSR#21
ORR             R1, R1, R0
STR             R1, [R4,#0x48]
LDR             R0, [R5]
BL              sub_13BC34
LDR             R1, [R4,#0x54]
ADD             R2, R4, #0x44 ; 'D'
AND             R1, R1, #0xC0000000
ORR             R1, R1, R0,LSR#3
STR             R1, [R4,#0x54]
LDR             R0, [R4]
ORR             R1, R0, #2
STR             R1, [R4]
LDR             R1, [R5,#0x1C]
LDR             R0, [R4,#0x58]
AND             R1, R1, #0xF
BIC             R0, R0, #0xF
ORR             R1, R1, R0
STR             R1, [R4,#0x58]
MOV             R1, #6
MOV             R0, #0x91
B               loc_13CBC4
VLDR            S0, [R0,#0x28]
VMOV            R1, S0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_13C76C
MOV             R1, R1,LSL#1
CMP             LR, R1,LSR#24
BNE             loc_13C774
MOV             R1, #0
B               loc_13C7C8
VADD.F32        S0, S0, S2
VMUL.F32        S0, S0, S5
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_13C7BC
VMOV            R1, S0
CMP             R1, #0x46000000
VMOVGE.F32      S0, S3
BGE             loc_13C7AC
LDR             LR, =0x45800000
VMOV            R1, S0
CMP             R1, LR
BLT             loc_13C7BC
VSUB.F32        S0, S0, S4
VCVT.U32.F32    S0, S0
VMOV            R1, S0
B               loc_13C7C8
VADD.F32        S0, S0, S4
VCVT.U32.F32    S0, S0
VMOV            R1, S0
LDR             LR, [R4,#0x70]
MOV             R1, R1,LSL#19
MOV             LR, LR,LSR#13
MOV             R1, R1,LSR#19
MOV             LR, LR,LSL#13
ORR             LR, LR, R1
STR             LR, [R4,#0x70]
LDR             R1, [R4,#0x6C]
BIC             R1, R1, #0xC0
STR             R1, [R4,#0x6C]
LDR             LR, [R5,#0x14]
CMP             LR, R12
SUB             R12, LR, #0x1900
SUB             R12, R12, #0xA
BEQ             loc_13C848
BGE             loc_13C828
SUB             R12, LR, #0x1900
SUBS            R12, R12, #6
CMPNE           R12, #1
BEQ             loc_13C848
CMP             R12, #2
CMPNE           R12, #3
BEQ             loc_13C848
B               loc_13BEC4
SUB             R12, R12, #0x4700
SUBS            R12, R12, #0x46 ; 'F'
BEQ             loc_13CAF0
CMP             R12, #0x6B0
SUBNE           R12, R12, #0x700
SUBSNE          R12, R12, #0xA
CMPNE           R12, #1
BNE             loc_13BEC4
LDR             R12, [R0,#8]
SUB             R12, R12, #0x2900
SUBS            R12, R12, #1
BICEQ           R1, R1, #0x7000
ORREQ           R12, R1, #0x2000
BEQ             loc_13C894
SUB             R12, R12, #0x5800
SUBS            R12, R12, #0x2C ; ','
BICEQ           R1, R1, #0x7000
ORREQ           R12, R1, #0x1000
BEQ             loc_13C894
CMP             R12, #2
BICEQ           R12, R1, #0x7000
BEQ             loc_13C894
SUB             R12, R12, #0x200
SUBS            R12, R12, #0x43 ; 'C'
BICEQ           R1, R1, #0x7000
ORREQ           R12, R1, #0x3000
BNE             loc_13C898
STR             R12, [R4,#0x6C]
LDR             R1, [R0,#0xC]
SUB             R1, R1, #0x2900
SUBS            R1, R1, #1
BEQ             loc_13C8D4
SUB             R1, R1, #0x5800
SUBS            R1, R1, #0x2C ; ','
BEQ             loc_13C8E4
CMP             R1, #2
LDREQ           R1, [R4,#0x6C]
BICEQ           R12, R1, #0x700
BEQ             loc_13C900
SUB             R1, R1, #0x200
SUBS            R1, R1, #0x43 ; 'C'
BNE             loc_13C904
B               loc_13C8F4
LDR             R1, [R4,#0x6C]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x200
B               loc_13C900
LDR             R1, [R4,#0x6C]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x100
B               loc_13C900
LDR             R1, [R4,#0x6C]
BIC             R1, R1, #0x700
ORR             R12, R1, #0x300
STR             R12, [R4,#0x6C]
LDR             R1, [R0]
CMP             R1, #0x2600
LDREQ           R1, [R4,#0x6C]
BICEQ           R12, R1, #2
BEQ             loc_13C92C
SUB             R1, R1, #0x2600
SUBS            R1, R1, #1
LDREQ           R1, [R4,#0x6C]
ORREQ           R12, R1, #2
BNE             loc_13C930
STR             R12, [R4,#0x6C]
LDR             R12, [R0,#4]
LDR             R1, =0x2701
CMP             R12, R1
SUB             R1, R12, R1
BEQ             loc_13CA70
BGT             loc_13C968
CMP             R12, #0x2600
BEQ             loc_13C97C
SUB             R1, R12, #0x2600
SUBS            R1, R1, #1
BEQ             loc_13CA48
CMP             R1, #0xFF
BNE             loc_13CA68
B               loc_13C9A0
CMP             R1, #1
BEQ             loc_13C9F4
CMP             R1, #2
BNE             loc_13CA68
B               loc_13CAB0
LDR             R1, [R4,#0x70]
LDR             R2, [R4,#0x6C]
BIC             R1, R1, #0xF000000
BIC             R2, R2, #4
BIC             R1, R1, #0xF0000
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x70]
STR             R2, [R4,#0x6C]
B               loc_13CA68
LDR             R1, [R4,#0x6C]
BIC             R12, R1, #4
STR             R12, [R4,#0x6C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x70]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x70]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BLT             loc_13CAA8
LDR             R2, [R4,#0x6C]
AND             R0, R3, R0,LSL#24
ORR             R1, R1, R0
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x70]
STR             R2, [R4,#0x6C]
B               loc_13CA68
LDR             R1, [R4,#0x6C]
BIC             R12, R1, #4
STR             R12, [R4,#0x6C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x70]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x70]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BLT             loc_13CAE8
LDR             R2, [R4,#0x6C]
AND             R0, R3, R0,LSL#24
ORR             R1, R1, R0
ORR             R2, R2, #0x1000000
STR             R1, [R4,#0x70]
STR             R2, [R4,#0x6C]
B               loc_13CA68
LDR             R1, [R4,#0x70]
LDR             R2, [R4,#0x6C]
BIC             R1, R1, #0xF000000
ORR             R2, R2, #4
BIC             R1, R1, #0xF0000
BIC             R2, R2, #0x1000000
STR             R1, [R4,#0x70]
STR             R2, [R4,#0x6C]
STR             R7, [R4,#0x64]
B               loc_13CB20
LDR             R1, [R4,#0x6C]
ORR             R12, R1, #4
STR             R12, [R4,#0x6C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x70]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x70]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BGE             loc_13C9D8
MOV             R0, #0
B               loc_13C9D8
LDR             R1, [R4,#0x6C]
ORR             R12, R1, #4
STR             R12, [R4,#0x6C]
LDR             R12, [R5,#0x34]
LDR             R1, [R4,#0x70]
SUB             R12, R12, #1
BIC             R1, R1, #0xF0000
AND             R2, R2, R12,LSL#16
ORR             R1, R1, R2
STR             R1, [R4,#0x70]
LDR             R0, [R0,#0x14]
BIC             R1, R1, #0xF000000
CMP             R0, #0
BGE             loc_13CA2C
MOV             R0, #0
B               loc_13CA2C
BIC             R0, R1, #2
LDR             R1, [R4,#0x70]
BIC             R2, R0, #4
STR             R2, [R4,#0x6C]
BIC             R0, R1, #0xF0000
BIC             R0, R0, #0xF000000
BIC             R1, R2, #0x7700
MOV             R2, R0,LSR#13
ADD             R0, R4, #0x6C ; 'l'
MOV             R2, R2,LSL#13
STR             R6, [R4,#0x64]
STM             R0, {R1,R2}
LDR             R2, [R5,#0x14]
LDR             R1, [R4,#0x6C]
SUB             R0, R2, #0x6700
SUBS            R0, R0, #0x5A ; 'Z'
MOVEQ           R0, #2
MOVNE           R0, #0
BIC             R1, R1, #0x30 ; '0'
ORR             R1, R1, R0,LSL#4
STR             R1, [R4,#0x6C]
LDR             R0, [R4,#0x68]
LDR             R1, [R5,#0xC]
BIC             R0, R0, #0x7000000
BIC             R0, R0, #0xFF0000
AND             R1, R11, R1,LSL#16
ORR             R0, R0, R1
STR             R0, [R4,#0x68]
LDR             R1, [R5,#0x10]
MOV             R0, R0,LSR#11
MOV             R0, R0,LSL#11
MOV             R1, R1,LSL#21
MOV             R1, R1,LSR#21
ORR             R1, R1, R0
STR             R1, [R4,#0x68]
LDR             R0, [R5]
BL              sub_13BC34
LDR             R1, [R4,#0x74]
ADD             R2, R4, #0x64 ; 'd'
AND             R1, R1, #0xC0000000
ORR             R1, R1, R0,LSR#3
STR             R1, [R4,#0x74]
LDR             R0, [R4]
ORR             R1, R0, #4
STR             R1, [R4]
LDR             R1, [R5,#0x1C]
LDR             R0, [R4,#0x78]
AND             R1, R1, #0xF
BIC             R0, R0, #0xF
ORR             R1, R1, R0
STR             R1, [R4,#0x78]
MOV             R1, #6
MOV             R0, #0x99
BL              sub_1406F0
MOV             R0, #0
POP             {R4-R12,PC}
