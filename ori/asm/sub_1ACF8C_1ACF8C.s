PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R2, #0x460
LDR             R1, =unk_68DBD0
VPUSH           {D8-D12}
SUB             SP, SP, #0x490
ADD             R5, SP, #0x4D0+var_4C0
MOV             R0, R5
BL              sub_127EB8
LDR             R1, [R4,#8]
VLDR            S21, =1.0
LDR             R8, =off_6D1648
ADD             R0, R1, #0x400
ADD             R0, R0, #0xCC
ADD             R7, R4, #0x3800
LDRSH           R2, [R0,#2]
LDRSH           R0, [R0]
VMOV            S1, R2
VMOV            S0, R0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S21
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1AD810
LDRSH           R1, [R1]
MOV             R0, R8
VLDR            S18, =10.0
LDR             R0, [R0]
CMP             R1, #0x2E ; '.'
VLDR            S20, =0.0
CMPNE           R1, #0x31 ; '1'
BEQ             loc_1AD0A8
VMOV.F32        S16, S20
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2EC
BL              sub_5A18EC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xB20
BL              sub_5A18EC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x354
BL              sub_5A18EC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x388
BL              sub_5A18EC
LDR             R0, [R4,#8]
VLDR            S1, =30.0
VLDR            S0, =15.0
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xC8]
CMP             R1, #0x1E
BEQ             loc_1AD1B4
BGT             loc_1AD168
CMP             R1, #3
BEQ             loc_1AD1AC
BGT             loc_1AD154
CMP             R1, #0
LDRHEQ          R2, [R0,#0xCA]
BEQ             loc_1AD1AC
CMP             R1, #1
LDRHEQ          R2, [R0,#0xCA]
BEQ             loc_1AD1AC
B               loc_1AD1B8
NOP
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VLDR            S1, [R7,#0x21C]
LDR             R0, [R8]
VSUB.F32        S16, S0, S1
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VLDR            S1, [R7,#0x21C]
LDR             R0, [R8]
VSUB.F32        S17, S0, S1
LDR             R0, [R0,#0xBC]
VLDR            S2, =100.0
VMOV.F32        S1, S16
VMOV.F32        S0, S17
VMOV.F32        S3, S2
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E322C
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VLDR            S1, [R7,#0x21C]
LDR             R0, [R8]
VSUB.F32        S16, S1, S0
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
VLDR            S1, [R7,#0x21C]
LDR             R0, [R8]
VSUB.F32        S17, S1, S0
LDR             R0, [R0,#0xBC]
VMOV.F32        S3, S20
VMOV.F32        S2, S16
VMOV.F32        S1, S17
VMOV.F32        S0, S18
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
VMOV.F32        S4, S3
BL              sub_5A1C28
NOP
NOP
B               loc_1AD810
CMP             R1, #0x11
BEQ             loc_1AD198
CMP             R1, #0x1A
BNE             loc_1AD1B8
B               loc_1AD1AC
CMP             R1, #0x27 ; '''
BEQ             loc_1AD1AC
BGT             loc_1AD188
CMP             R1, #0x1F
BEQ             loc_1AD1AC
CMP             R1, #0x20 ; ' '
VMOVEQ.F32      S16, S1
B               loc_1AD1B8
CMP             R1, #0x28 ; '('
CMPNE           R1, #0x29 ; ')'
BNE             loc_1AD1B8
B               loc_1AD1AC
LDRH            R2, [R0,#0xCA]
CMP             R2, #0
BEQ             loc_1AD1B4
CMP             R2, #1
BEQ             loc_1AD1B4
VMOV.F32        S16, S0
B               loc_1AD1B8
VMOV.F32        S16, S18
CMP             R1, #4
MOV             R2, R1
SUBHI           R2, R1, #0xC
UXTHHI          R2, R2
RSB             R2, R2, R2,LSL#3
ADD             R2, R5, R2,LSL#2
LDRB            R2, [R2,#0x18]
CMP             R2, #0
BEQ             loc_1AD29C
CMP             R1, #4
LDRH            R0, [R0,#0xCA]
SUBHI           R1, R1, #0xC
UXTHHI          R1, R1
CMP             R0, #4
SUBHI           R0, R0, #0xC
RSB             R1, R1, R1,LSL#3
UXTHHI          R0, R0
ADD             R1, R5, R1,LSL#2
RSB             R0, R0, R0,LSL#3
VLDR            S0, [R1]
ADD             R0, R5, R0,LSL#2
VLDR            S1, [R0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVEQ.F32      S0, S21
BEQ             loc_1AD298
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0x16800
LDR             R0, [R4,#8]
ADD             R2, R2, #0x1B8
ADD             R1, R0, #0x400
VLDR            S1, [R2,#4]
LDRH            R0, [R1,#0xC8]
CMP             R0, #4
SUBHI           R3, R0, #0xC
MOVLS           R3, R0
UXTHHI          R3, R3
SUBHI           R0, R0, #0xC
RSB             R3, R3, R3,LSL#3
UXTHHI          R0, R0
ADD             R2, R5, R3,LSL#2
RSB             R0, R0, R0,LSL#3
VLDR            S0, [R2]
ADD             R0, R5, R0,LSL#2
VSUB.F32        S1, S0, S1
VLDR            S0, [R0]
LDRH            R0, [R1,#0xCA]
CMP             R0, #4
SUBHI           R0, R0, #0xC
UXTHHI          R0, R0
RSB             R0, R0, R0,LSL#3
ADD             R0, R5, R0,LSL#2
VLDR            S2, [R0]
VSUB.F32        S2, S0, S2
VDIV.F32        S0, S1, S2
VMUL.F32        S16, S0, S16
LDR             R1, [R4,#8]
LDR             R0, =0x4C8
LDRH            R0, [R0,R1]
CMP             R0, #4
MOV             R2, R0
SUBHI           R2, R0, #0xC
UXTHHI          R2, R2
RSB             R2, R2, R2,LSL#3
ADD             R2, R5, R2,LSL#2
VLDR            S23, [R2]
SUBHI           R2, R0, #0xC
MOVLS           R2, R0
UXTHHI          R2, R2
RSB             R2, R2, R2,LSL#3
ADD             R2, R5, R2,LSL#2
VLDR            S22, [R2,#4]
SUBHI           R2, R0, #0xC
MOVLS           R2, R0
UXTHHI          R2, R2
RSB             R2, R2, R2,LSL#3
ADD             R2, R5, R2,LSL#2
VLDR            S18, [R2,#8]
SUBHI           R2, R0, #0xC
MOVLS           R2, R0
UXTHHI          R2, R2
RSB             R2, R2, R2,LSL#3
ADD             R2, R5, R2,LSL#2
VLDR            S17, [R2,#0xC]
SUBHI           R2, R0, #0xC
MOVLS           R2, R0
UXTHHI          R2, R2
RSB             R2, R2, R2,LSL#3
ADD             R2, R5, R2,LSL#2
VLDR            S25, [R2,#0x10]
SUBHI           R2, R0, #0xC
MOVLS           R2, R0
UXTHHI          R2, R2
CMP             R0, #0x27 ; '''
RSB             R2, R2, R2,LSL#3
ADD             R0, R5, R2,LSL#2
VLDR            S24, [R0,#0x14]
BNE             loc_1AD384
B               loc_1AD36C
DCD unk_68DBD0
DCFS 1.0
DCD off_6D1648
DCFS 10.0
DCFS 0.0
DCFS 30.0
DCFS 15.0
DCFS 100.0
DCD 0x4C8
LDR             R0, [R4,#4]
LDR             R2, =0x40490FDB
LDR             R0, [R0,#0x474]
CMP             R0, R2
VNEGGT.F32      S18, S18
VNEGGT.F32      S17, S17
LDRSH           R0, [R1]
CMP             R0, #0x1A
CMPNE           R0, #0x1F
BEQ             loc_1AD568
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2B4]
VLDR            S1, [R1,#0x108]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1AD440
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2B8]
VLDR            S1, [R1,#0x108]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1AD440
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R1, R0
LDR             R0, [R4,#4]
VLDR            S0, [R1,#0x24]
VLDR            S1, [R0,#0x108]
VLDR            S2, [R0,#0x124]
LDR             R0, [R8]
VSUB.F32        S1, S1, S2
VSUB.F32        S19, S1, S0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2EC
MOV             R5, R0
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xB20
MOV             R5, R0
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2BC]
VLDR            S1, [R1,#0x10C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1AD4E0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2C0]
VLDR            S1, [R1,#0x10C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1AD4E0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
VLDR            S1, [R0,#0x28]
LDR             R0, [R8]
VLDR            S0, [R1,#0x10C]
VSUB.F32        S19, S0, S1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x354
MOV             R5, R0
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x388
MOV             R5, R0
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
BEQ             loc_1AD530
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S23
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S22
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1EC
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0xC8]
CMP             R0, #0x27 ; '''
BEQ             loc_1AD6D4
B               loc_1AD7D8
ADD             R6, R4, #0x3800
ADD             R6, R6, #0x1A8
LDR             R0, [R6]
VLDR            S19, [R0,#0x108]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2B4]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BLE             loc_1AD5A4
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S19, [R0,#0x2B4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2B8]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BCS             loc_1AD5D0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S19, [R0,#0x2B8]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x24]
LDR             R0, [R8]
VSUB.F32        S19, S19, S0
LDR             R0, [R0,#0xBC]
ADD             R5, R0, #0x16800
ADD             R5, R5, #0x2EC
MOV             R0, R5
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R5, R0, #0x16000
ADD             R5, R5, #0xB20
MOV             R0, R5
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
LDR             R0, [R6]
VLDR            S19, [R0,#0x10C]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2BC]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BLE             loc_1AD654
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S19, [R0,#0x2BC]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2C0]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BCS             loc_1AD680
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S19, [R0,#0x2C0]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VSUB.F32        S19, S19, S0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x354
MOV             R5, R0
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x388
MOV             R5, R0
BL              sub_5A18EC
VSTR            S19, [R5,#0xC]
VSTR            S19, [R5,#4]
B               loc_1AD4E0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2B8]
VLDR            S1, [R1,#0x108]
VSUB.F32        S1, S1, S17
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1AD74C
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
VMOV.F32        S0, S17
ADD             R0, R0, #0x14000
VLDR            S2, [R1,#0x108]
VLDR            S1, [R0,#0x2B8]
VSUB.F32        S0, S2, S0
VSUB.F32        S0, S1, S0
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BCS             loc_1AD74C
VSUB.F32        S18, S18, S0
VSUB.F32        S17, S17, S0
VCMPE.F32       S18, S20
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S17, S20
VMOVCS.F32      S18, S20
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S17, S20
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0xC8]
CMP             R0, #0x27 ; '''
BNE             loc_1AD7D8
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
ADD             R0, R0, #0x14000
VLDR            S0, [R0,#0x2B4]
VLDR            S1, [R1,#0x108]
VSUB.F32        S1, S1, S17
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1AD7D8
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
VMOV.F32        S0, S17
ADD             R0, R0, #0x14000
VLDR            S2, [R1,#0x108]
VLDR            S1, [R0,#0x2B4]
VSUB.F32        S0, S2, S0
VSUB.F32        S0, S1, S0
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BLE             loc_1AD7D8
VSUB.F32        S18, S18, S0
VSUB.F32        S17, S17, S0
VCMPE.F32       S18, S20
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S17, S20
VMOVLE.F32      S18, S20
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S17, S20
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VMOV.F32        S2, S17
VMOV.F32        S1, S18
VMOV.F32        S4, S24
VMOV.F32        S3, S25
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
BL              sub_45AA4C
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x2E ; '.'
CMPNE           R0, #0x31 ; '1'
BEQ             loc_1AD830
CMP             R0, #0x2F ; '/'
CMPNE           R0, #0x30 ; '0'
BNE             loc_1AD8EC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R6, R0
ADD             R5, R0, #0x24 ; '$'
VMOV.F32        S0, S21
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2EC
BL              sub_5A176C
VLDR            S1, [R7,#0x21C]
ADD             R0, R6, #0x16800
ADD             R0, R0, #0x388
VADD.F32        S0, S0, S1
VSTR            S0, [R5]
VMOV.F32        S0, S21
BL              sub_5A176C
LDR             R0, [R4,#4]
LDR             R1, =0x14290
ADD             R7, SP, #0x4D0+var_60
MOV             R2, R5
VLDR            S1, [R0,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#4]
LDRSB           R0, [R1,R6]
STR             R0, [SP,#0x4D0+var_4D0]
SUB             R0, R1, #1
MOV             R1, R7
LDRB            R3, [R0,R6]
MOV             R0, R6
BL              sub_2AE650
LDR             R0, [R6]
MOV             R2, R7
ADD             R1, SP, #0x4D0+var_4CC
LDR             R3, [R0,#0x21C]
MOV             R0, R6
BLX             R3
VLDR            S0, [R5]
VLDR            S1, [SP,#0x4D0+var_4CC]
VADD.F32        S0, S0, S1
VSTR            S0, [R5]
VLDR            S0, [R5,#4]
VLDR            S1, [SP,#0x4D0+var_4C8]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#4]
VLDR            S0, [R5,#8]
VLDR            S1, [SP,#0x4D0+var_4C4]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#8]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_1AD91C
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
BL              sub_45AA4C
ADD             SP, SP, #0x490
VPOP            {D8-D12}
POP             {R4-R8,PC}
