PUSH            {R4-R9,LR}
ADD             R6, R0, #0x14800
ADD             R6, R6, #0x36C
MOV             R7, R0
VPUSH           {D8-D12}
SUB             SP, SP, #0x1EC
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_18BE14
ADD             R1, SP, #0x230+var_90
ADD             R0, R7, #8
BL              sub_5C7AE8
MOV             R0, #0
VLDR            S16, =0.0
STRB            R0, [SP,#0x230+var_98]
VSTR            S16, [SP,#0x230+var_94]
MOV             R2, R0
ADD             R0, SP, #0x230+var_90
LDR             R3, [R6]
ADD             R4, SP, #0x230+var_218
VLDM            R0, {S0-S2}
LDRB            R0, [R3]
TST             R0, #2
BEQ             loc_18B900
LDRH            R1, [R3,#2]
CMP             R1, #0
BNE             loc_18B900
VLDR            S3, [R3,#8]
ADD             R1, R3, #8
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BLT             loc_18B900
VLDR            S3, [R1,#4]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_18B900
VLDR            S3, [R1,#8]
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BLT             loc_18B900
VLDR            S3, [R1,#0xC]
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_18B900
VLDR            S3, [R1,#0x10]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BLT             loc_18B900
VLDR            S3, [R1,#0x14]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_18B900
ADD             R0, R3, #8
VLDR            S8, [R3,#0x14]
VLDR            S3, [R3,#0x10]
VLDR            S21, =0.5
VLDR            S7, [R3,#0x1C]
VSUB.F32        S8, S8, S3
VLDM            R0, {S5-S6}
MOV             R0, #0
VLDR            S4, [R3,#0x18]
LDRB            R1, [R4,#0x180]
VSUB.F32        S6, S6, S5
VSUB.F32        S7, S7, S4
CMP             R1, #0
MOVEQ           R12, #0
VMLA.F32        S3, S8, S21
VMLA.F32        S5, S6, S21
VMLA.F32        S4, S7, S21
VSUB.F32        S3, S1, S3
VSUB.F32        S5, S0, S5
VSUB.F32        S0, S2, S4
VMUL.F32        S1, S5, S5
VMLA.F32        S1, S3, S3
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
BEQ             loc_18B7FC
AND             R12, R1, #1
CMP             R12, #0
BLE             loc_18B7FC
ADD             R5, R0, R0,LSL#1
ADD             R1, R4, R5,LSL#2
VLDR            S1, [R1,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18B848
ADD             R0, R0, #1
CMP             R12, R0
BGT             loc_18B7D8
LDRB            R1, [R4,#0x180]
CMP             R1, R12
BLE             loc_18B844
ADD             R5, R12, R12,LSL#1
MOV             R0, R12
ADD             R5, R4, R5,LSL#2
VLDR            S1, [R5,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18B848
VLDR            S1, [R5,#0x14]
ADD             R0, R12, #1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18B848
ADD             R12, R12, #2
CMP             R1, R12
BGT             loc_18B808
MOV             R0, R12
LDRB            R1, [R4,#0x180]
CMP             R1, R0
BLE             loc_18B894
SUB             R1, R1, #1
SUB             R5, R1, R0
ADD             R12, R5, #1
CMP             R12, #0
MOVGT           R12, #0
ADDGT           R5, R5, #1
BLE             loc_18B894
ADD             R8, R1, R12
SUBS            R5, R5, #1
ADD             R9, R8, R8,LSL#1
SUB             R12, R12, #1
ADD             R8, R4, R9,LSL#2
VLDM            R8, {S1-S3}
ADD             R8, R8, #0xC
VSTM            R8, {S1-S3}
BNE             loc_18B870
ADD             R0, R0, R0,LSL#1
CMP             R3, #0
ADD             R12, R4, R0,LSL#2
STR             R3, [R4,R0,LSL#2]
STRB            R2, [R12,#4]
VSTR            S0, [R12,#8]
VLDR            S1, [SP,#0x230+var_94]
MOVNE           R5, #0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x230+var_94]
LDRB            R0, [R4,#0x180]
ADD             R0, R0, #1
STRB            R0, [R4,#0x180]
LDRNE           R12, [R6]
BEQ             loc_18BE14
LDR             R0, [R3,#0x90]
LDRB            R0, [R0,R5]
CMP             R0, #0
CMPNE           R3, R12
BEQ             loc_18BADC
LDRB            R0, [R12]
TST             R0, #2
BEQ             loc_18BADC
LDRH            R0, [R12,#2]
CMP             R0, #0
BEQ             loc_18B918
B               loc_18BADC
TST             R0, #1
BNE             loc_18BE14
ADD             R0, R2, #1
ADD             R3, R3, #0x94
AND             R2, R0, #0xFF
B               loc_18B6EC
VLDR            S0, [SP,#0x230+var_90]
VLDR            S3, [R12,#8]
ADD             R0, R12, #8
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BLT             loc_18BADC
VLDR            S5, [R0,#4]
VCMPE.F32       S0, S5
VMRS            APSR_nzcv, FPSCR
BHI             loc_18BADC
VLDR            S4, [R0,#8]
VLDR            S1, [SP,#0x230+var_8C]
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BLT             loc_18BADC
VLDR            S7, [R0,#0xC]
VCMPE.F32       S1, S7
VMRS            APSR_nzcv, FPSCR
BHI             loc_18BADC
VLDR            S6, [R0,#0x10]
VLDR            S2, [SP,#0x230+var_88]
VCMPE.F32       S2, S6
VMRS            APSR_nzcv, FPSCR
BLT             loc_18BADC
VLDR            S6, [R0,#0x14]
VCMPE.F32       S2, S6
VMRS            APSR_nzcv, FPSCR
BHI             loc_18BADC
VSUB.F32        S6, S5, S3
VSUB.F32        S7, S7, S4
VLDR            S8, [R12,#0x1C]
VLDR            S5, [R12,#0x18]
LDRB            R0, [R4,#0x180]
MOV             R2, R4
MOV             R1, #0
CMP             R0, #0
MOVEQ           R6, #0
VMLA.F32        S3, S6, S21
VMLA.F32        S4, S7, S21
VSUB.F32        S6, S8, S5
VSUB.F32        S3, S0, S3
VSUB.F32        S0, S1, S4
VMLA.F32        S5, S6, S21
VMUL.F32        S1, S3, S3
VMLA.F32        S1, S0, S0
VSUB.F32        S0, S2, S5
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
BEQ             loc_18BA0C
AND             R6, R0, #1
CMP             R6, #0
BLE             loc_18BA0C
ADD             R0, R1, R1,LSL#1
ADD             R0, R2, R0,LSL#2
VLDR            S1, [R0,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18BA58
ADD             R1, R1, #1
CMP             R6, R1
BGT             loc_18B9E8
LDRB            R0, [R2,#0x180]
CMP             R0, R6
BLE             loc_18BA54
ADD             R8, R6, R6,LSL#1
MOV             R1, R6
ADD             R8, R2, R8,LSL#2
VLDR            S1, [R8,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18BA58
VLDR            S1, [R8,#0x14]
ADD             R1, R6, #1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18BA58
ADD             R6, R6, #2
CMP             R0, R6
BGT             loc_18BA18
MOV             R1, R6
LDRB            R0, [R2,#0x180]
CMP             R0, R1
BLE             loc_18BAA4
SUB             R0, R0, #1
SUB             R8, R0, R1
ADD             R6, R8, #1
CMP             R6, #0
MOVGT           R6, #0
ADDGT           R8, R8, #1
BLE             loc_18BAA4
ADD             R9, R0, R6
SUBS            R8, R8, #1
ADD             R9, R9, R9,LSL#1
SUB             R6, R6, #1
ADD             R9, R2, R9,LSL#2
VLDM            R9, {S1-S3}
ADD             R9, R9, #0xC
VSTM            R9, {S1-S3}
BNE             loc_18BA80
ADD             R0, R1, R1,LSL#1
B               loc_18BAB4
DCFS 0.0
DCFS 0.5
ADD             R1, R2, R0,LSL#2
STR             R12, [R2,R0,LSL#2]
STRB            R5, [R1,#4]
VSTR            S0, [R1,#8]
VLDR            S1, [SP,#0x230+var_94]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x230+var_94]
LDRB            R0, [R2,#0x180]
ADD             R0, R0, #1
STRB            R0, [R4,#0x180]
LDRB            R0, [R12]
TST             R0, #1
BEQ             loc_18BB38
LDRB            R0, [R4,#0x180]
VLDR            S24, =1.0
VLDR            S23, =0.000015259
CMP             R0, #0
BEQ             loc_18BE14
MOV             R5, #0
VLDRGT          S18, =2.0
MOV             R8, R5
MOV             R6, R5
BLE             loc_18BBA0
VLDR            S0, [SP,#0x230+var_94]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLS             loc_18BB30
AND             R0, R0, #0xFF
SUB             R0, R0, #1
CMP             R0, R6
BNE             loc_18BB48
VMOV.F32        S17, S18
B               loc_18BB5C
ADD             R0, R5, #1
ADD             R12, R12, #0x94
AND             R5, R0, #0xFF
B               loc_18B8D0
ADD             R0, R6, R6,LSL#1
ADD             R0, R4, R0,LSL#2
VLDR            S1, [R0,#8]
VDIV.F32        S2, S1, S0
VSUB.F32        S17, S24, S2
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BCS             loc_18BB90
ADD             R0, R6, R6,LSL#1
ADD             R1, R4, R0,LSL#2
LDR             R5, [R4,R0,LSL#2]
LDRB            R8, [R1,#4]
B               loc_18BBA0
LDRB            R0, [R4,#0x180]
ADD             R6, R6, #1
CMP             R0, R6
BGT             loc_18BB10
LDR             R0, [R7]
LDR             R1, [R0,#0x2E4]
MOV             R0, R7
BLX             R1
MOV             R9, R0
ADD             R0, SP, #0x230+var_80
BL              sub_234BEC
ADD             R1, R5, #0x20 ; ' '
LDR             R0, =dword_6D1F40
VLDM            R1, {S0-S5}
VSUB.F32        S22, S1, S0
VSUB.F32        S19, S3, S2
VSUB.F32        S20, S5, S4
BL              sub_546DB0
VMOV            S0, R0
VMUL.F32        S1, S22, S21
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMUL.F32        S16, S0, S1
BL              sub_546DB0
TST             R0, #1
VNEGNE.F32      S16, S16
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VMUL.F32        S1, S19, S21
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMUL.F32        S18, S0, S1
BL              sub_546DB0
TST             R0, #1
VNEGNE.F32      S18, S18
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VMUL.F32        S1, S20, S21
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMUL.F32        S17, S0, S1
BL              sub_546DB0
TST             R0, #1
VNEGNE.F32      S17, S17
VLDR            S5, [R5,#0x20]
VLDR            S4, [R5,#0x28]
VLDR            S3, [R5,#0x30]
VLDR            S1, [SP,#0x230+var_90]
VLDR            S0, [SP,#0x230+var_8C]
VLDR            S2, [SP,#0x230+var_88]
VMLA.F32        S16, S22, S21
VMLA.F32        S18, S19, S21
VMLA.F32        S17, S20, S21
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S4
VADD.F32        S2, S2, S3
LDR             R0, =dword_6D1F40
VADD.F32        S22, S1, S16
VADD.F32        S20, S0, S18
VADD.F32        S19, S2, S17
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, [R5,#0x44]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMUL.F32        S17, S0, S1
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, [R5,#0x48]
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMUL.F32        S16, S0, S1
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, [R5,#0x4C]
ADD             R0, R5, #0x38 ; '8'
LDRB            R6, [R5,#1]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S23
VMUL.F32        S0, S0, S1
VLDM            R0, {S1-S3}
LDR             R0, =dword_6D1F40
VADD.F32        S18, S1, S17
VADD.F32        S17, S2, S16
VADD.F32        S16, S3, S0
BL              sub_546DB0
MUL             R0, R0, R6
MOV             R6, R0,LSR#16
ADD             R0, SP, #0x230+var_80
BL              sub_234B48
VSTR            S22, [SP,#0x230+var_58]
VSTR            S20, [SP,#0x230+var_54]
VSTR            S19, [SP,#0x230+var_50]
VSTR            S18, [SP,#0x230+var_70]
VSTR            S17, [SP,#0x230+var_6C]
ADD             R0, R5, R6
VSTR            S16, [SP,#0x230+var_68]
LDRB            R3, [R0,#0x88]
LDRB            R2, [R0,#0x80]
LDRB            R1, [R0,#0x78]
LDRB            R0, [R0,#0x70]
ADD             LR, SP, #0x230+var_228
ADD             R12, R5, R6,LSL#2
STM             LR, {R0-R3}
ADD             R2, SP, #0x230+var_80
MOV             R3, R6
LDR             R0, [R12,#0x50]
STR             R8, [SP,#0x230+var_230]
MOV             R1, R9
STR             R0, [SP,#0x230+var_22C]
LDR             R0, [R7]
LDR             R12, [R0,#0x298]
MOV             R0, R7
BLX             R12
LDRH            R0, [R5,#6]
ADD             R0, R0, #1
UXTH            R6, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R6
LDRH            R1, [R5,#4]
ADD             R0, R1, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDRB            R1, [R4,#0x180]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VADDNE.F32      S0, S0, S24
CMP             R1, #0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R0, R0
BEQ             loc_18BE0C
TST             R1, #1
MOV             R2, #0
BEQ             loc_18BDDC
LDR             R1, [SP,#0x230+var_218]
MOV             R2, #1
STRH            R0, [R1,#2]
LDRB            R1, [R4,#0x180]
MOVS            R1, R1,LSR#1
BEQ             loc_18BE0C
ADD             R3, R2, R2,LSL#1
SUBS            R1, R1, #1
LDR             R12, [R4,R3,LSL#2]
ADD             R3, R4, R3,LSL#2
ADD             R2, R2, #2
STRH            R0, [R12,#2]
LDR             R3, [R3,#0xC]
STRH            R0, [R3,#2]
BNE             loc_18BDE8
ADD             R0, SP, #0x230+var_80
NOP
ADD             SP, SP, #0x1EC
VPOP            {D8-D12}
POP             {R4-R9,PC}
