LDR             R1, [R0]
CMP             R1, #0
BXEQ            LR
PUSH            {R4-R7}
LDR             R12, [R1,#0xA4]
LDR             R1, [R12,#0x168]
LDR             R2, [R12,#0x164]
SUB             R1, R1, R2
MOV             R2, #0
MOV             R4, R1,ASR#2
CMP             R4, #0
BLE             loc_29AD50
VLDR            S5, =1.0
VLDR            S0, =0.0
VLDR            S3, =255.0
VLDR            S4, =0.5
LDR             R1, [R12,#0x188]
AND             R1, R1, #4
MOVS            R1, R1,LSR#2
LDR             R1, [R12,#0x164]
BEQ             loc_29AC34
LDR             R1, [R1,R2,LSL#2]
LDR             R3, [R1,#0x24]
CMP             R3, #0
LDRGT           R1, [R1,#0x10]
LDRGT           R1, [R1]
MOVLE           R1, #0
ADD             R1, R1, #0x24 ; '$'
B               loc_29AC40
LDR             R1, [R1,R2,LSL#2]
LDR             R1, [R1,#8]
ADD             R1, R1, #0x24 ; '$'
LDR             R3, [R0,#4]
ADD             R5, R1, #0x80
ADD             R3, R3, R2,LSL#4
VLDM            R3, {S1-S2}
ADD             R3, R3, #8
VLDM            R3, {S6-S7}
ADD             R3, R1, #0x88
VSTM            R5, {S1-S2}
VSTM            R3, {S6-S7}
VLDR            S2, [R1,#0x80]
VMOV            R3, S2
CMP             R3, #0x3F800000
VMOVGT.F32      S2, S5
BGT             loc_29AC84
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S0
VMOV.F32        S1, S4
VLDR            S6, [R5,#4]
VMOV            R6, S6
VMLA.F32        S1, S2, S3
CMP             R6, #0x3F800000
VMOVGT.F32      S6, S5
VCVT.U32.F32    S1, S1
VMOV            R3, S1
AND             R6, R3, #0xFF
BGT             loc_29ACB8
VCMPE.F32       S6, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S6, S0
VMOV.F32        S1, S4
VLDR            S2, [R5,#8]
VMOV            R3, S2
VMOV.F32        S7, S1
CMP             R3, #0x3F800000
VMOVGT.F32      S2, S5
VMLA.F32        S7, S6, S3
VCVT.U32.F32    S6, S7
VMOV            R7, S6
AND             R7, R7, #0xFF
BGT             loc_29ACF0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S0
VMOV.F32        S7, S1
VLDR            S6, [R5,#0xC]
VMOV            R3, S6
VMLA.F32        S7, S2, S3
CMP             R3, #0x3F800000
VMOVGT.F32      S6, S5
VCVT.U32.F32    S2, S7
VMOV            R5, S2
AND             R5, R5, #0xFF
BGT             loc_29AD24
VCMPE.F32       S6, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S6, S0
ADD             R2, R2, #1
CMP             R2, R4
VMLA.F32        S1, S6, S3
VCVT.U32.F32    S1, S1
VMOV            R3, S1
MOV             R3, R3,LSL#24
ORR             R3, R3, R5,LSL#16
ORR             R3, R3, R7,LSL#8
ORR             R3, R3, R6
STR             R3, [R1,#0xD0]
BLT             loc_29AC00
POP             {R4-R7}
BX              LR
