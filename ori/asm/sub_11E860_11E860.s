PUSH            {R4-R6,LR}
MOV             R4, R0
CMP             R2, #0
MOV             R0, R1
BEQ             loc_11E880
LDR             R0, [R4,#0x38]
MOV             R2, #1
BL              sub_1256B0
LDR             R12, [R4,#0x16]
LDRB            LR, [R4,#0x19]
LDR             R3, =0xF0081
BIC             R12, R12, #0xFF000000
MOV             R2, #0
ORR             R12, R12, LR,LSL#24
STR             R12, [R0],#4
ADD             R1, R3, #1
STR             R3, [R0],#4
LDR             R3, [R4,#4]
MOV             R3, R3,ROR#16
STR             R3, [R0],#4
STR             R1, [R0],#4
LDRB            R3, [R4,#0x1C]
LDRB            R1, [R4,#0xC]
CMP             R3, #2
CMPNE           R3, #4
MOVEQ           R2, #1
CMP             R1, #3
CMPNE           R1, #4
BEQ             loc_11E9C8
CMP             R1, #5
MOVNE           R12, #0
BEQ             loc_11E9C8
LDRB            R5, [R4,#8]
LDRB            LR, [R4,#0xB]
MOV             R12, R12,LSL#2
CMP             R5, #0xC
MOVEQ           R5, #2
MOVNE           R5, #0
ORR             R12, R12, LR,LSL#1
LDRB            LR, [R4,#9]
LDRB            R6, [R4,#0xA]
CMP             R1, #2
CMPNE           R1, #5
ORR             R12, R12, R5,LSL#4
ORR             R12, R12, LR,LSL#8
ORR             R12, R12, R6,LSL#12
MOVEQ           R1, #1
MOVNE           R1, #0
ORR             R2, R12, R2,LSL#20
ORR             R2, R2, R1,LSL#24
LDR             R1, =0xF0083
ORR             R2, R2, R3,LSL#28
STR             R2, [R0],#4
LDR             R3, =0xF0084
STR             R1, [R0],#4
LDRB            R2, [R4,#0xC]
MOV             R1, #0
CMP             R2, #3
CMPNE           R2, #0
BEQ             loc_11E9EC
VLDR            S1, [R4,#0x10]
VLDR            S2, =0.0
VMOV            R2, S1
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_11E9DC
MOV             R2, R2,LSL#1
MOV             R12, #0xFF
CMP             R12, R2,LSR#24
BEQ             loc_11E9DC
LDR             R2, =0x45800000
VLDR            S0, =16.0
VLDR            S4, =256.0
VLDR            S3, =4096.0
VADD.F32        S0, S1, S0
VMUL.F32        S0, S0, S4
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
BGT             loc_11E9D0
VMOV            R1, S0
CMP             R1, #0x46000000
VMOVLT          R1, S0
VLDRGE          S0, =8191.0
CMPLT           R1, R2
BLT             loc_11E9D0
VSUB.F32        S0, S0, S3
VCVT.U32.F32    S0, S0
VMOV            R1, S0
B               loc_11E9DC
MOV             R12, #1
B               loc_11E8E0
VADD.F32        S0, S0, S3
VCVT.U32.F32    S0, S0
VMOV            R1, S0
LDRB            R2, [R4,#0x15]
LDRB            R12, [R4,#0x14]
ORR             R1, R1, R2,LSL#16
ORR             R1, R1, R12,LSL#24
STM             R0!, {R1,R3}
LDRB            R1, [R4,#0x1C]
LDR             R2, =0xF0085
CMP             R1, #0
CMPNE           R1, #3
CMPNE           R1, #2
BEQ             loc_11EA18
CMP             R1, #1
CMPNE           R1, #4
BEQ             loc_11EA2C
B               loc_11EAA8
LDR             R1, [R4]
MOV             R1, R1,LSR#3
STM             R0, {R1,R2}
ADD             R0, R0, #4
B               loc_11EAA4
LDR             R1, [R4,#0x20]
MOV             R1, R1,LSR#3
STR             R1, [R0],#4
MOV             R1, #0xE03FFFFF
STR             R2, [R0],#4
LDR             R2, [R4,#0x24]
AND             R3, R1, R2,LSR#3
LDR             R2, =0xF0086
STR             R3, [R0],#4
STR             R2, [R0],#4
LDR             R2, [R4,#0x28]
AND             R3, R1, R2,LSR#3
LDR             R2, =0xF0087
STR             R3, [R0],#4
STR             R2, [R0],#4
LDR             R2, [R4,#0x2C]
AND             R3, R1, R2,LSR#3
LDR             R2, =0xF0088
STR             R3, [R0],#4
STR             R2, [R0],#4
LDR             R2, [R4,#0x30]
AND             R3, R1, R2,LSR#3
LDR             R2, =0xF0089
STR             R3, [R0],#4
STR             R2, [R0],#4
LDR             R2, [R4,#0x34]
AND             R2, R1, R2,LSR#3
LDR             R1, =0xF008A
STR             R2, [R0],#4
STR             R1, [R0]
ADD             R0, R0, #4
LDRB            R2, [R4,#8]
LDR             R1, =0xF008E
STR             R2, [R0],#4
STR             R1, [R0],#4
POP             {R4-R6,PC}
