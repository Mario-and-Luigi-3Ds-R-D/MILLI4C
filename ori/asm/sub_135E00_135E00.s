LDR             R0, [R1]
VLDR            D0, =1.0
CMP             R2, #0
BEQ             loc_135E28
LDRB            R3, [R2,#0x22]
LDR             R1, [R2,#0x1C]
BIC             R2, R0, #0xFF000000
RSB             R0, R3, R0,ASR#24
ORR             R0, R2, R0,LSL#24
ADD             R0, R0, R1
MOV             R1, R0,ASR#24
CMP             R1, #0
VLDRLT          D1, =0.5
BGE             loc_135E58
VMUL.F64        D0, D0, D1
MOV             R2, R0,ASR#24
BIC             R1, R0, #0xFF000000
ADD             R0, R2, #0xC
SXTB            R0, R0
CMP             R0, #0
ORR             R0, R1, R0,LSL#24
BLT             loc_135E38
MOV             R1, R0,ASR#24
CMP             R1, #0xC
VLDRGE          D1, =2.0
BLT             loc_135E88
VMUL.F64        D0, D0, D1
MOV             R1, R0,ASR#24
BIC             R2, R0, #0xFF000000
SUB             R0, R1, #0xC
SXTB            R0, R0
CMP             R0, #0xC
ORR             R0, R2, R0,LSL#24
BGE             loc_135E68
LDR             R3, =unk_69A8B0
MOV             R2, R0,ASR#24
LDR             R1, =dword_6D4EF8
ADD             R2, R3, R2,LSL#3
MOV             R0, R0,LSL#8
VLDR            D4, [R2]
VLDR            D3, [R1,#(dbl_6D4F08 - 0x6D4EF8)]
VLDR            D2, [R1,#(dbl_6D4F10 - 0x6D4EF8)]
VMUL.F64        D0, D4, D0
MOV             R0, R0,LSR#24
ADD             R1, R3, #0x60 ; '`'
ADD             R0, R1, R0,LSL#3
VLDR            D1, =127.0
VMUL.F64        D0, D0, D3
VLDR            D3, [R0]
VMUL.F64        D0, D3, D0
VMUL.F64        D0, D0, D2
VCMPE.F64       D0, D1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F64      D0, D1
VCVT.F32.F64    S0, D0
BX              LR
