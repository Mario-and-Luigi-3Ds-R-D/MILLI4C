PUSH            {R4-R10,LR}
MOV             R5, R0
CMP             R1, #0
LDR             R0, =off_6D48F8
LDR             LR, =0x502
LDR             R0, [R0]
BEQ             loc_13CC04
MOV             R0, LR
POP             {R4-R10,PC}
ADD             R4, R0, #0x770
ADD             R6, R0, #0x58 ; 'X'
MOV             R3, #1
ADD             R2, R5, #0x34 ; '4'
ADD             R12, R3, R3,LSL#4
ADD             R0, R5, R12,LSL#2
LDR             R12, [R0,#0x34]!
CMP             R12, #0
BEQ             loc_13CCA4
LDR             R7, [R2,#0x34]
LDR             R8, [R0,#0x34]
CMP             R7, R8
BNE             loc_13CCA4
LDR             R7, [R0,#0x20]
LDR             R8, [R2,#0x20]
CMP             R8, R7
BNE             loc_13CCA4
LDR             R8, [R2,#0xC]
LDR             R9, [R0,#0xC]
CMP             R8, R9
BNE             loc_13CCA4
LDR             R8, [R2,#0x10]
LDR             R9, [R0,#0x10]
CMP             R8, R9
BNE             loc_13CCA4
LDR             R8, [R2,#0x14]
LDR             R0, [R0,#0x14]
CMP             R8, R0
BNE             loc_13CCA4
LDR             R0, [R2]
ADD             R7, R7, R12
SUB             R7, R7, #1
MOV             R7, R7,ASR#25
CMP             R7, R0,ASR#25
BNE             loc_13CCA4
CMP             R0, R12
BHI             loc_13CCA4
ADD             R3, R3, #1
CMP             R3, #6
BLT             loc_13CC14
ADD             R1, R1, R6
CMP             R3, #6
LDRB            R1, [R1,#0xAF]
MOVNE           R0, LR
MOVEQ           R0, #0
CMP             R1, #0
BEQ             loc_13CCC8
CMP             R0, #0
BEQ             loc_13CCD8
LDR             R1, [R4]
BIC             R1, R1, #1
STR             R1, [R4]
POP             {R4-R10,PC}
ADD             R0, R5, #0x20 ; ' '
VLDR            S0, =255.0
VLDR            S3, [R5,#0x1C]
VLDR            S4, [R5,#0x18]
LDR             R1, [R4,#0xC]
VMUL.F32        S3, S3, S0
VLDM            R0, {S1-S2}
VMUL.F32        S4, S4, S0
MOV             R0, R2
BIC             R1, R1, #0x1100000
VMUL.F32        S5, S1, S0
VMUL.F32        S6, S2, S0
STR             R1, [R4,#0xC]
MOV             R12, #0x7FFFFFF
LDR             R3, =0x190A
VCVT.U32.F32    S1, S3
VCVT.U32.F32    S0, S4
VCVT.U32.F32    S2, S5
VCVT.U32.F32    S3, S6
VMOV            R8, S1
VMOV            R7, S0
VMOV            R6, S2
VMOV            R2, S3
ORR             R8, R7, R8,LSL#8
MOV             R7, R4
ORR             R6, R8, R6,LSL#16
ORR             R2, R6, R2,LSL#24
STR             R2, [R4,#4]
LDR             R2, [R4,#8]
LDR             R6, [R0,#0xC]
BIC             R2, R2, #0x7000000
BIC             R2, R2, #0xFF0000
AND             R12, R12, R6,LSL#16
ORR             R2, R2, R12
STR             R2, [R4,#8]
LDR             R12, [R0,#0x10]
MOV             R2, R2,LSR#11
MOV             R2, R2,LSL#11
MOV             R12, R12,LSL#21
MOV             R12, R12,LSR#21
ORR             R12, R12, R2
STR             R12, [R4,#8]
LDR             R2, [R4,#0x2C]
AND             R12, R2, #0xFF000000
STR             R12, [R4,#0x2C]
LDR             R2, [R4,#0x38]
LDR             R12, [R0,#0x1C]
BIC             R2, R2, #0xF
AND             R12, R12, #0xF
ORR             R12, R12, R2
STR             R12, [R4,#0x38]
LDR             R2, [R0,#0x14]
CMP             R2, R3
SUB             R3, R2, R3
BEQ             loc_13CDF4
BGE             loc_13CDD8
SUB             R2, R2, #0x1900
SUBS            R2, R2, #6
CMPNE           R2, #1
BEQ             loc_13CDF4
CMP             R2, #2
CMPNE           R2, #3
BEQ             loc_13CDF4
B               loc_13CBFC
SUB             R2, R3, #0x4700
SUBS            R2, R2, #0x36 ; '6'
BEQ             loc_13D0EC
SUB             R2, R2, #0x700
SUBS            R2, R2, #0x1A
CMPNE           R2, #1
BNE             loc_13CBFC
BIC             R1, R1, #0x70000000
ORR             R1, R1, #0x10000000
STR             R1, [R4,#0xC]
LDR             R2, [R5,#8]
SUB             R2, R2, #0x2900
SUBS            R2, R2, #1
BICEQ           R1, R1, #0x7000
ORREQ           R2, R1, #0x2000
BEQ             loc_13CE4C
SUB             R2, R2, #0x5800
SUBS            R2, R2, #0x2C ; ','
BICEQ           R1, R1, #0x7000
ORREQ           R2, R1, #0x1000
BEQ             loc_13CE4C
CMP             R2, #2
BICEQ           R2, R1, #0x7000
BEQ             loc_13CE4C
SUB             R2, R2, #0x200
SUBS            R2, R2, #0x43 ; 'C'
BICEQ           R1, R1, #0x7000
ORREQ           R2, R1, #0x3000
BNE             loc_13CE50
STR             R2, [R4,#0xC]
LDR             R1, [R5,#0xC]
SUB             R1, R1, #0x2900
SUBS            R1, R1, #1
BEQ             loc_13CE8C
SUB             R1, R1, #0x5800
SUBS            R1, R1, #0x2C ; ','
BEQ             loc_13CE9C
CMP             R1, #2
LDREQ           R1, [R4,#0xC]
BICEQ           R2, R1, #0x700
BEQ             loc_13CEB8
SUB             R1, R1, #0x200
SUBS            R1, R1, #0x43 ; 'C'
BNE             loc_13CEBC
B               loc_13CEAC
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x700
ORR             R2, R1, #0x200
B               loc_13CEB8
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x700
ORR             R2, R1, #0x100
B               loc_13CEB8
LDR             R1, [R4,#0xC]
BIC             R1, R1, #0x700
ORR             R2, R1, #0x300
STR             R2, [R4,#0xC]
LDR             R1, [R5]
CMP             R1, #0x2600
LDREQ           R1, [R4,#0xC]
BICEQ           R2, R1, #2
BEQ             loc_13CEE4
SUB             R1, R1, #0x2600
SUBS            R1, R1, #1
LDREQ           R1, [R4,#0xC]
ORREQ           R2, R1, #2
BNE             loc_13CEE8
STR             R2, [R4,#0xC]
LDR             R3, [R5,#4]
LDR             R12, =0x2701
MOV             R1, #0xF0000
MOV             R2, #0xF000000
CMP             R3, R12
SUB             R12, R3, R12
BEQ             loc_13D06C
BGT             loc_13CF28
CMP             R3, #0x2600
BEQ             loc_13CF3C
SUB             R3, R3, #0x2600
SUBS            R3, R3, #1
BEQ             loc_13D014
CMP             R3, #0xFF
BNE             loc_13D034
B               loc_13CF60
CMP             R12, #1
BEQ             loc_13CFC4
CMP             R12, #2
BNE             loc_13D034
B               loc_13D0AC
LDR             R2, [R4,#0x10]
LDR             R3, [R4,#0xC]
BIC             R2, R2, #0xF000000
BIC             R3, R3, #0x1000000
BIC             R2, R2, #0xF0000
BIC             R3, R3, #4
STR             R2, [R4,#0x10]
STR             R3, [R4,#0xC]
B               loc_13D034
LDR             R3, [R4,#0xC]
BIC             R3, R3, #4
STR             R3, [R4,#0xC]
LDR             LR, [R0,#0x34]
LDR             R12, [R4,#0x10]
SUB             LR, LR, #1
BIC             R12, R12, #0xF0000
AND             R1, R1, LR,LSL#16
ORR             R1, R1, R12
BIC             R12, R1, #0xF000000
STR             R1, [R4,#0x10]
LDR             R1, [R5,#0x14]
CMP             R1, #0
BLT             loc_13D0A4
AND             R1, R2, R1,LSL#24
ORR             R2, R12, R1
BIC             R3, R3, #0x1000000
STR             R2, [R4,#0x10]
STR             R3, [R4,#0xC]
B               loc_13D034
DCD 0x502
DCD off_6D48F8
DCFS 255.0
DCD 0x190A
DCD 0x2701
LDR             R3, [R4,#0xC]
BIC             R3, R3, #4
STR             R3, [R4,#0xC]
LDR             LR, [R0,#0x34]
LDR             R12, [R4,#0x10]
SUB             LR, LR, #1
BIC             R12, R12, #0xF0000
AND             R1, R1, LR,LSL#16
ORR             R1, R1, R12
BIC             R12, R1, #0xF000000
STR             R1, [R4,#0x10]
LDR             R1, [R5,#0x14]
CMP             R1, #0
BLT             loc_13D0E4
AND             R1, R2, R1,LSL#24
ORR             R2, R12, R1
ORR             R3, R3, #0x1000000
STR             R2, [R4,#0x10]
STR             R3, [R4,#0xC]
B               loc_13D034
LDR             R2, [R4,#0x10]
LDR             R3, [R4,#0xC]
BIC             R2, R2, #0xF000000
BIC             R1, R3, #0x1000000
BIC             R2, R2, #0xF0000
ORR             R3, R1, #4
STR             R2, [R4,#0x10]
STR             R3, [R4,#0xC]
LDR             R1, [R4,#0x10]
MOV             R3, R1,LSR#13
MOV             R3, R3,LSL#13
STR             R3, [R4,#0x10]
LDR             R0, [R0,#0x14]
LDR             R1, [R4,#0xC]
SUB             R2, R0, #0x6700
SUBS            R2, R2, #0x5A ; 'Z'
MOVEQ           R0, #2
MOVNE           R0, #0
BIC             R1, R1, #0x30 ; '0'
ORR             R1, R1, R0,LSL#4
STR             R1, [R4,#0xC]
B               loc_13D11C
LDR             R3, [R4,#0xC]
ORR             R3, R3, #4
STR             R3, [R4,#0xC]
LDR             LR, [R0,#0x34]
LDR             R12, [R4,#0x10]
SUB             LR, LR, #1
BIC             R12, R12, #0xF0000
AND             R1, R1, LR,LSL#16
ORR             R1, R1, R12
BIC             R12, R1, #0xF000000
STR             R1, [R4,#0x10]
LDR             R1, [R5,#0x14]
CMP             R1, #0
BGE             loc_13CF98
MOV             R1, #0
B               loc_13CF98
LDR             R3, [R4,#0xC]
ORR             R3, R3, #4
STR             R3, [R4,#0xC]
LDR             LR, [R0,#0x34]
LDR             R12, [R4,#0x10]
SUB             LR, LR, #1
BIC             R12, R12, #0xF0000
AND             R1, R1, LR,LSL#16
ORR             R1, R1, R12
BIC             R12, R1, #0xF000000
STR             R1, [R4,#0x10]
LDR             R1, [R5,#0x14]
CMP             R1, #0
BGE             loc_13CFFC
MOV             R1, #0
B               loc_13CFFC
LDR             R2, [R4,#0x10]
BIC             R1, R1, #0x70000000
BIC             R1, R1, #0x7700
BIC             R0, R2, #0xF000000
BIC             R0, R0, #0xF0000
BIC             R1, R1, #0x30 ; '0'
MOV             R2, R0,LSR#13
ORR             R1, R1, #0x40000006
ADD             R0, R4, #0xC
MOV             R2, R2,LSL#13
ORR             R1, R1, #0x100000
STM             R0, {R1,R2}
LDR             R0, [R5,#0x34]
BL              sub_13BC34
LDR             R1, [R4,#0x14]
AND             R1, R1, #0xC0000000
ORR             R1, R1, R0,LSR#3
STR             R1, [R4,#0x14]
LDR             R0, [R5,#0x78]
BL              sub_13BC34
LDR             R1, [R4,#0x18]
MOV             R6, #0xE03FFFFF
AND             R0, R6, R0,LSR#3
AND             R1, R1, R6,LSL#22
ORR             R1, R1, R0
STR             R1, [R4,#0x18]
LDR             R0, [R5,#0xBC]
BL              sub_13BC34
LDR             R1, [R4,#0x1C]
AND             R0, R6, R0,LSR#3
AND             R1, R1, R6,LSL#22
ORR             R1, R1, R0
STR             R1, [R4,#0x1C]
LDR             R0, [R5,#0x100]
BL              sub_13BC34
LDR             R1, [R4,#0x20]
AND             R0, R6, R0,LSR#3
AND             R1, R1, R6,LSL#22
ORR             R1, R1, R0
STR             R1, [R4,#0x20]
LDR             R0, [R5,#0x144]
BL              sub_13BC34
MOV             R1, R0
LDR             R0, [R4,#0x24]
AND             R2, R0, R6,LSL#22
AND             R0, R6, R1,LSR#3
ORR             R1, R2, R0
STR             R1, [R4,#0x24]
LDR             R0, [R5,#0x188]
BL              sub_13BC34
LDR             R1, [R4,#0x28]
AND             R0, R6, R0,LSR#3
ADD             R2, R4, #4
AND             R1, R1, R6,LSL#22
ORR             R1, R1, R0
STR             R1, [R4,#0x28]
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
BCS             loc_13D210
LDR             R3, [R4,#0x38]
LDR             R12, =0xF008E
ADD             LR, R1, #8
STM             R1, {R3,R12}
STR             LR, [R2]
MOV             R0, #0
POP             {R4-R10,PC}
