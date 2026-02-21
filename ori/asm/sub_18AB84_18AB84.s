PUSH            {R4-R11,LR}
MOV             R6, R0
ADD             R0, R0, #8
VPUSH           {D8-D9}
SUB             SP, SP, #0x44
ADD             R1, SP, #0x78+var_70
BL              sub_5C7AD0
VLDR            S16, =0.0
VLDR            S17, =1.0
VSTR            S16, [SP,#0x78+var_6C]
VLDR            S0, [R6,#0x24]
VLDR            S2, [SP,#0x78+var_70]
VLDR            S1, [R6,#0x2C]
VLDR            S3, [SP,#0x78+var_68]
VSUB.F32        S2, S0, S2
VSUB.F32        S0, S1, S3
VMUL.F32        S1, S2, S2
VMLA.F32        S1, S16, S16
VMLA.F32        S1, S0, S0
VSQRT.F32       S3, S1
VDIV.F32        S1, S17, S3
VMUL.F32        S2, S2, S1
VMUL.F32        S3, S16, S1
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S16, S2
VLDR            S2, =90.0
VMLA.F32        S1, S16, S3
VMLA.F32        S1, S17, S0
VADD.F32        S0, S1, S17
VMUL.F32        S0, S0, S2
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_18AC1C
LDR             R1, =0x41900000
VMOV            R0, S0
CMP             R0, R1
MOVLT           R7, #0
BLT             loc_18ACC4
VMOV            R0, S0
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x1900000
CMP             R0, #0x800000
MOVCC           R7, #1
BCC             loc_18ACC4
VMOV            R0, S0
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x2100000
CMP             R0, #0x480000
MOVCC           R7, #2
BCC             loc_18ACC4
VMOV            R0, S0
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x2580000
CMP             R0, #0x380000
MOVCC           R7, #3
BCC             loc_18ACC4
VMOV            R0, S0
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x2900000
CMP             R0, #0x480000
MOVCC           R7, #4
BCC             loc_18ACC4
VMOV            R0, S0
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x2D80000
CMP             R0, #0x240000
MOVCC           R7, #5
BCC             loc_18ACC4
VMOV            R0, S0
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x2FC0000
CMP             R0, #0x140000
MOVCC           R7, #6
BCC             loc_18ACC4
VMOV            R0, S0
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x3100000
CMP             R0, #0x120000
MOVCC           R7, #7
MOVCS           R7, #8
ADD             R9, R6, #0x14000
MOV             R5, #0
LDRB            R0, [R9,#0x28D]
CMP             R0, #0
BLE             loc_18ADC4
ADD             R0, R6, #0x13800
ADD             R0, R0, #0x3E4
ADD             R10, R6, #0x13800
MOV             R11, #0x1F00000
RSB             R8, R7, #0
ADD             R10, R10, #0x3A4
STR             R0, [SP,#0x78+var_60]
ADD             R0, R6, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #3
BEQ             loc_18ADB4
LDR             R0, =0x4B6
LDRH            R0, [R0,R4]
TST             R0, #2
BNE             loc_18AD38
LDR             R0, [R4]
LDR             R1, [R0,#0x88]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
MOV             R1, R10
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
LDR             R0, [R4]
LDR             R2, [R0,#0x74]
BEQ             loc_18AE68
MOV             R1, R10
MOV             R0, R4
BLX             R2
VLDR            S0, [R4,#0x108]
VLDR            S1, [SP,#0x78+var_70]
LDR             R2, [R4,#0x4EC]
MOV             R0, R7
VCMPE.F32       S0, S1
BIC             R2, R2, #0x1F00000
VMRS            APSR_nzcv, FPSCR
SXTBGT          R0, R8
AND             R0, R11, R0,LSL#20
ORR             R0, R0, R2
STR             R0, [R4,#0x4EC]
LDR             R0, [R4]
LDR             R1, [R0,#0x328]
MOV             R0, R4
BLX             R1
LDRB            R0, [R9,#0x28D]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_18ACF4
ADD             R5, R6, #0x15000
MOV             R4, #0
LDRB            R0, [R5]
CMP             R0, #0
ADDGT           R7, R6, #0x14C00
ADDGT           R7, R7, #0x3FC
BLE             loc_18AE08
LDR             R0, [R7]
ADD             R1, R4, R4,LSL#1
ADD             R1, R1, R4,LSL#7
LDR             R1, [R0,R1,LSL#4]!
LDR             R1, [R1,#0x328]
BLX             R1
LDRB            R0, [R5]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18ADE0
ADD             R0, R6, #0x13C00
ADD             R0, R0, #0x108
MOV             R5, R0
BL              sub_585328
LDR             R0, =0x14408
LDR             R0, [R0,R6]
BL              sub_2FB94C
LDR             R0, =0x14B60
LDR             R7, [R0,R6]
LDR             R4, [R7,#4]!
CMP             R4, R7
BEQ             loc_18AEBC
LDRB            R0, [R4,#0x14]
TST             R0, #0xF
BEQ             loc_18AE94
LDR             R0, [R4,#0xC]
ADD             R2, SP, #0x78+var_60
MOV             R1, #0
STR             R0, [SP,#0x78+var_60]
LDR             R0, [R4,#0xAC]
BL              sub_12C9C4
NOP
NOP
B               loc_18AEB0
LDR             R1, [SP,#0x78+var_60]
MOV             R0, R4
BLX             R2
B               loc_18ADB4
DCFS 0.0
DCFS 1.0
DCFS 90.0
DCD 0x41900000
DCD 0x4B6
DCD 0x14408
DCD 0x14B60
MOV             R0, #0xFFFFFF80
ADD             R2, SP, #0x78+var_5C
REV             R0, R0
MOV             R1, #0
STR             R0, [SP,#0x78+var_5C]
LDR             R0, [R4,#0xAC]
BL              sub_12C9C4
LDR             R4, [R4]
CMP             R4, R7
BNE             loc_18AE38
ADD             R8, R6, #0x13000
ADD             R8, R8, #0xD20
LDR             R11, =byte_6CF858
LDRB            R0, [R8]
MOV             R4, #0
CMP             R0, #0
ADDGT           R10, R6, #0x14400
ADDGT           R10, R10, #0x214
BLE             loc_18AF54
MOV             R1, #0x67 ; 'g'
AND             R0, R4, #0xFF
LDR             R2, [R5]
SMULBB          R0, R0, R1
LDR             R1, [R10]
ADD             R7, R2, R0,LSL#2
MOV             R0, R7
BL              sub_1E84C0
LDRB            R0, [R11]
CMP             R4, #1
BLT             loc_18AF80
CMP             R0, #0
BEQ             loc_18AF30
LDRB            R0, [R7,#0x17D]
TST             R0, #1
BEQ             loc_18AF30
TST             R0, #2
BNE             loc_18AF30
MOV             R1, #1
B               loc_18AF34
MOV             R1, #0
LDR             R0, [R7]
LDR             R2, [R0,#0x144]
MOV             R0, R7
BLX             R2
LDRB            R0, [R8]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18AEE0
LDR             R0, =byte_6CF859
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_18AF98
CMP             R0, #1
BEQ             loc_18AFA0
CMP             R0, #3
BEQ             loc_18AF98
CMP             R0, #4
BNE             loc_18AFA4
B               loc_18AFA0
CMP             R0, #0
BEQ             loc_18AF30
LDRB            R0, [R7,#0x17D]
TST             R0, #1
BEQ             loc_18AF30
B               loc_18AF28
MOV             R10, #0
B               loc_18AFA4
MOV             R10, #1
LDR             R0, =dword_6CF85C
VLDR            S0, =0.0039216
MOV             R4, #0
LDR             R0, [R0]
AND             R1, R0, #0xFF
MOV             R3, R0,LSL#16
MOV             R12, R0,LSL#8
MOV             R2, R0,LSR#24
MOV             R3, R3,LSR#24
MOV             R0, R12,LSR#24
VMOV            S4, R1
VMOV            S1, R3
VMOV            S2, R0
VMOV            S3, R2
ADD             R0, SP, #0x78+var_5C
VCVT.F32.S32    S4, S4
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S3, S3
VMUL.F32        S4, S4, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S4, [SP,#0x78+var_60]
VSTR            S0, [SP,#0x78+var_54]
VSTM            R0, {S1-S2}
LDRB            R0, [R8]
CMP             R0, #0
BLE             loc_18B04C
AND             R0, R4, #0xFF
MOV             R1, #0x67 ; 'g'
LDR             R2, [R5]
SMULBB          R0, R0, R1
MOV             R1, R10
ADD             R0, R2, R0,LSL#2
ADD             R2, SP, #0x78+var_60
LDR             R0, [R0,#0xA4]
BL              sub_146638
LDRB            R0, [R8]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18B018
LDR             R0, =0x13D23
MOV             R4, #0
ADD             R8, R6, R0
LDRB            R0, [R8]
CMP             R0, #0
ADDGT           R7, R6, #0x13C00
ADDGT           R7, R7, #0x114
BLE             loc_18B0A0
LDR             R2, [R5,#0x10]
AND             R1, R4, #0xFF
AND             R0, R4, #0xFF
ADD             R3, R2, R1,LSL#4
LDR             R1, [R7]
ADD             R2, SP, #0x78+var_60
LDR             R0, [R1,R0,LSL#2]
MOV             R1, R10
BL              sub_14849C
LDRB            R0, [R8]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18B06C
LDRB            R0, [R9,#0x28D]
MOV             R4, #0
CMP             R0, #0
VLDRGT          S19, =255.0
VLDRGT          S18, =0.5
BLE             loc_18B3D8
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #3
BEQ             loc_18B3C8
LDR             R0, [R5,#0x464]
TST             R0, #0x40000
BEQ             loc_18B0FC
LDR             R0, [R5]
LDRSB           R1, [R11]
LDR             R2, [R0,#0x84]
MOV             R0, R5
BLX             R2
LDR             R0, [R5,#0x464]
TST             R0, #0x20000
BEQ             loc_18B3C8
LDR             R0, [R5]
LDR             R1, [R0,#0xC]
MOV             R0, R5
BLX             R1
CMP             R0, #0
LDR             R0, [R5]
BEQ             loc_18B388
LDR             R1, [R0,#0x38]
MOV             R0, R5
BLX             R1
CMP             R10, #0
BEQ             loc_18B144
CMP             R10, #1
BNE             loc_18B3C8
B               loc_18B250
VMOV.F32        S0, S17
VLDR            S1, [SP,#0x78+var_60]
ADD             R2, SP, #0x78+var_4C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S0
BGT             loc_18B170
VMOV.F32        S2, S16
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S16
VMOV.F32        S2, S18
VMLA.F32        S2, S1, S19
VCVT.U32.F32    S1, S2
VMOV.F32        S2, S16
VMOV            R1, S1
VLDR            S1, [SP,#0x78+var_5C]
AND             R3, R1, #0xFF
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S0
BGT             loc_18B1A8
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S2
VMOV.F32        S2, S18
VMOV.F32        S3, S16
VMLA.F32        S2, S1, S19
VCVT.U32.F32    S1, S2
VMOV.F32        S2, S0
VMOV.F32        S0, S3
VMOV            R1, S1
VLDR            S1, [SP,#0x78+var_58]
AND             R12, R1, #0xFF
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
BGT             loc_18B1E8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S1
VMOV.F32        S1, S18
VMOV.F32        S4, S1
VMLA.F32        S4, S0, S19
VCVT.U32.F32    S0, S4
VMOV            R1, S0
VLDR            S0, [SP,#0x78+var_54]
AND             R5, R1, #0xFF
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
BGT             loc_18B220
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S3
VMLA.F32        S1, S0, S19
VCVT.U32.F32    S0, S1
VMOV            R1, S0
MOV             R1, R1,LSL#24
ORR             R1, R1, R5,LSL#16
ORR             R1, R1, R12,LSL#8
ORR             R1, R1, R3
REV             R1, R1
STR             R1, [SP,#0x78+var_4C]
LDR             R0, [R0,#0xA4]
MOV             R1, #0
B               loc_18B380
VMOV.F32        S3, S17
VLDR            S2, [SP,#0x78+var_60]
VMOV.F32        S1, S16
ADD             R2, SP, #0x78+var_4C
VMOV.F32        S0, S3
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18B284
VMOV.F32        S0, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VMOVCS.F32      S0, S2
VMOV.F32        S2, S18
VMLA.F32        S2, S0, S19
VCVT.U32.F32    S0, S2
VMOV            R1, S0
VLDR            S0, [SP,#0x78+var_5C]
AND             R5, R1, #0xFF
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S3
BGT             loc_18B2BC
VMOV.F32        S2, S1
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VMOV.F32        S2, S18
VMLA.F32        S2, S0, S19
VCVT.U32.F32    S0, S2
VLDR            S2, [SP,#0x78+var_58]
VMOV            R1, S0
VMOV.F32        S0, S3
AND             R3, R1, #0xFF
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18B2F8
VMOV.F32        S0, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VMOVCS.F32      S0, S2
VMOV.F32        S4, S18
VMOV.F32        S2, S4
VMLA.F32        S2, S0, S19
VCVT.U32.F32    S0, S2
VLDR            S2, [SP,#0x78+var_54]
VCMPE.F32       S2, S3
VMOV            R1, S0
VMOV.F32        S0, S1
AND             R12, R1, #0xFF
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S3
BGT             loc_18B334
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S2
VMLA.F32        S4, S0, S19
VCVT.U32.F32    S0, S4
VMOV            R1, S0
MOV             R1, R1,LSL#24
ORR             R1, R1, R12,LSL#16
ORR             R1, R1, R3,LSL#8
ORR             R1, R1, R5
REV             R1, R1
B               loc_18B374
DCD byte_6CF858
DCD byte_6CF859
DCD dword_6CF85C
DCFS 0.0039216
DCD 0x13D23
DCFS 255.0
DCFS 0.5
STR             R1, [SP,#0x78+var_4C]
LDR             R0, [R0,#0xA4]
MOV             R1, #1
BL              sub_12C9C4
B               loc_18B3C8
LDR             R1, [R0,#0x10]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_18B3C8
LDR             R0, [R5]
LDR             R1, [R0,#0x3C]
MOV             R0, R5
BLX             R1
LDRB            R1, [R0,#0x2F7]
TST             R1, #2
BEQ             loc_18B3C8
LDR             R0, [R0,#0xA4]
ADD             R2, SP, #0x78+var_60
MOV             R1, R10
BL              sub_146638
LDRB            R0, [R9,#0x28D]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18B0B8
ADD             R0, R6, #0x13000
ADD             R0, R0, #0xB70
BL              sub_201840
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8-D9}
POP             {R4-R11,PC}
