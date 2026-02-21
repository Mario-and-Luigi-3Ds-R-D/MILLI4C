PUSH            {R4-R6,LR}
LDR             R1, =off_6CE970
LDR             R0, [R2,#0xC]
VLDR            S0, [R2,#0x68]
LDR             R2, =0x120F74
LDR             R1, [R1]
CMP             R0, #0
MOVNE           R0, #1
MOVEQ           R0, #0
LDR             R6, [R1,R2]
CMP             R6, #0
BEQ             loc_213F48
CMP             R0, #0
BEQ             loc_213F34
VSTR            S0, [R6,#0x100]
VCVT.U32.F32    S0, S0
LDR             R1, =0x88888889
MOV             R3, #0x64 ; 'd'
VMOV            R0, S0
UMULL           R12, R2, R1, R0
MUL             R0, R0, R3
MOV             R4, R2,LSR#5
UMULL           R3, R0, R1, R0
UMULL           R2, R1, R1, R4
MOV             R5, R0,LSR#5
ADD             R0, R6, #0x10C
MOV             R1, R1,LSR#5
BL              sub_5B7378
ADD             R0, R6, #0x29C
MOV             R1, R4
BL              sub_5B7378
ADD             R0, R6, #0x400
ADD             R0, R0, #0x2C ; ','
MOV             R1, R5
BL              sub_5B7378
B               loc_213F48
VLDR            S1, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S1
VSTR            S0, [R6,#0x100]
MOV             R0, #0
POP             {R4-R6,PC}
