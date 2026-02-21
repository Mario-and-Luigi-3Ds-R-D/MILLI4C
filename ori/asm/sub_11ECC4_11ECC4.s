PUSH            {R4,R5,LR}
MOV             R4, R0
CMP             R2, #0
MOV             R0, R1
BEQ             loc_11ECE4
LDR             R0, [R4,#0x20]
MOV             R2, #1
BL              sub_1256B0
LDR             R1, [R4,#0x16]
LDRB            R2, [R4,#0x19]
BIC             R1, R1, #0xFF000000
ORR             R2, R1, R2,LSL#24
LDR             R1, =0xF0099
STR             R2, [R0],#4
STR             R1, [R0],#4
LDR             R1, [R4,#4]
MOV             R2, R1,ROR#16
LDR             R1, =0xF009A
STR             R2, [R0],#4
STR             R1, [R0],#4
LDRB            R1, [R4,#0xC]
CMP             R1, #3
CMPNE           R1, #4
BEQ             loc_11EE10
CMP             R1, #5
MOVNE           R2, #0
BEQ             loc_11EE10
LDRB            R3, [R4,#0xB]
LDRB            R12, [R4,#8]
MOV             R2, R2,LSL#2
LDRB            R5, [R4,#0xA]
CMP             R12, #0xC
ORR             R2, R2, R3,LSL#1
MOVEQ           R3, #2
MOVNE           R3, #0
LDRB            R12, [R4,#9]
CMP             R1, #2
CMPNE           R1, #5
ORR             R2, R2, R3,LSL#4
ORR             R2, R2, R12,LSL#8
MOVEQ           R1, #1
MOVNE           R1, #0
ORR             R2, R2, R5,LSL#12
ORR             R2, R2, R1,LSL#24
LDR             R1, =0xF009B
STR             R2, [R0],#4
LDR             R3, =0xF009C
STR             R1, [R0],#4
LDRB            R2, [R4,#0xC]
MOV             R1, #0
CMP             R2, #3
CMPNE           R2, #0
BEQ             loc_11EE34
VLDR            S1, [R4,#0x10]
VLDR            S2, =0.0
VMOV            R2, S1
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_11EE24
MOV             R2, R2,LSL#1
MOV             R12, #0xFF
CMP             R12, R2,LSR#24
BEQ             loc_11EE24
LDR             R2, =0x45800000
VLDR            S0, =16.0
VLDR            S4, =256.0
VLDR            S3, =4096.0
VADD.F32        S0, S1, S0
VMUL.F32        S0, S0, S4
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
BGT             loc_11EE18
VMOV            R1, S0
CMP             R1, #0x46000000
VMOVLT          R1, S0
VLDRGE          S0, =8191.0
CMPLT           R1, R2
BLT             loc_11EE18
VSUB.F32        S0, S0, S3
VCVT.U32.F32    S0, S0
VMOV            R1, S0
B               loc_11EE24
MOV             R2, #1
B               loc_11ED30
VADD.F32        S0, S0, S3
VCVT.U32.F32    S0, S0
VMOV            R1, S0
LDRB            R2, [R4,#0x15]
LDRB            R12, [R4,#0x14]
ORR             R1, R1, R2,LSL#16
ORR             R1, R1, R12,LSL#24
STM             R0!, {R1,R3}
LDR             R3, [R4]
LDR             R2, =0xF009D
MOV             R3, R3,LSR#3
STR             R3, [R0],#4
ADD             R1, R2, #1
STR             R2, [R0],#4
LDRB            R2, [R4,#8]
STR             R2, [R0],#4
STR             R1, [R0],#4
POP             {R4,R5,PC}
