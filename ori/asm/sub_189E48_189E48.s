NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
VLDR            S3, =0.5
SUB             SP, SP, #8
MOV             R2, #8
LDR             R0, [R6]
LDR             R0, [R0,#0xC8]
AND             R1, R0, #7
CMP             R1, #1
BEQ             loc_189E8C
CMP             R1, #2
BEQ             loc_189FB0
CMP             R1, #4
BEQ             loc_189EA4
B               loc_189FB0
MOV             R1, #0
ADD             R0, R4, #0x2C4
BL              sub_5996A0
NOP
NOP
B               loc_189FB0
TST             R0, #0x80
BEQ             loc_189FB0
ADD             R0, R4, #0x14000
ADD             R0, R0, #0x30C
VLDR            S1, =1.0
VLDR            S0, [R0]
VLDR            S2, =0.0
MOV             R2, #8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S1
BLS             loc_189EE4
VMOV.F32        S4, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S2
VMOV.F32        S5, S3
VLDR            S4, =255.0
VMLA.F32        S5, S0, S4
VCVT.U32.F32    S0, S5
VLDR            S5, [R0,#4]
VCMPE.F32       S5, S1
VMOV            R1, S0
VMOV.F32        S0, S2
AND             R1, R1, #0xFF
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S1
BGE             loc_189F20
VCMPE.F32       S5, S0
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S0, S5
VMOV.F32        S5, S3
VMLA.F32        S5, S0, S4
VCVT.U32.F32    S0, S5
VLDR            S5, [R0,#8]
VCMPE.F32       S5, S1
VMOV            R3, S0
VMOV.F32        S0, S2
AND             R3, R3, #0xFF
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S1
BGE             loc_189F58
VCMPE.F32       S5, S0
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S0, S5
VMOV.F32        S5, S3
VMLA.F32        S5, S0, S4
VCVT.U32.F32    S0, S5
VMOV            R12, S0
VLDR            S0, [R0,#0xC]
AND             R12, R12, #0xFF
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S1
BGE             loc_189F8C
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S2
VMLA.F32        S3, S0, S4
VCVT.U32.F32    S0, S3
VMOV            R0, S0
MOV             R0, R0,LSL#24
ORR             R0, R0, R12,LSL#16
ORR             R0, R0, R3,LSL#8
ORR             R1, R1, R0
ADD             R0, R4, #0x2C4
BL              sub_5996A0
LDR             R0, [R6]
ADD             R5, R4, #0x14000
LDR             R0, [R0,#0xC8]
TST             R0, #7
BEQ             loc_18A0BC
AND             R0, R0, #7
CMP             R0, #1
BNE             loc_18A03C
LDRB            R0, [R5,#0x28D]
CMP             R0, #0
BEQ             loc_189FF8
AND             R0, R0, #1
CMP             R0, #1
BNE             loc_189FF8
LDR             R1, [R5,#0x184]
LDRB            R2, [R1,#0xDE]
BIC             R2, R2, #8
STRB            R2, [R1,#0xDE]
LDRB            R1, [R5,#0x28D]
CMP             R1, R0
BLE             loc_18A03C
ADD             R1, R4, R0,LSL#2
ADD             R1, R1, #0x14000
ADD             R0, R0, #2
LDR             R2, [R1,#0x184]
LDRB            R3, [R2,#0xDE]
BIC             R3, R3, #8
STRB            R3, [R2,#0xDE]
LDR             R1, [R1,#0x188]
LDRB            R2, [R1,#0xDE]
BIC             R2, R2, #8
STRB            R2, [R1,#0xDE]
LDRB            R1, [R5,#0x28D]
CMP             R1, R0
BGT             loc_18A004
LDR             R2, [R4]
LDR             R0, =0x1441C
LDR             R2, [R2,#0x288]
LDRB            R1, [R0,R4]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #0x14400
VSTR            S0, [R4,#0x94]
VLDR            S2, [R0,#0x20]
LDR             R0, [R6]
MOV             R2, SP
VDIV.F32        S1, S0, S2
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#0x18+var_18]
LDR             R0, [R0,#0x10]
STR             R0, [SP,#0x18+var_14]
MOV             R0, #0
VMOV.F32        S0, S1
LDR             R1, [R2,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #2
VSTR            S0, [R1,#0xE4]
VSTR            S0, [R1,#0xE8]
VSTR            S0, [R1,#0xEC]
BLT             loc_18A088
LDR             R0, =0x13C24
LDR             R0, [R0,R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
MOV             R0, #1
STRB            R0, [R5,#0x3FC]
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DB7C
LDM             R0, {R1,R2}
ADD             SP, SP, #8
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
