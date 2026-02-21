PUSH            {R4-R11,LR}
SUB             SP, SP, #0x3C
MOV             R8, #0
SUBS            R5, R1, #0
MOV             R11, R0
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x3EC
ADD             R9, R11, #0x13C00
ADD             R9, R9, #0x164
STR             R0, [SP,#0x60+var_2C]
LDR             R7, [R0]
LDR             R10, [R9]
MOV             R6, R8
BLS             loc_165D98
LDR             R0, [R9]
ADD             R1, R6, R6,LSL#4
ADD             R4, R0, R1,LSL#3
ADD             R0, R4, #0x78 ; 'x'
VLDM            R0, {S0-S1}
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_165D80
CMP             R6, #0
BNE             loc_165C50
LDR             R0, [R4]
TST             R0, #2
BNE             loc_165C50
MOV             R1, R4
MOV             R0, R7
BL              sub_1E2D70
MOV             R0, R8
STRH            R0, [R7,#0x30]
ADD             R8, R8, #1
ADD             R7, R7, #0x34 ; '4'
VLDR            S0, [R10,#0x2C]
VLDR            S1, [R4,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R4,#0xC]
VLDR            S1, [R4,#0x1C]
MOVCC           R10, R4
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_165D8C
MOV             R1, R4
MOV             R0, R7
BL              sub_1E2CE0
MOV             R0, R8
STRH            R0, [R7,#0x30]
LDR             R0, [R4]
ADD             R8, R8, #1
ADD             R7, R7, #0x34 ; '4'
TST             R0, #2
BEQ             loc_165CAC
LDR             R0, [R4,#8]
TST             R0, #0x400
BNE             loc_165D30
LDR             R0, [R4,#8]
TST             R0, #0x800
BNE             loc_165CCC
ADD             R0, R4, #0x10
VLDM            R0, {S0-S1}
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_165CF4
MOV             R1, R4
MOV             R0, R7
BL              sub_1E2BE8
MOV             R0, R8
STRH            R0, [R7,#0x30]
LDR             R0, [R4,#8]
ADD             R8, R8, #1
ADD             R7, R7, #0x34 ; '4'
TST             R0, #0x800
BNE             loc_165D08
ADD             R0, R4, #0x30 ; '0'
VLDM            R0, {S0-S1}
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_165D24
MOV             R1, R4
MOV             R0, R7
BL              sub_1E2C60
MOV             R0, R8
STRH            R0, [R7,#0x30]
ADD             R8, R8, #1
ADD             R7, R7, #0x34 ; '4'
LDR             R0, [R4]
TST             R0, #2
BEQ             loc_165D80
LDR             R0, [R4,#8]
TST             R0, #0x800
BNE             loc_165D64
ADD             R0, R4, #0x10
VLDM            R0, {S0-S1}
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_165D64
ADD             R0, R4, #0x30 ; '0'
VLDM            R0, {S0-S1}
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_165D80
MOV             R1, R4
MOV             R0, R7
BL              sub_1E2B1C
MOV             R0, R8
STRH            R0, [R7,#0x30]
ADD             R8, R8, #1
ADD             R7, R7, #0x34 ; '4'
LDR             R0, [R4]
TST             R0, #1
BNE             loc_165D98
ADD             R6, R6, #1
CMP             R6, R5
BCC             loc_165C00
LDR             R0, [R10]
TST             R0, #2
BNE             loc_165DC0
MOV             R1, R10
MOV             R0, R7
BL              sub_1E2DAC
MOV             R0, R8
STRH            R0, [R7,#0x30]
ADD             R8, R8, #1
ADD             R7, R7, #0x34 ; '4'
ADD             R5, R11, #0x16000
LDR             R0, [R7]
ADD             R5, R5, #0xBF0
ORR             R0, R0, #1
STR             R0, [R7]
STRH            R8, [R7,#0x30]
STR             R7, [R5]
LDR             R0, [SP,#0x60+var_2C]
LDR             R1, [R0]
CMP             R7, R1
VLDRNE          S10, =0.0
BEQ             loc_165F80
LDR             R0, [R1]
TST             R0, #2
BNE             loc_165F70
LDR             R0, [R1,#4]
LDR             R0, [R0,#8]
TST             R0, #1
BEQ             loc_165F70
LDR             R2, [R1,#0x34]
ADD             R0, R1, #0x34 ; '4'
TST             R2, #1
BNE             loc_165F70
LDR             R2, [R0,#4]
LDR             R2, [R2,#8]
TST             R2, #1
BEQ             loc_165F64
VLDR            S3, [R0,#0xC]
VLDR            S1, [R1,#0xC]
VLDR            S2, [R0,#0x14]
VLDR            S5, [R1,#0x18]
VSUB.F32        S7, S3, S1
VSUB.F32        S8, S2, S1
VLDR            S6, [R0,#8]
VLDR            S0, [R1,#8]
VLDR            S9, [R0,#0x10]
VLDR            S4, [R1,#0x1C]
VSUB.F32        S11, S6, S0
VSUB.F32        S12, S9, S0
VMUL.F32        S7, S7, S5
VMUL.F32        S8, S8, S5
VMLS.F32        S7, S4, S11
VMLS.F32        S8, S4, S12
VCMP.F32        S7, S10
VMRS            APSR_nzcv, FPSCR
BNE             loc_165F64
VCMP.F32        S8, S10
VMRS            APSR_nzcv, FPSCR
BNE             loc_165F64
VCMP.F32        S5, S10
VMRS            APSR_nzcv, FPSCR
BNE             loc_165EC4
VLDR            S7, [R1,#0x14]
VMOV.F32        S8, S7
VCMPE.F32       S1, S7
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S0, S1
VMOVLS.F32      S7, S1
VMOV.F32        S1, S2
VMOVLT.F32      S0, S8
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S1, S3
VMOVGE.F32      S2, S3
B               loc_165EF8
VMOV.F32        S7, S0
VLDR            S1, [R1,#0x10]
VMOV.F32        S2, S1
VCMPE.F32       S7, S1
VMRS            APSR_nzcv, FPSCR
VMOVHI.F32      S7, S1
VMOV.F32        S1, S6
VMOVLT.F32      S0, S2
VCMPE.F32       S1, S9
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S6
VMOVHI.F32      S1, S9
VMOVLT.F32      S2, S9
VCMPE.F32       S7, S1
VMRS            APSR_nzcv, FPSCR
VCMPELE.F32     S2, S0
VMRSLE          APSR_nzcv, FPSCR
BLE             loc_165F20
VCMPE.F32       S1, S7
VMRS            APSR_nzcv, FPSCR
VCMPELE.F32     S0, S2
VMRSLE          APSR_nzcv, FPSCR
BGT             loc_165F64
VLDR            S1, [R0,#0x18]
VMUL.F32        S2, S5, S5
VLDR            S0, [R0,#0x1C]
VMUL.F32        S1, S1, S1
VMLA.F32        S2, S4, S4
VMLA.F32        S1, S0, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_165F50
LDR             R2, [R0]
ORR             R2, R2, #2
STR             R2, [R0]
NOP
BHI             loc_165F64
LDR             R2, [R1]
ORR             R2, R2, #2
STR             R2, [R1]
LDR             R2, [R0,#0x34]!
TST             R2, #1
BEQ             loc_165E1C
LDR             R0, [R5]
ADD             R1, R1, #0x34 ; '4'
CMP             R0, R1
BNE             loc_165DF0
LDR             R0, [SP,#0x60+var_2C]
LDR             R4, [R0]
LDR             R0, [R5]
CMP             R0, R4
BEQ             loc_16601C
LDR             R0, [R4]
TST             R0, #2
BNE             loc_16600C
TST             R0, #0x14
BEQ             loc_16600C
LDR             R0, [R5]
SUB             R0, R0, #0x34 ; '4'
CMP             R0, R4
BEQ             loc_16601C
LDR             R1, [R0]
TST             R1, #2
TSTEQ           R1, #0x14
BEQ             loc_165FD8
SUB             R0, R0, #0x34 ; '4'
CMP             R0, R4
BNE             loc_165FB8
B               loc_16601C
LDM             R0, {R1-R3,R6-R9,R12}
STMEA           SP, {R1-R3,R6-R9,R12}
ADD             R1, R0, #0x20 ; ' '
ADD             R7, SP, #0x60+var_40
LDM             R1, {R1-R3,R6,R12}
STM             R7, {R1-R3,R6,R12}
MOV             R2, #0x32 ; '2'
MOV             R1, R4
BL              sub_127EB8
MOV             R2, #0x32 ; '2'
MOV             R1, SP
MOV             R0, R4
BL              sub_127EB8
LDR             R0, [R5]
ADD             R4, R4, #0x34 ; '4'
CMP             R0, R4
BNE             loc_165F94
LDR             R0, [SP,#0x60+var_2C]
LDR             R3, [R5]
LDR             R1, [R0]
CMP             R3, R1
MOV             R4, R1
BEQ             loc_16605C
LDR             R0, [R1]
TST             R0, #2
BNE             loc_166050
TST             R0, #0x14
BEQ             loc_166050
MOV             R11, R1
B               loc_16605C
ADD             R1, R1, #0x34 ; '4'
CMP             R3, R1
BNE             loc_166034
LDR             R7, =0x4EC4EC4F
SUB             R6, R11, #0x34 ; '4'
CMP             R4, R6
BEQ             loc_166134
LDR             R0, [R4]
TST             R0, #2
BNE             loc_166128
SUB             R1, R11, #0x34 ; '4'
SUB             R3, R1, R4
CMP             R3, #0x33 ; '3'
MOV             R0, R4
BLE             loc_1660EC
SMULL           R3, R8, R7, R3
MOV             R12, #0
MOV             R2, R12
ADD             R3, R1, #8
MOV             R9, R8,ASR#4
SUB             R8, R9, R8,ASR#31
ADD             R9, R2, R2,LSL#2
ADD             R9, R9, R2,LSL#3
LDR             R9, [R1,R9,LSL#2]
TST             R9, #2
BNE             loc_1660D8
VLDR            S0, [R0,#8]
VLDR            S1, [R3]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1660D8
MOV             R0, #0xFFFFFFF3
MUL             R0, R12, R0
ADD             R0, R1, R0,LSL#2
SUBS            R8, R8, #1
SUB             R2, R2, #1
SUB             R3, R3, #0x34 ; '4'
ADD             R12, R12, #1
BNE             loc_1660A4
CMP             R0, R4
BEQ             loc_166128
VLDM            R0, {S0-S7}
ADD             R1, R0, #0x20 ; ' '
ADD             R9, SP, #0x60+var_40
VSTMEA          SP, {S0-S7}
LDM             R1, {R1-R3,R8,R12}
STM             R9, {R1-R3,R8,R12}
MOV             R2, #0x32 ; '2'
MOV             R1, R4
BL              sub_127EB8
MOV             R2, #0x32 ; '2'
MOV             R1, SP
MOV             R0, R4
BL              sub_127EB8
ADD             R4, R4, #0x34 ; '4'
CMP             R4, R6
BNE             loc_16606C
LDR             R0, [R5]
MOV             R4, R11
SUB             R0, R0, #0x34 ; '4'
CMP             R0, R4
BEQ             loc_166228
LDR             R0, [R4]
TST             R0, #2
BNE             loc_166214
LDR             R1, [R5]
MOV             R0, R4
SUB             R1, R1, #0x34 ; '4'
SUB             R3, R1, R4
CMP             R3, #0x33 ; '3'
BLE             loc_1661D8
SMULL           R3, R6, R7, R3
MOV             R12, #0
MOV             R2, R12
ADD             R3, R1, #0xC
MOV             R8, R6,ASR#4
SUB             R6, R8, R6,ASR#31
ADD             R8, R2, R2,LSL#2
ADD             R8, R8, R2,LSL#3
LDR             R8, [R1,R8,LSL#2]
TST             R8, #2
BNE             loc_1661B8
VLDR            S0, [R0,#0xC]
VLDR            S1, [R3]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1661B8
MOV             R0, #0xFFFFFFF3
MUL             R0, R12, R0
ADD             R0, R1, R0,LSL#2
SUB             R2, R2, #1
SUB             R3, R3, #0x34 ; '4'
B               loc_1661CC
DCFS 0.0
DCD 0x4EC4EC4F
SUBS            R6, R6, #1
ADD             R12, R12, #1
BNE             loc_166184
CMP             R0, R4
BEQ             loc_166214
LDM             R0, {R1-R3,R6,R8-R10,R12}
STMEA           SP, {R1-R3,R6,R8-R10,R12}
ADD             R1, R0, #0x20 ; ' '
ADD             R8, SP, #0x60+var_40
LDM             R1, {R1-R3,R6,R12}
STM             R8, {R1-R3,R6,R12}
MOV             R2, #0x32 ; '2'
MOV             R1, R4
BL              sub_127EB8
MOV             R2, #0x32 ; '2'
MOV             R1, SP
MOV             R0, R4
BL              sub_127EB8
LDR             R0, [R5]
ADD             R4, R4, #0x34 ; '4'
SUB             R0, R0, #0x34 ; '4'
CMP             R0, R4
BNE             loc_166148
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
