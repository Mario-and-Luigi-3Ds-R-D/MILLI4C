PUSH            {R4-R9,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BEQ             loc_15F150
LDR             R9, =off_6D1648
LDR             R0, [R9]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
MOV             R5, R0
LDR             R0, [R4,#4]
MOV             R6, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
MOV             R1, SP
BLX             R2
VLDR            S1, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S17, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S18, =360.0
LDR             R1, =0x42340000
VLDR            S16, =0.0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R1
BLE             loc_15EC2C
VLDR            S1, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x43070000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R1, R0
BGT             loc_15EC98
VLDR            S1, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x43610000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R1
BLE             loc_15EC94
VLDR            S1, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x439D8000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R1, R0
BGT             loc_15EC98
VSTR            S16, [SP,#0x38+var_38]
LDR             R0, [R9]
BL              sub_1E45C8
LDR             R0, [R0,#0x14]
TST             R0, #0x80000
BEQ             loc_15EED0
ADD             R0, R5, #0x2400
VLDR            S0, [R0,#0x2D4]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_15EED0
LDR             R0, [R5,#0x4EC]
TST             R0, #1
BEQ             loc_15ECD8
LDR             R0, [R4,#0x4EC]
TST             R0, #1
BEQ             loc_15EED0
VLDR            S0, [R5,#0x108]
VLDR            S1, [R4,#0x108]
LDR             R0, [R9]
VSUB.F32        S0, S0, S1
VABS.F32        S17, S0
BL              sub_1E45C8
ADD             R0, R0, #0x800
VLDR            S0, [R0,#0x54]
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_15EED0
VLDR            S0, [R5,#0x108]
VLDR            S17, [R4,#0x108]
LDR             R0, [R9]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLE             loc_15ED34
BL              sub_1E45C8
ADD             R0, R0, #0x800
VLDR            S1, [R5,#0x108]
VLDR            S0, [R0,#0x54]
VSUB.F32        S0, S1, S0
B               loc_15ED4C
NOP
BL              sub_1E45C8
ADD             R0, R0, #0x800
VLDR            S1, [R5,#0x108]
VLDR            S0, [R0,#0x54]
VADD.F32        S0, S0, S1
MOV             R6, #1
VSTR            S0, [R4,#0x108]
VSUB.F32        S1, S0, S17
VLDR            S0, [R4,#0x124]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x124]
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x1DC]
MOV             R0, R4
BLX             R2
ADD             R1, R5, #0x108
MOV             R0, R4
VLDM            R1, {S17-S19}
BL              sub_18537C
ADD             R8, R4, #0x2400
VLDR            S0, [R8,#0x278]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_15EE24
ADD             R0, R5, #0x2400
VLDR            S0, [R0,#0x2D4]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_15EE24
VLDR            S0, [R5,#0x108]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R5,#0x10C]
VCMPEQ.F32      S1, S18
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S1, [R5,#0x110]
VCMPEQ.F32      S1, S19
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_15EE24
ADD             R0, R5, #0x400
VLDR            S1, [R0,#0x84]
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x38+var_38]
VCMPEQ.F32      S1, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_15EE24
VSUB.F32        S0, S0, S17
VSTR            S0, [R5,#0x124]
LDR             R0, [R5]
LDR             R1, [R0,#0x68]
MOV             R0, R5
BLX             R1
LDR             R0, [R5]
MOV             R1, R4
LDR             R2, [R0,#0x1DC]
MOV             R0, R5
BLX             R2
ADD             R0, R5, #0x2400
VLDR            S0, [R0,#0x2D4]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDRNE          S0, [R8,#0x278]
VCMPNE.F32      S0, S16
VMRSNE          APSR_nzcv, FPSCR
BEQ             loc_15EE68
VLDR            S0, [SP,#0x38+var_38]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_15EE68
VSTR            S16, [R4,#0x124]
LDR             R0, [R4]
LDR             R1, [R0,#0x68]
MOV             R0, R4
BLX             R1
VLDR            S0, [R8,#0x278]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_15F04C
LDR             R0, [R4,#0x4EC]
TST             R0, #1
BEQ             loc_15EF1C
VLDR            S1, [R4,#0x124]
VMUL.F32        S1, S0, S1
VCMPE.F32       S16, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_15F054
VLDR            S1, [R4,#0x108]
VLDR            S2, =0.5
VMLA.F32        S1, S0, S2
VSTR            S1, [R4,#0x108]
B               loc_15F054
DCD off_6D1648
DCFS 0.000015259
DCFS 360.0
DCD 0x42340000
DCFS 0.0
DCD 0x43070000
DCD 0x43610000
DCD 0x439D8000
DCFS 0.5
LDR             R0, [R9]
BL              sub_1E45C8
LDR             R0, [R0,#0x14]
TST             R0, #0x80000
BEQ             loc_15ED78
ADD             R0, R5, #0x2400
VLDR            S0, [R0,#0x2D4]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDRNE          S0, [SP,#0x38+var_38]
VCMPNE.F32      S0, S16
VMRSNE          APSR_nzcv, FPSCR
BEQ             loc_15ED78
VLDR            S0, [R4,#0x124]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, =1.0
BEQ             loc_15ED60
B               loc_15ED64
VLDR            S1, [R4,#0x108]
VCMPE.F32       S0, S16
VADD.F32        S2, S1, S0
VMRS            APSR_nzcv, FPSCR
VSTR            S2, [R4,#0x108]
BCS             loc_15EF64
VLDR            S3, [R4,#0x118]
VLDR            S1, [R8,#0x27C]
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_15EF64
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_15EF64
VLDR            S1, [R4,#0x124]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BGE             loc_15EFA0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_15F054
VLDR            S1, [R4,#0x118]
VLDR            S0, [R8,#0x27C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_15F054
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_15F054
VLDR            S0, [R4,#0x124]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_15F054
MOV             R6, #0
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R7, R6, R6,LSL#2
ADD             R0, R0, R7,LSL#2
ADD             R0, R0, #0x16C00
ADD             R0, R0, #0x38 ; '8'
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_15F040
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R7,LSL#2
ADD             R0, R0, #0x16C00
VLDR            S0, [R4,#0x108]
VLDR            S1, [R0,#0x40]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_15F034
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R7,LSL#2
ADD             R0, R0, #0x16C00
VLDR            S1, [R4,#0x108]
VLDR            S0, [R0,#0x44]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_15F034
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R7,LSL#2
ADD             R0, R0, #0x16C00
VLDR            S1, [R4,#0x10C]
VLDR            S0, [R0,#0x48]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_15F054
ADD             R6, R6, #1
CMP             R6, #8
BLT             loc_15EFA4
LDR             R0, [R8,#0x27C]
STR             R0, [R4,#0x108]
B               loc_15F054
CMP             R6, #0
BEQ             loc_15F0B4
LDR             R0, [R4]
LDR             R1, [R0,#0x28C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x68]
MOV             R0, R4
BLX             R1
LDR             R0, [R9]
BL              sub_1E45C8
LDR             R0, [R0,#0x14]
TST             R0, #0x80000
BEQ             loc_15F148
LDR             R0, [R9]
BL              sub_1E45C8
LDR             R1, [R0]
ADD             R2, R5, #0x800
VMOV.F32        S0, S16
VLDR            S1, [R2,#0x28]
LDR             R3, [R1,#0xEC]
MOV             R2, #0
MOV             R1, R2
BLX             R3
B               loc_15F148
ADD             R0, R5, #0x400
VLDR            S0, [R0,#0x84]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_15F148
LDR             R1, [R5,#0x464]
LDR             R2, [R4,#0x464]
MOV             R1, R1,LSL#28
CMP             R1, R2,LSL#28
BNE             loc_15F148
VLDR            S0, [R0,#0x78]
VLDR            S1, [R0,#0x8C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_15F148
LDR             R0, [R9]
BL              sub_1E45C8
VMOV.F32        S0, S16
LDR             R1, [R0]
MOV             R2, #0
LDR             R3, [R1,#0xEC]
VMOV.F32        S1, S0
MOV             R1, R2
BLX             R3
VLDR            S0, [R5,#0x108]
VLDR            S1, [R5,#0x118]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x124]
LDR             R0, [R4]
LDR             R1, [R0,#0x68]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x1DC]
MOV             R0, R4
BLX             R2
MOV             R0, R4
BL              sub_1862C0
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R9,PC}
