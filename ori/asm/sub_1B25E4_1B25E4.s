PUSH            {R4-R12,LR}
MOV             R4, R0
MOV             R1, #0
MOV             R6, #1
LDR             R9, =byte_68DBBC
VPUSH           {D8-D11}
LDR             R0, [R0,#8]
VLDR            S18, =1.0
VLDR            S20, =0.5
VLDR            S19, =0.0
VSTR            S18, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S18, [R0,#0x364]
LDR             R2, [R4,#8]
LDRB            R0, [R9]
ADD             R2, R2, #0x400
SUB             R0, R0, #1
STRH            R0, [R2,#0xD2]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R1, [R0,#0xD4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R6, [R0,#0xC8]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R6, [R0,#0xCA]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R1, [R0]
STRH            R6, [R0,#2]
STRB            R1, [R0,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
VLDRNE          S17, =15.0
BEQ             loc_1B26EC
LDR             R5, =off_6D1648
VLDR            S21, =-100.0
VLDR            S16, =750.0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S21
VMOV.F32        S3, S21
VMOV.F32        S2, S19
VMOV.F32        S1, S19
VMOV.F32        S0, S17
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
LDR             R1, [R4,#8]
MOV             R0, #1
STRH            R0, [R1]
LDR             R1, [R4,#8]
STRH            R0, [R1,#2]
LDR             R1, [R4,#8]
STRB            R0, [R1,#4]
LDRB            R0, [R9]
CMP             R0, #0
BEQ             loc_1B274C
LDRB            R2, [R9]
MOV             R0, #0
MOV             R3, #0x368
MOV             R1, R0
LDR             R12, [R4,#8]
ADD             R5, R3, R0,LSL#1
SUBS            R2, R2, #1
STRH            R1, [R12,R5]
LDR             R12, [R4,#8]
ADD             R5, R0, #0x400
ADD             R5, R5, #0xD6
ADD             R0, R0, #1
STRB            R1, [R12,R5]
BNE             loc_1B2724
VMOV.F32        S16, S19
LDRB            R0, [R9]
LDR             R10, =0x19C98
LDR             R11, =0x21218
MOV             R5, #0
MOV             R7, R0,LSL#1
VMOV.F32        S17, S16
RSB             R0, R5, R5,LSL#4
ADD             R1, R0, R5,LSL#5
LDR             R0, [R4,#4]
ADD             R1, R10, R1,LSL#2
ADD             R6, R0, R1
RSB             R1, R5, R5,LSL#3
ADD             R1, R11, R1,LSL#3
ADD             R0, R0, R1
BL              sub_234B48
CMP             R7, R5
NOP
BLE             loc_1B281C
LDRB            R0, [R9]
LDR             R1, =unk_68D002
CMP             R5, R0
ANDGE           R0, R0, #0xFF
MOVLT           R0, R5
SUBGE           R0, R5, R0
RSB             R0, R0, R0,LSL#4
ADD             R8, R1, R0,LSL#1
LDR             R1, =0x3015
MOV             R0, R6
BL              sub_543494
LDRB            R0, [R9]
CMP             R5, R0
LDR             R0, [R6]
MOVLT           R1, #1
MOVGE           R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDRSH           R0, [R8,#4]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVCC          S0, R0
VCVTCC.F32.S32  S17, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT          S0, R0
VCVTGT.F32.S32  S16, S0
B               loc_1B283C
LDR             R1, =0x3046
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R5, R5, #1
CMP             R5, #0x9F
BLT             loc_1B2768
LDR             R5, [R4,#4]
MOV             R1, #8
ADD             R5, R5, #0x21000
ADD             R5, R5, #0x15C
MOV             R0, R5
BL              sub_543494
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x38]
MOV             R0, R5
BLX             R3
LDR             R0, [R5]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#4]
ADD             R5, R0, #0x23000
ADD             R5, R5, #0x4E0
VSTR            S19, [R5,#0x30]
BL              sub_4635D8
LDR             R1, [R0]
STR             R1, [R5,#0x10]
LDR             R1, [R0,#4]
STR             R1, [R5,#0x14]
LDR             R0, [R0,#8]
STR             R0, [R5,#0x18]
BL              sub_4635D8
LDR             R1, [R0]
VLDR            S0, =0.77
VLDR            S21, =-0.35
STR             R1, [R5,#0x1C]
LDR             R1, [R0,#4]
VMOV.F32        S3, S21
VMOV.F32        S1, S20
STR             R1, [R5,#0x20]
LDR             R0, [R0,#8]
VLDR            S2, =10.0
STR             R0, [R5,#0x24]
VSTR            S0, [R5,#4]
VSTR            S0, [R5,#8]
VSTR            S18, [R5,#0xC]
LDR             R0, [R4,#4]
VLDR            S0, =4.2
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R6, R4, #0x1000
ADD             R0, R0, #0x800
VSTR            S21, [R0,#0x30]
LDR             R0, [R6,#0x204]
CMP             R0, #0
BNE             loc_1B2A98
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x208
STR             R0, [R6,#0x204]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6,#0x204]
STR             R0, [R1,#4]
LDR             R0, [R6,#0x204]
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R1, [R6,#0x204]
LDR             R0, [R1,#0x648]
BIC             R0, R0, #1
STR             R0, [R1,#0x648]
LDR             R2, [R6,#0x204]
BIC             R0, R0, #2
BIC             R1, R0, #4
BIC             R3, R1, #8
STR             R0, [R2,#0x648]
LDR             R0, [R6,#0x204]
BIC             R12, R3, #0x10
STR             R1, [R0,#0x648]
BIC             R0, R12, #0x20 ; ' '
ORR             R1, R0, #0x40 ; '@'
B               loc_1B29D4
DCFS 1.0
DCD byte_68DBBC
DCFS 0.5
DCFS 0.0
DCFS 15.0
DCFS -100.0
DCFS 750.0
DCD off_6D1648
DCD 0x19C98
DCD 0x21218
DCD unk_68D002
DCD 0x3015
DCD 0x3046
DCFS 0.77
DCFS -0.35
DCFS 10.0
DCFS 4.2
LDR             R2, [R6,#0x204]
VLDR            S22, =2.0
VLDR            S21, =-1.0
VMOV.F32        S1, S19
STR             R3, [R2,#0x648]
LDR             R2, [R6,#0x204]
BIC             R3, R1, #0x80
VMOV.F32        S4, S22
VMOV.F32        S3, S22
STR             R12, [R2,#0x648]
LDR             R2, [R6,#0x204]
VMOV.F32        S2, S22
VMOV.F32        S0, S21
STR             R0, [R2,#0x648]
LDR             R0, [R6,#0x204]
STR             R1, [R0,#0x648]
LDR             R0, [R6,#0x204]
STR             R3, [R0,#0x648]
LDR             R2, [R6,#0x204]
LDR             R1, [R2,#0x640]
LDR             R0, [R2,#0x644]
ORR             R1, R1, #0xE00000
STR             R1, [R2,#0x640]
ORR             R2, R1, #0x7000000
LDR             R1, [R6,#0x204]
STR             R2, [R1,#0x640]!
STR             R0, [R1,#4]
LDR             R0, [R6,#0x204]
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
LDR             R0, [R6,#0x204]
VMOV.F32        S4, S22
VMOV.F32        S3, S22
VMOV.F32        S2, S22
LDR             R1, [R0]
VMOV.F32        S1, S18
VMOV.F32        S0, S21
LDR             R1, [R1,#0x284]
BLX             R1
LDR             R0, [R6,#0x204]
VMOV.F32        S4, S22
VMOV.F32        S3, S22
VMOV.F32        S2, S22
LDR             R1, [R0]
VMOV.F32        S1, S18
VMOV.F32        S0, S21
LDR             R1, [R1,#0x2D0]
BLX             R1
LDR             R0, [R4,#8]
ADD             R5, R0, #0x500
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x7E ; '~'
BL              sub_546DB0
MOV             R1, #0x12C
MOV             R10, #0
MUL             R0, R0, R1
MOV             R11, #1
LDR             R8, =unk_68D002
ADD             R7, R4, #0xC
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VLDR            S20, =75.0
VADDNE.F32      S0, S0, S18
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R5,#2]
STRB            R10, [R5,#4]
LDR             R0, [R4,#8]
MOV             R5, R10
STRB            R10, [R0,#0x4B4]
LDR             R0, [R4,#8]
STRB            R11, [R0,#0xC]
VSTR            S20, [R4,#0xC]
LDRB            R0, [R9]
CMP             R0, #0
BLS             loc_1B2B60
RSB             R0, R5, R5,LSL#3
RSB             R1, R5, R5,LSL#4
ADD             R0, R7, R0,LSL#2
VLDR            S0, [R7]
ADD             R0, R0, #4
ADD             R1, R8, R1,LSL#1
BL              sub_1B707C
LDRB            R0, [R9]
ADD             R1, R5, #1
UXTH            R5, R1
CMP             R0, R5
BHI             loc_1B2B30
VSUB.F32        S0, S16, S17
VSTR            S16, [R6,#0x194]
ADD             R1, R6, #0x1A8
LDR             R0, =0x11B4
VSTR            S0, [R6,#0x190]
VSTR            S19, [R6,#0x198]
VSTR            S19, [R6,#0x19C]
VSTR            S19, [R6,#0x1A0]
VSTR            S19, [R6,#0x1A4]
VSTM            R1, {S19-S20}
VSTR            S19, [R6,#0x1B0]
STRH            R10, [R0,R4]
VSTR            S19, [R6,#0x1B8]
VSTR            S19, [R6,#0x1BC]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R6,#0x1C8]
ADD             R0, R6, #0x1C0
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R6,#0x1D4]
ADD             R0, R6, #0x1CC
STM             R0, {R1,R2}
ADD             R0, R4, #0x1000
VSTR            S19, [R6,#0x1D8]
VSTR            S19, [R6,#0x1DC]
ADD             R0, R0, #0x1E4
VSTR            S19, [R6,#0x1E0]
STRH            R10, [R0]
STRH            R11, [R0,#2]
STRB            R10, [R0,#4]
ADD             R1, R6, #0x1EC
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1F4
VSTM            R1, {S18-S19}
STRH            R10, [R0]
STRH            R11, [R0,#2]
STRB            R10, [R0,#4]
LDR             R0, =0x3978
VSTR            S18, [R6,#0x1FC]
VSTR            S18, [R6,#0x200]
ORR             R1, R0, R0,ASR#9
STR             R10, [R0,R4]
STR             R10, [R1,R4]
BL              sub_4635D8
LDR             R6, [R0,#4]
LDR             R7, [R0]
LDR             R0, [R0,#8]
ADD             R5, R4, #0x3800
LDR             R1, =0x3998
STR             R0, [R5,#0x188]
STR             R6, [R5,#0x184]
STR             R7, [R5,#0x180]
VSTR            S19, [R5,#0x18C]
VSTR            S19, [R5,#0x190]
VSTR            S19, [R5,#0x194]
ADD             R2, R1, #8
STR             R10, [R1,R4]
ADD             R3, R1, #0xC
VSTR            S19, [R5,#0x19C]
ADD             R12, R1, #0x10
STRH            R10, [R2,R4]
STR             R10, [R3,R4]
STR             R10, [R12,R4]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R7, R5, #0x1AC
LDR             R0, =0x39B8
STM             R7, {R1-R3}
STRB            R10, [R0,R4]
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1BC
BL              sub_5A26D0
VSTR            S19, [R5,#0x214]
VSTR            S19, [R5,#0x218]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R5, #0x21C
LDR             R0, [R0,#8]
STR             R0, [R5,#0x224]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R7, R5, #0x228
LDR             R0, =0x3A3C
STM             R7, {R1-R3}
VSTR            S19, [R5,#0x234]
VSTR            S19, [R5,#0x238]
STRB            R10, [R0,R4]
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1B2D08
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1B2D08
LDR             R0, =flt_6E1324
VSTR            S19, [R0]
VSTR            S19, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R1, =flt_6E1324
ADD             R2, R4, #0x3A00
LDRD            R0, R1, [R1]
STRD            R0, R1, [R2,#0x40]
VSTR            S19, [R5,#0x248]
VSTR            S19, [R5,#0x24C]
VSTR            S19, [R5,#0x250]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R6, R5, #0x254
LDR             R0, =0x3A64
STM             R6, {R1-R3}
VSTR            S19, [R5,#0x260]
STRB            R10, [R0,R4]
VSTR            S19, [R5,#0x268]
VSTR            S19, [R5,#0x26C]
BL              sub_4635D8
VLDM            R0, {S0-S2}
ADD             R11, R5, #0x270
VSTR            S19, [R5,#0x27C]
MOV             R9, #0x3A80
VSTM            R11, {S0-S2}
ADD             R8, R4, #0x3A00
ADD             R7, R4, #0x3A00
STRB            R10, [R9,R4]
ADD             R8, R8, #0x81
ADD             R6, R4, #0x3A00
ADD             R7, R7, #0x82
ADD             R1, R4, #0x3800
ADD             R2, R4, #0x3800
ADD             R3, R4, #0x3800
ADD             R12, R4, #0x3000
ADD             R0, R4, #0x3800
ADD             R6, R6, #0x83
STRB            R10, [R8]
ADD             R4, R4, #0x3800
STRB            R10, [R7]
ADD             R1, R1, #0x284
ADD             R2, R2, #0x288
ADD             R3, R3, #0x28C
ADD             R12, R12, #0xA90
ADD             R0, R0, #0x294
ADD             R4, R4, #0x298
STRB            R10, [R6]
B               loc_1B2DEC
DCFS 2.0
DCFS -1.0
DCD dword_6D1F40
DCFS 75.0
DCD 0x11B4
DCD 0x3978
DCD 0x3998
DCD 0x39B8
DCD 0x3A3C
DCD dword_6E1320
DCD flt_6E1324
DCD 0x3A64
STR             R10, [R1]
STR             R10, [R2]
STR             R10, [R3]
STR             R10, [R12]
STR             R10, [R0]
LDR             R0, =dword_6E1340
MOV             R1, #0xFFFFFFFF
STR             R1, [R4]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1B2E64
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1B2E64
LDR             R0, =flt_71203C
ADD             R1, R0, #0x14
VSTM            R0, {S18-S19}
VSTR            S19, [R0,#(flt_712044 - 0x71203C)]
VSTR            S19, [R0,#(flt_712048 - 0x71203C)]
VSTR            S19, [R0,#(flt_71204C - 0x71203C)]
VSTM            R1, {S18-S19}
VSTR            S19, [R0,#(flt_712058 - 0x71203C)]
VSTR            S19, [R0,#(flt_71205C - 0x71203C)]
VSTR            S19, [R0,#(flt_712060 - 0x71203C)]
ADD             R0, R0, #0x28 ; '('
VSTM            R0, {S18-S19}
LDR             R0, =dword_6E1340
NOP
LDR             R0, =flt_71203C
ADD             R9, R5, #0x29C
LDM             R0, {R1-R4,R6-R8,R12}
STM             R9, {R1-R4,R6-R8,R12}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#(flt_712068 - 0x71203C)]
LDM             R1, {R1-R3}
STR             R0, [R5,#0x2C8]
ADD             R5, R5, #0x2BC
STM             R5, {R1-R3}
VPOP            {D8-D11}
POP             {R4-R12,PC}
