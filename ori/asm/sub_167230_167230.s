PUSH            {R4-R11,LR}
MOV             R8, R0
LDR             R4, =off_6D1648
VPUSH           {D8-D9}
SUB             SP, SP, #4
LDR             R0, [R4]
BL              sub_1E4614
MOV             R11, R0
LDR             R0, [R4]
BL              sub_1E4604
STR             R0, [SP,#0x38+var_38]
MOV             R0, R8
BL              sub_1916C0
LDR             R0, =0x143FC
LDRB            R0, [R0,R8]
CMP             R0, #0
BEQ             loc_1677E4
ADD             R0, R8, #0x16000
ADD             R0, R0, #0x338
BL              sub_21E290
MOV             R0, R4
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R5, R8, #0x13C00
ADD             R10, R8, #0x14000
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xF10
ADD             R5, R5, #0x24 ; '$'
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_16734C
LDR             R0, [R5]
LDRB            R0, [R0,#0x462]
TST             R0, #2
BNE             loc_16734C
LDRB            R0, [R10,#0x28D]
MOV             R4, #0
CMP             R0, #0
BLE             loc_16734C
ADD             R0, R8, R4,LSL#2
ADD             R6, R0, #0x14000
LDR             R0, [R6,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #6
BNE             loc_16733C
LDR             R0, [R11]
LDR             R1, [R6,#0x184]
LDR             R2, [R0,#0x450]
MOV             R0, R11
BLX             R2
CMP             R0, #0
BEQ             loc_16733C
LDR             R1, [R6,#0x184]
LDR             R0, [R11,#0x750]
CMP             R1, R0
BEQ             loc_16733C
LDRB            R0, [R1,#0xDE]
TST             R0, #1
BEQ             loc_16733C
LDR             R0, [R5]
LDR             R2, [R0]
LDR             R3, [R2,#0x74]
MOV             R2, R11
BLX             R3
LDRB            R0, [R10,#0x28D]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1672D0
LDRB            R0, [R10,#0x28D]
MOV             R7, #0
CMP             R0, #0
BLE             loc_167430
ADD             R0, R8, R7,LSL#2
ADD             R9, R0, #0x14000
LDR             R0, [R9,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #6
BNE             loc_167420
LDR             R0, [R9,#0x184]
LDRB            R1, [R0,#0x75C]
AND             R1, R1, #7
CMP             R1, #2
BNE             loc_167420
LDRB            R0, [R0,#0x75D]
CMP             R0, #0xA
BLS             loc_167420
LDR             R0, [R5]
MOV             R4, #0
LDRB            R0, [R0,#0x460]
CMP             R0, #0
BLE             loc_167420
LDR             R0, [R5]
MOV             R1, R4
BL              sub_1786B8
MOVS            R6, R0
LDRNE           R0, [R6,#4]
CMPNE           R0, #0
BEQ             loc_16740C
LDR             R1, [R0,#0x1F4]
LDR             R2, [R9,#0x184]
CMP             R1, R2
BNE             loc_16740C
BL              sub_533330
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R4
BL              sub_1786C4
LDR             R0, [R6,#4]
CMP             R0, #0
BEQ             loc_16740C
MOV             R1, #0
STR             R1, [R0,#0x180]
MOV             R0, #0
STR             R0, [R6,#4]
LDR             R0, [R5]
ADD             R4, R4, #1
LDRB            R0, [R0,#0x460]
CMP             R0, R4
BGT             loc_1673B0
LDRB            R0, [R10,#0x28D]
ADD             R7, R7, #1
CMP             R0, R7
BGT             loc_16735C
ADD             R5, R8, #0x16C00
LDRB            R0, [R5,#0xD8]
CMP             R0, #0
BEQ             loc_1676B8
LDR             R1, [SP,#0x38+var_38]
VLDR            S16, =0.0
MOV             R0, #0
ADD             R2, R11, #0x2400
VMOV.F32        S18, S16
VMOV.F32        S17, S16
ADD             R3, R1, #0x2400
LDR             R12, =0x16C38
ADD             R1, R0, R0,LSL#2
ADD             R1, R8, R1,LSL#2
LDRB            R12, [R12,R1]
CMP             R12, #0
BEQ             loc_1675FC
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_16752C
LDR             R4, [R11,#0x4EC]
TST             R4, #1
BNE             loc_16752C
ADD             R12, R1, #0x16C00
VLDR            S3, [R11,#0x108]
VLDR            S0, [R12,#0x40]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VLDRLS          S2, [R12,#0x44]
VCMPELS.F32     S3, S2
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_16752C
VLDR            S3, [R12,#0x48]
VLDR            S4, [R11,#0x10C]
VCMP.F32        S3, S4
VMRS            APSR_nzcv, FPSCR
BNE             loc_16752C
VLDR            S16, [R12,#0x3C]
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
VLDR            S3, [R2,#0x2D4]
VMOVCS.F32      S1, S2
VMOV.F32        S2, S16
VMOVCC.F32      S1, S0
VCMP.F32        S3, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_16752C
TST             R4, #2
BNE             loc_16752C
VLDR            S2, [R11,#0x118]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S3, S16
VCMPECC.F32     S3, S17
VMRSCC          APSR_nzcv, FPSCR
VSTRCC          S0, [R11,#0x108]
VLDR            S0, [R12,#0x44]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VLDRGT          S2, [R12,#0x3C]
VCMPEGT.F32     S2, S17
VMRSGT          APSR_nzcv, FPSCR
VSTRGT          S0, [R11,#0x108]
VCMP.F32        S18, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_1675F0
LDR             R12, [SP,#0x38+var_38]
LDR             R12, [R12,#0x4EC]
TST             R12, #1
BNE             loc_1675F0
LDR             R4, [SP,#0x38+var_38]
ADD             R1, R1, #0x16C00
VLDR            S3, [R1,#0x40]
VLDR            S0, [R4,#0x108]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VLDRLS          S2, [R1,#0x44]
VCMPELS.F32     S0, S2
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_1675F0
VLDR            S0, [R1,#0x48]
VLDR            S4, [R4,#0x10C]
VCMP.F32        S0, S4
VMRS            APSR_nzcv, FPSCR
BNE             loc_1675F0
VLDR            S18, [R1,#0x3C]
VCMPE.F32       S18, S17
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S0, S18
VMOVCS.F32      S19, S2
VLDR            S2, [R3,#0x278]
VMOVCC.F32      S19, S3
VCMP.F32        S2, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1675F0
TST             R12, #2
BNE             loc_1675F0
VLDR            S0, [R4,#0x118]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S18
VCMPECC.F32     S2, S17
VMRSCC          APSR_nzcv, FPSCR
VSTRCC          S3, [R4,#0x108]
VLDR            S2, [R1,#0x44]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VLDRGT          S0, [R1,#0x3C]
VCMPEGT.F32     S0, S17
VMRSGT          APSR_nzcv, FPSCR
LDRGT           R1, [SP,#0x38+var_38]
VSTRGT          S2, [R1,#0x108]
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_16745C
LDR             R0, [R11,#0x4EC]
TST             R0, #1
BNE             loc_167620
VSTR            S16, [R2,#0x2D4]
LDR             R0, [R11]
VMOV.F32        S0, S1
LDR             R1, [R0,#0x46C]
MOV             R0, R11
BLX             R1
LDR             R0, [SP,#0x38+var_38]
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             loc_167660
LDR             R0, [SP,#0x38+var_38]
VMOV.F32        S0, S18
LDR             R0, [R0]
LDR             R1, [R0,#0x3FC]
LDR             R0, [SP,#0x38+var_38]
BLX             R1
LDR             R0, [SP,#0x38+var_38]
VMOV.F32        S0, S19
LDR             R0, [R0]
LDR             R1, [R0,#0x400]
LDR             R0, [SP,#0x38+var_38]
BLX             R1
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_1676B8
VCMP.F32        S18, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1676B8
LDR             R0, [SP,#0x38+var_38]
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BEQ             loc_1676B8
LDR             R0, [SP,#0x38+var_38]
VMOV.F32        S0, S17
LDR             R0, [R0]
LDR             R1, [R0,#0x3FC]
LDR             R0, [SP,#0x38+var_38]
BLX             R1
LDR             R0, [SP,#0x38+var_38]
VMOV.F32        S0, S17
LDR             R0, [R0]
LDR             R1, [R0,#0x400]
LDR             R0, [SP,#0x38+var_38]
BLX             R1
ADD             R0, R8, #0x15000
ADD             R0, R0, #0x13C
MOV             R6, R0
BL              sub_19C524
ADD             R4, R8, #0x10000
ADD             R4, R4, #0x6B00
LDRB            R0, [R4,#0xF4]
CMP             R0, #0
BEQ             loc_1676F4
LDR             R0, [R6,#0x90]
CMP             R0, #0
BNE             loc_1676F4
LDRSH           R0, [R6,#0xA2]
CMP             R0, #0
BLE             loc_167720
LDRB            R0, [R4,#0xF5]
CMP             R0, #0
BEQ             loc_1677E4
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E4614
ADD             R0, R0, #0x23000
ADD             R0, R0, #0x5D0
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1677E4
LDRB            R1, [R4,#0xF4]
MOV             R0, R8
CMP             R1, #0
LDRBEQ          R1, [R4,#0xF5]
CMPEQ           R1, #0
BEQ             loc_1677E4
LDR             R2, =0x16BD4
MOV             R1, #0xFFFFFFFF
VLDR            S0, =1.0
LDR             R3, =0x16BF5
STR             R1, [R2,R0]
VSTR            S0, [R4,#0xD8]
ADD             R1, R0, #0x16800
VSTR            S0, [R4,#0xDC]
VLDR            S2, [R1,#0x3C0]
VLDR            S3, [R1,#0x3CC]
VLDR            S0, [R1,#0x3D8]
VLDR            S1, [R1,#0x3E4]
VMUL.F32        S2, S2, S3
ADD             R2, R0, #0x13C00
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S2, S0
VSTR            S0, [R2,#0x48]
VLDR            S2, [R1,#0x3C4]
VLDR            S1, [R1,#0x3D0]
VLDR            S0, [R1,#0x3DC]
VLDR            S3, [R1,#0x3E8]
VMUL.F32        S1, S2, S1
MOV             R1, #0
VMUL.F32        S0, S0, S3
VMUL.F32        S0, S1, S0
VSTR            S0, [R2,#0x4C]
SUB             R2, R3, #1
STRB            R1, [R0,R3]
STRB            R1, [R2,R0]
LDRSB           R2, [R5,#0x2C]
ADD             SP, SP, #4
ADD             R1, R0, #0x16800
VPOP            {D8-D9}
ADD             R1, R1, #0x3F8
POP             {R4-R11,LR}
B               sub_18D790
DCD off_6D1648
DCD 0x143FC
DCFS 0.0
DCD 0x16C38
DCD 0x16BD4
DCFS 1.0
DCD 0x16BF5
ADD             SP, SP, #4
VPOP            {D8-D9}
POP             {R4-R11,PC}
