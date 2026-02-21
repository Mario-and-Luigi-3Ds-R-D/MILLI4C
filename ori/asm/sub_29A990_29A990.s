PUSH            {R4-R11,LR}
MOV             R5, R0
VDIV.F32        S2, S0, S1
MOV             R8, R1
MOV             R4, #0
VPUSH           {D8-D10}
SUB             SP, SP, #0x14
LDR             R0, [R0]
VLDR            S20, =1.0
LDR             R6, [R0,#0xA4]
VSUB.F32        S17, S20, S2
LDR             R0, [R6,#0x168]
LDR             R1, [R6,#0x164]
SUB             R0, R0, R1
MOV             R7, R0,ASR#2
CMP             R7, #0
BLE             loc_29AB8C
MOV             R9, #4
VLDR            S16, =0.0
VLDR            S19, =255.0
VLDR            S18, =0.5
MOV             R10, #8
LDR             R1, =sub_46576C
MOV             R0, SP
MOV             R3, #1
MOV             R2, #0x10
BLX             sub_1002F4
LDR             R0, [R6,#0x188]
AND             R0, R0, #4
MOVS            R0, R0,LSR#2
LDR             R0, [R6,#0x164]
BEQ             loc_29AA30
LDR             R0, [R0,R4,LSL#2]
LDR             R1, [R0,#0x24]
CMP             R1, #0
LDRGT           R0, [R0,#0x10]
LDRGT           R0, [R0]
MOVLE           R0, #0
ADD             R0, R0, #0x24 ; '$'
B               loc_29AA3C
LDR             R0, [R0,R4,LSL#2]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x24 ; '$'
LDR             R1, [R5,#4]
ADD             R2, R9, R4,LSL#4
ADD             R3, R10, R4,LSL#4
LDR             R11, [R1,R4,LSL#4]
MOV             R12, #0xC
ADD             R12, R12, R4,LSL#4
STR             R11, [SP,#0x50+var_50]
LDR             R11, [R5,#4]
ADD             R1, R0, #0x80
LDR             R2, [R11,R2]
STR             R2, [SP,#0x50+var_4C]
LDR             R2, [R5,#4]
ADD             R2, R2, R3
VLDR            S0, [R2]
VSTR            S0, [SP,#0x50+var_48]
LDR             R2, [R5,#4]
VLDR            S0, [R8,#0xC]
ADD             R2, R2, R12
VLDR            S1, [R2]
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S1, S17
VSTR            S0, [SP,#0x50+var_44]
VLDMEA          SP, {S1-S3}
VSTR            S0, [R0,#0x8C]
VSTM            R1, {S1-S3}
VLDR            S0, [R1]
VMOV            R2, S0
CMP             R2, #0x3F800000
VMOVGT.F32      S0, S20
BGT             loc_29AAC0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S16
VMOV.F32        S2, S18
VLDR            S1, [R1,#4]
VMOV            R2, S1
VMLA.F32        S2, S0, S19
CMP             R2, #0x3F800000
VMOVGT.F32      S1, S20
VCVT.U32.F32    S0, S2
VMOV            R3, S0
AND             R2, R3, #0xFF
BGT             loc_29AAF4
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S16
VMOV.F32        S2, S18
VLDR            S0, [R1,#8]
VMOV            R3, S0
VMLA.F32        S2, S1, S19
CMP             R3, #0x3F800000
VMOVGT.F32      S0, S20
VCVT.U32.F32    S1, S2
VMOV            R12, S1
AND             R3, R12, #0xFF
BGT             loc_29AB28
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S16
VMOV.F32        S2, S18
VLDR            S1, [R1,#0xC]
VMOV            R1, S1
VMOV.F32        S3, S2
CMP             R1, #0x3F800000
VMOVGT.F32      S1, S20
VMLA.F32        S3, S0, S19
VCVT.U32.F32    S0, S3
VMOV            R12, S0
AND             R12, R12, #0xFF
BGT             loc_29AB60
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S16
ADD             R4, R4, #1
CMP             R4, R7
VMLA.F32        S2, S1, S19
VCVT.U32.F32    S0, S2
VMOV            R1, S0
MOV             R1, R1,LSL#24
ORR             R1, R1, R12,LSL#16
ORR             R1, R1, R3,LSL#8
ORR             R1, R1, R2
STR             R1, [R0,#0xD0]
BLT             loc_29A9E8
ADD             SP, SP, #0x14
VPOP            {D8-D10}
POP             {R4-R11,PC}
