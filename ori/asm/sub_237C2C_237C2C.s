PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R5, #0x11
MOV             R1, #0
MOV             R7, #1
MOV             R8, R1
VPUSH           {D8-D15}
SUB             SP, SP, #0xC4
LDR             R0, [R0,#8]
VLDR            S19, =0.0
ADD             R0, R0, #0x400
STRH            R5, [R0,#0xC8]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R5, [R0,#0xCA]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R1, [R0]
STRH            R7, [R0,#2]
STRB            R1, [R0,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
VLDRNE          S16, =30.0
BEQ             loc_237D28
LDR             R6, =off_6D1648
VLDR            S18, =-100.0
VLDR            S20, =410.0
VLDR            S17, =600.0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S17
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S20
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1EC
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S18
VMOV.F32        S3, S18
VMOV.F32        S2, S19
VMOV.F32        S1, S19
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
LDR             R0, [R4,#8]
STRH            R5, [R0]
LDR             R0, [R4,#8]
STRH            R5, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x4A8]
CMP             R0, #0
CMPNE           R0, #1
CMPNE           R0, #2
MOVEQ           R0, R4
BLEQ            sub_2374D8
LDR             R0, [R4,#8]
MOV             R1, #0x140
ADD             R0, R0, #0x368
BL              sub_2FFE8C
LDR             R0, [R4,#8]
MOV             R1, #0xA0
ADD             R0, R0, #0x400
ADD             R0, R0, #0xD6
BL              sub_12038C
LDR             R10, =byte_68DBBD
LDR             R9, =0x19C98
MOV             R5, #0
LDR             R1, [R4,#4]
RSB             R0, R5, R5,LSL#4
ADD             R0, R0, R5,LSL#5
LDRB            R2, [R10]
ADD             R0, R9, R0,LSL#2
ADD             R0, R0, R1
CMP             R5, R2
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOVLT           R1, #1
MOVGE           R1, #0
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_237D8C
LDR             R0, [R4,#4]
VLDR            S16, =2.0
ADD             R5, R0, #0x21000
ADD             R5, R5, #0x15C
LDR             R0, [R5,#0xA8]
CMP             R0, #0
BNE             loc_237E10
MOV             R1, #0x2000
MOV             R0, R5
BL              sub_543494
LDR             R0, [R5]
MOV             R3, #0
VMOV.F32        S0, S16
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, R3
MOV             R0, R5
BLX             R12
LDR             R0, [R4,#4]
ADD             R5, R4, #0x4C00
ADD             R5, R5, #0x38C
ADD             R6, R0, #0x23400
ADD             R6, R6, #0x108
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
VLDR            S20, =10.0
STM             R3, {R0-R2}
ADD             R3, R5, #4
VMOV.F32        S0, S20
STM             R3, {R0-R2}
LDR             R0, [R4,#4]
ADD             R1, R0, #0x108
MOV             R0, R5
BL              sub_5A1E58
LDR             R0, [R4,#4]
ADD             R5, R4, #0x7000
ADD             R5, R5, #0x58 ; 'X'
ADD             R0, R0, #0x23400
LDR             R6, [R0,#0xF8]
MOV             R0, R5
BL              sub_5A18EC
VMOV.F32        S1, S20
VMOV.F32        S0, S19
STR             R6, [R5,#0xC]
MOV             R0, R5
STR             R6, [R5,#4]
BL              sub_5A1198
LDR             R0, [R4,#4]
ADD             R1, R0, #0x400
LDR             R0, =0xC80C
VSTR            S19, [R1,#0x78]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x19000
ADD             R1, R1, #0xC90
STRB            R7, [R1]
LDR             R1, [R4,#8]
STRB            R8, [R1,#0x4B4]
LDR             R1, [R4,#8]
STRB            R7, [R1,#0xC]
STRB            R7, [R0,R4]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x288]
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x28C]
BLX             R1
VMOV.F32        S30, S16
VLDR            S21, =0.00097656
VLDR            S18, =6.2832
VLDR            S26, =0.8
VLDR            S27, =0.71111
VLDR            S25, =40.0
VLDR            S28, =-1.0
VLDR            S29, =1.0
MOV             R5, #0
LDRB            R1, [R10]
RSB             R0, R5, R5,LSL#4
LDR             R2, =0x21218
ADD             R3, R0, R5,LSL#5
LDR             R0, [R4,#4]
RSB             R12, R5, R5,LSL#3
CMP             R5, R1
ADD             R1, R2, R12,LSL#3
ADD             R11, R9, R3,LSL#2
ADD             R7, R0, R1
ADD             R0, R0, R11
BGE             loc_23866C
ADD             R1, R4, R5
ADD             R1, R1, #0xC800
ADD             R1, R1, #0xD
LDR             R2, [R0,#0xA8]
LDRB            R1, [R1]
CMP             R2, #0
ADD             R3, R1, R1,LSL#2
LDR             R1, =unk_68D70A
ADD             R6, R1, R3,LSL#2
BNE             loc_237F9C
LDR             R1, [R0]
LDR             R1, [R1,#0x48]
BLX             R1
CMP             R0, #0
BEQ             loc_237F9C
LDR             R0, [R4,#4]
MOV             R1, #0x3800
ADD             R0, R0, R11
BL              sub_543494
LDR             R0, [R4,#4]
VMOV.F32        S0, S30
MOV             R3, #0
LDRSH           R1, [R6,#8]
ADD             R0, R0, R11
MOV             R2, R3
BL              sub_29ADA8
ADD             R1, R4, R5,LSL#7
ADD             R0, R7, #0x28 ; '('
ADD             R8, R1, #0xC
STR             R0, [SP,#0x128+var_124]
MOV             R0, R8
STR             R1, [SP,#0x128+var_88]
BL              sub_5A26D0
LDR             R0, [SP,#0x128+var_124]
LDR             R12, =0x40490FDB
VLDM            R0, {S0-S2}
ADD             R0, R8, #0x1C
ADD             R8, R8, #4
MOV             LR, R12
VSTM            R0, {S0-S2}
VSTM            R8, {S0-S2}
LDR             R0, [R4,#4]
LDRSH           R1, [R6]
LDRSH           R3, [R6,#4]
LDR             R0, [R0,#0x474]
VMOV            S2, R3
CMP             R0, R12
MOVGT           R2, #0xFFFFFFFF
MOVLE           R2, #1
LDR             R0, [R4,#4]
MUL             R1, R1, R2
LDRSH           R2, [R6,#2]
VCVT.F32.S32    S2, S2
VMOV            S1, R1
VMOV            S0, R2
ADD             R0, R0, #0x108
VLDM            R0!, {S5}
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VLDM            R0, {S3-S4}
VADD.F32        S1, S5, S1
VADD.F32        S3, S3, S0
VADD.F32        S0, S4, S2
VSTR            S1, [SP,#0x128+var_74]
VSTR            S3, [SP,#0x128+var_70]
VSTR            S0, [SP,#0x128+var_6C]
B               loc_238094
DCFS 0.0
DCFS 30.0
DCFS -100.0
DCFS 410.0
DCFS 600.0
DCD off_6D1648
DCD byte_68DBBD
DCD 0x19C98
DCFS 2.0
DCFS 10.0
DCD 0xC80C
DCFS 0.00097656
DCFS 6.2832
DCFS 0.8
DCFS 0.71111
DCFS 40.0
DCFS -1.0
DCFS 1.0
DCD 0x21218
DCD unk_68D70A
DCD 0x40490FDB
LDRSH           R2, [R6]
LDR             R0, [R4,#4]
LDR             R3, =0x88888889
VMOV            S0, R2
MOV             R2, #0
LDR             R1, [R0,#0x474]
LDR             R12, =0x19C70
CMP             R1, LR
VCVT.F32.S32    S0, S0
MOVGT           R1, #0xFFFFFFFF
MOVLE           R1, #1
VCVT.S32.F32    S0, S0
VMOV            R8, S0
SXTH            R8, R8
MUL             R1, R1, R8
ADD             R8, R1, #0x3C ; '<'
LDR             R1, =0x40490FDB
SMLAL           R2, R8, R3, R8
MOV             R2, R8,ASR#3
SUB             R2, R2, R8,ASR#31
ADD             R2, R12, R2,LSL#2
ADD             R0, R0, R2
VLDR            S1, [R0]
VADD.F32        S0, S1, S3
VSTR            S0, [SP,#0x128+var_70]
VLDR            S16, [R7,#0x18]
VMOV            R0, S16
CMP             R0, R1
MOVGT           R0, R1
BLE             loc_23811C
VSUB.F32        S16, S16, S18
VMOV            R1, S16
CMP             R1, R0
BGT             loc_23810C
LDR             R1, =0xC0490FDB
VMOV            R0, S16
CMP             R0, R1
MOVHI           R0, R1
BLS             loc_238140
VADD.F32        S16, S16, S18
VMOV            R1, S16
CMP             R1, R0
BHI             loc_238130
ADD             R0, R5, R5,LSL#2
ADD             R0, R0, R5,LSL#3
ADD             R0, R4, R0,LSL#2
ADD             R8, R0, #0x5000
ADD             R8, R8, #0xC
STR             R0, [SP,#0x128+var_120]
MOV             R0, R8
STR             R8, [SP,#0x128+var_F4]
BL              sub_5A18EC
VSTR            S16, [R8,#0xC]
VSTR            S16, [R8,#4]
LDRSH           R0, [R6,#0x10]
LDR             R1, =0x40490FDB
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S18
VMUL.F32        S17, S0, S21
VSUB.F32        S0, S17, S16
VMOV            R0, S0
CMP             R0, R1
MOVGT           R0, R1
BLE             loc_2381AC
VSUB.F32        S17, S17, S18
VSUB.F32        S0, S17, S16
VMOV            R1, S0
CMP             R1, R0
BGT             loc_238198
VSUB.F32        S0, S17, S16
LDR             R0, =0xC0490FDB
VMOV            R1, S0
CMP             R1, R0
BLS             loc_2381D4
VADD.F32        S17, S17, S18
VSUB.F32        S0, S17, S16
VMOV            R1, S0
CMP             R1, R0
BHI             loc_2381C0
ADD             R0, R5, R5,LSL#1
ADD             R0, R0, R5,LSL#3
ADD             R0, R4, R0,LSL#3
ADD             R8, R0, #0x7000
ADD             R0, R7, #0x1C
ADD             R8, R8, #0x8C
STR             R0, [SP,#0x128+var_124]
MOV             R0, R8
BL              sub_5A26D0
LDR             R0, [SP,#0x128+var_124]
ADD             R1, R8, #0x1C
VLDM            R0, {S0-S1}
LDR             R0, [R0,#8]
VSTM            R1, {S0-S1}
ADD             R1, R8, #4
STR             R0, [R8,#0x24]
VSTM            R1, {S0-S1}
STR             R0, [R8,#0xC]
LDRSH           R0, [R6,#0xE]
LDRSH           R1, [R6,#0xC]
VSTR            S19, [SP,#0x128+var_7C]
VMOV            S1, R0
VMOV            S0, R1
ADD             R0, SP, #0x128+var_84
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSTM            R0, {S0-S1}
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x4A8]
CMP             R0, #2
BNE             loc_2385F8
LDR             R0, =unk_68D002
RSB             R1, R5, R5,LSL#4
ADD             R0, R0, R1,LSL#1
LDRSH           R1, [R0]
CMN             R1, #0x30 ; '0'
BGT             loc_2385F8
LDRSH           R2, [R0,#0x16]
LDRSH           R1, [R0,#0x18]
VMOV.F32        S1, S19
RSB             R2, R2, #0
RSB             R1, R1, #0
VMOV            S0, R2
VMOV            S2, R1
MOV             R2, #0x168
VMOV.F32        S23, S1
MOV             R3, #0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S2, S2
VMUL.F32        S0, S0, S26
VMUL.F32        S2, S2, S26
VSTR            S0, [SP,#0x128+var_10C]
VSTR            S2, [SP,#0x128+var_108]
VSTR            S1, [SP,#0x128+var_104]
LDRH            R0, [R0,#0x1A]
LDR             R1, [R4,#4]
SMULBB          R0, R0, R2
ADD             R2, R1, #0x8000
VLDR            S2, [R2,#0x328]
MOV             R1, R0,ASR#31
STR             R3, [SP,#0x128+var_68]
ADD             R0, R0, R1,LSR#22
LDR             R1, =0x47800000
MOV             R0, R0,ASR#10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VADD.F32        S0, S0, S2
VMOV.F32        S2, S23
VMUL.F32        S0, S0, S27
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
MOVCC           R0, #1
MOVCS           R0, #0
STR             R0, [SP,#0x128+var_FC]
VMOV            R0, S0
CMP             R0, R1
VLDRGE          S3, =65536.0
BLT             loc_238320
VSUB.F32        S0, S0, S3
VMOV            R0, S0
CMP             R0, R1
BGE             loc_238310
VCVT.U32.F32    S4, S1
VCVT.U32.F32    S5, S2
VCVT.U32.F32    S3, S0
CMP             R3, #0
VMOV            R2, S4
VMOV            R0, S5
VMOV            R1, S3
UXTH            R3, R2
VMOV            S9, R3
UXTH            R12, R0
VMOV            S10, R12
UXTH            LR, R1
VMOV            S11, LR
AND             R0, R3, #0xFF
VCVT.F32.U32    S9, S9
LDR             R3, =flt_697140
VCVT.F32.U32    S10, S10
AND             R1, R12, #0xFF
VCVT.F32.U32    S11, S11
ADD             R0, R3, R0,LSL#4
AND             R2, LR, #0xFF
VLDR            S4, [R0]
VLDR            S15, [R0,#0xC]
ADD             R0, R0, #4
VSUB.F32        S1, S1, S9
VLDM            R0, {S5-S6}
VSUB.F32        S2, S2, S10
ADD             R1, R3, R1,LSL#4
VSUB.F32        S0, S0, S11
ADD             R2, R3, R2,LSL#4
VLDR            S3, [R1]
VLDR            S22, [R1,#8]
LDR             R0, [SP,#0x128+var_68]
VLDR            S16, [R2,#0xC]
VMLA.F32        S4, S1, S6
VLDM            R2, {S12-S14}
VMLA.F32        S3, S2, S22
VMLA.F32        S5, S1, S15
VLDR            S7, [R1,#4]
VLDR            S8, [R1,#0xC]
VMLA.F32        S12, S0, S14
VMLA.F32        S13, S0, S16
VMLA.F32        S7, S2, S8
ADD             R1, SP, #0x128+var_C4
VNEGNE.F32      S4, S4
CMP             R0, #0
LDR             R0, [SP,#0x128+var_FC]
VNEGNE.F32      S3, S3
CMP             R0, #0
VNEGNE.F32      S12, S12
VMUL.F32        S1, S4, S13
VMUL.F32        S2, S5, S13
VMUL.F32        S8, S13, S7
MOV             R0, #0
VMUL.F32        S0, S5, S12
VMUL.F32        S10, S4, S12
VMUL.F32        S9, S12, S7
VMUL.F32        S5, S5, S7
VMUL.F32        S4, S4, S7
VNEG.F32        S7, S3
VSTR            S8, [SP,#0x128+var_E8]
VMOV.F32        S11, S0
VMOV.F32        S6, S10
VSTR            S9, [SP,#0x128+var_D8]
VNMLS.F32       S11, S1, S3
VNMLS.F32       S1, S0, S3
VMLA.F32        S6, S2, S3
VMLA.F32        S2, S10, S3
VSTR            S11, [SP,#0x128+var_E4]
VSTR            S1, [SP,#0x128+var_D0]
VSTR            S6, [SP,#0x128+var_E0]
VSTR            S2, [SP,#0x128+var_D4]
VSTR            S7, [SP,#0x128+var_C8]
VSTM            R1, {S4-S5}
STR             R0, [SP,#0x128+var_DC]
ADD             R2, SP, #0x128+var_10C
STR             R0, [SP,#0x128+var_CC]
STR             R0, [SP,#0x128+var_BC]
ADD             R1, SP, #0x128+var_E8
MOV             R0, R2
BL              sub_1169FC
LDR             R0, [R4,#4]
VMOV.F32        S16, S23
ADD             R0, R0, #0x108
VLDR            S0, [R0]
VLDR            S2, [R0,#4]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S16
VADD.F32        S2, S2, S25
VADD.F32        S1, S1, S16
ADD             R0, SP, #0x128+var_10C
VLDM            R0, {S3-S5}
LDR             R0, [SP,#0x128+var_88]
VADD.F32        S22, S0, S3
VADD.F32        S23, S2, S4
VADD.F32        S24, S1, S5
ADD             R0, R0, #0xC
STR             R0, [SP,#0x128+var_128]
BL              sub_5A26D0
LDR             R0, [SP,#0x128+var_128]
ADD             R1, R7, #0x2C ; ','
ADD             R0, R0, #0x1C
VSTM            R0, {S22-S24}
LDR             R0, [SP,#0x128+var_128]
ADD             R0, R0, #4
VSTM            R0, {S22-S24}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x108
VLDR            S1, [R0]
VLDR            S2, [R0,#8]
VLDR            S0, [R0,#4]
VADD.F32        S1, S1, S16
VADD.F32        S3, S2, S16
VADD.F32        S0, S0, S25
ADD             R0, SP, #0x128+var_108
VLDR            S2, [SP,#0x128+var_10C]
VLDM            R0, {S4-S5}
LDR             R0, =dword_6E1330
VADD.F32        S2, S1, S2
VADD.F32        S1, S3, S5
VADD.F32        S0, S0, S4
VSTR            S2, [R7,#0x28]
VSTM            R1, {S0-S1}
LDR             R0, [R0]
TST             R0, #1
BNE             loc_238544
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_238544
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
STR             R0, [SP,#0x128+var_128]
MOV             R0, R8
BL              sub_5A26D0
LDR             R0, [SP,#0x128+var_128]
MOV             R1, R8
LDRD            R2, R3, [R0]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STRD            R2, R3, [R1,#0x1C]
STR             R0, [R8,#0x24]
STRD            R2, R3, [R8,#4]
STR             R0, [R8,#0xC]
LDR             R0, [R4,#4]
MOV             R1, #0x3800
ADD             R0, R0, R11
BL              sub_543494
LDR             R0, [R4,#4]
VMOV.F32        S0, S30
MOV             R3, #0
LDRSH           R1, [R6,#8]
ADD             R0, R0, R11
MOV             R2, R3
BL              sub_29ADA8
LDRH            R0, [R6,#0xA]
LDR             R1, =0x40490FDB
CMP             R0, #0
LDR             R0, [R4,#4]
VMOVNE.F32      S0, S28
VMOVEQ.F32      S0, S29
LDR             R0, [R0,#0x474]
CMP             R0, R1
VMOVGT.F32      S1, S28
VMOVLE.F32      S1, S29
VMUL.F32        S0, S0, S1
VSTR            S0, [R7,#4]
B               loc_23862C
DCD 0x88888889
DCD 0x19C70
DCD 0xC0490FDB
DCD unk_68D002
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
DCD dword_6E1330
DCD flt_711FE4
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
VLDR            S1, =5.0
MOV             R0, R0,LSR#16
VMOV            S0, R0
LDR             R0, [SP,#0x128+var_120]
MOV             R1, #0
ADD             R0, R0, #0xA400
ADD             R0, R0, #0x38C
VCVT.F32.U32    S0, S0
VADD.F32        S0, S0, S1
BL              sub_5A1924
LDR             R0, [SP,#0x128+var_88]
VMOV.F32        S0, S20
ADD             R1, SP, #0x128+var_74
ADD             R0, R0, #0xC
BL              sub_5A1E58
VMOV.F32        S1, S20
VMOV.F32        S0, S17
LDR             R0, [SP,#0x128+var_F4]
BL              sub_5A1198
VMOV.F32        S0, S20
ADD             R1, SP, #0x128+var_84
MOV             R0, R8
BL              sub_5A1E58
NOP
NOP
B               loc_23867C
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_237F04
ADD             SP, SP, #0xC4
VPOP            {D8-D15}
POP             {R4-R11,PC}
