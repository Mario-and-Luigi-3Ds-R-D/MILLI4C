PUSH            {R4-R7,LR}
MOV             R4, R1
SUB             SP, SP, #0x1C
LDRB            R1, [R0,#0x4C]
CMP             R1, R2
BEQ             loc_13DB50
CMP             R2, #0xFF
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
BEQ             loc_13DB5C
LDR             R0, [R0,#0xC0]
LDR             R0, [R0,R2,LSL#2]
CMP             R0, #0
LDRNE           R0, [R0,#8]
CMPNE           R0, #0
BEQ             loc_13DB50
LDR             R2, [R0,#0xC4]
ADD             R1, R0, #0xC4
MOV             R7, #0
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R7
CMP             R1, #0
BEQ             loc_13DB50
VLDR            S3, [R0,#0xB4]
VLDR            S1, =1.0
CMP             R2, #0
ADD             R3, R0, #0xC4
VCMPE.F32       S3, S1
VLDR            S0, =0.0
ADDNE           R5, R2, R3
MOVEQ           R5, R7
ADD             R2, R0, #0xB4
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S3, S1
BGT             loc_13D9DC
VMOV.F32        S2, S0
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S0
VLDR            S2, =0.5
VLDR            S4, =255.0
VMOV.F32        S5, S2
VMLA.F32        S5, S3, S4
VCVT.U32.F32    S3, S5
VMOV            R3, S3
VLDR            S3, [R2,#4]
AND             R3, R3, #0xFF
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S3, S1
BGT             loc_13DA1C
VMOV.F32        S5, S0
VCMPE.F32       S3, S5
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S0
VMOV.F32        S5, S2
VMLA.F32        S5, S3, S4
VCVT.U32.F32    S3, S5
VMOV            R12, S3
VLDR            S3, [R2,#8]
AND             R12, R12, #0xFF
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S3, S1
BGT             loc_13DA54
VMOV.F32        S5, S0
VCMPE.F32       S3, S5
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S0
VMOV.F32        S5, S2
VMLA.F32        S5, S3, S4
VCVT.U32.F32    S3, S5
VMOV            R6, S3
VLDR            S3, [R2,#0xC]
AND             R6, R6, #0xFF
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S3, S1
BGT             loc_13DA88
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S0
AND             R2, R3, #0xFF
BIC             R1, R1, #0xFF
MOV             R3, R12,LSL#8
ORR             R1, R1, R2
AND             R2, R3, #0xFF00
VMLA.F32        S2, S3, S4
BIC             R3, R1, #0xFF00
MOV             R1, R6,LSL#16
ORR             R2, R2, R3
AND             R3, R1, #0xFF0000
BIC             R2, R2, #0xFF0000
ORR             R2, R2, R3
BIC             R2, R2, #0xFF000000
LDR             R0, [R0,#0x18]
VCVT.U32.F32    S0, S2
ANDS            R0, R0, #2
MOVNE           R0, #0x10000
ORR             R0, R0, #5
VMOV            R1, S0
ORR             R3, R2, R1,LSL#24
LDR             R2, =0xF00E1
LDR             R1, =0x500E0
BIC             R3, R3, #0xFF000000
STR             R2, [SP,#0x30+var_24]
STMEA           SP, {R0,R1,R3}
MOV             R2, #0x10
MOV             R1, SP
MOV             R0, R4
BL              sub_1273D0
LDR             R1, =unk_6582A0
ADD             R4, R4, #0x10
MOV             R2, #8
LDRD            R0, R1, [R1,#(dword_6582B8 - 0x6582A0)]
STRD            R0, R1, [SP,#0x30+var_20]
ADD             R1, SP, #0x30+var_20
MOV             R0, R4
BL              sub_1273D0
LDR             R2, [R5,#0x10]
ADD             R1, R5, #0x10
ADD             R0, R4, #8
CMP             R2, #0
ADDNE           R7, R2, R1
LDR             R2, [R5,#0xC]
MOV             R4, R0
MOV             R1, R7
ADD             R6, R5, #0xC
BL              sub_1273D0
LDR             R0, [R6]
BIC             R0, R0, #3
ADD             R4, R4, R0
ADD             SP, SP, #0x1C
MOV             R0, R4
POP             {R4-R7,PC}
LDR             R1, =unk_6582A0
MOV             R2, #8
MOV             R0, R4
BL              sub_1273D0
ADD             R4, R4, #8
NOP
B               loc_13DB50
