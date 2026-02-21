PUSH            {R4-R12,LR}
MOV             R4, R0
MOV             R9, #0
MOV             R11, #1
LDR             R10, =byte_68DBBC
VPUSH           {D8-D10}
LDR             R0, [R0,#8]
VLDR            S16, =1.0
VSTR            S16, [R0,#0x360]
LDR             R0, [R4,#8]
VSTR            S16, [R0,#0x364]
LDR             R1, [R4,#8]
LDRB            R0, [R10]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
STRH            R9, [R0,#0xD4]
LDR             R0, [R4,#8]
STRH            R11, [R0,#2]
LDR             R0, [R4,#8]
STRB            R11, [R0,#4]
LDRB            R0, [R10]
CMP             R0, #0
BEQ             loc_1AC0D8
LDRB            R1, [R10]
MOV             R0, #0
MOV             R3, #0x368
LDR             R2, [R4,#8]
ADD             R12, R3, R0,LSL#1
SUBS            R1, R1, #1
STRH            R9, [R2,R12]
LDR             R2, [R4,#8]
ADD             R12, R0, #0x400
ADD             R12, R12, #0xD6
ADD             R0, R0, #1
STRB            R9, [R2,R12]
BNE             loc_1AC0B0
LDR             R0, [R4,#4]
VLDR            S19, =-0.35
VLDR            S18, =0.5
VLDR            S2, =10.0
LDR             R1, [R0]
VMOV.F32        S3, S19
VMOV.F32        S1, S18
VLDR            S0, =4.2
LDR             R1, [R1,#0x54]
BLX             R1
LDR             R0, [R4,#4]
ADD             R6, R4, #0x1000
VLDR            S17, =0.0
ADD             R0, R0, #0x800
VSTR            S19, [R0,#0x30]
LDR             R0, [R6,#0x204]
CMP             R0, #0
BNE             loc_1AC24C
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x208
STR             R0, [R6,#0x204]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R6,#0x204]
VLDR            S19, =2.0
VLDR            S20, =-1.0
VMOV.F32        S1, S17
STR             R0, [R1,#4]
LDR             R0, [R6,#0x204]
VMOV.F32        S4, S19
VMOV.F32        S3, S19
VMOV.F32        S2, S19
LDRB            R1, [R0,#0xDE]
VMOV.F32        S0, S20
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R0, [R6,#0x204]
LDR             R1, [R0,#0x648]
BIC             R1, R1, #1
STR             R1, [R0,#0x648]
LDR             R2, [R6,#0x204]
BIC             R0, R1, #2
BIC             R1, R0, #4
STR             R0, [R2,#0x648]
LDR             R0, [R6,#0x204]
BIC             R2, R1, #8
BIC             R12, R2, #0x10
BIC             R3, R12, #0x20 ; ' '
STR             R1, [R0,#0x648]
LDR             R0, [R6,#0x204]
ORR             R1, R3, #0x40 ; '@'
STR             R2, [R0,#0x648]
LDR             R0, [R6,#0x204]
BIC             R2, R1, #0x80
STR             R12, [R0,#0x648]
LDR             R0, [R6,#0x204]
STR             R3, [R0,#0x648]
LDR             R0, [R6,#0x204]
STR             R1, [R0,#0x648]
LDR             R0, [R6,#0x204]
STR             R2, [R0,#0x648]
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
VMOV.F32        S4, S19
VMOV.F32        S3, S19
VMOV.F32        S2, S19
LDR             R1, [R0]
VMOV.F32        S1, S16
VMOV.F32        S0, S20
LDR             R1, [R1,#0x284]
BLX             R1
LDR             R0, [R6,#0x204]
VMOV.F32        S4, S19
VMOV.F32        S3, S19
VMOV.F32        S2, S19
LDR             R1, [R0]
VMOV.F32        S1, S16
VMOV.F32        S0, S20
LDR             R1, [R1,#0x2D0]
BLX             R1
LDR             R0, [R4,#8]
ADD             R5, R0, #0x500
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x7E ; '~'
BL              sub_546DB0
MOV             R1, #0x12C
LDR             R8, =unk_68D002
MUL             R0, R0, R1
ADD             R7, R4, #0xC
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
ADD             R1, R4, #4
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S18
VLDR            S18, =75.0
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
STRHLT          R11, [R5,#2]
STRHGE          R0, [R5,#2]
STRB            R9, [R5,#4]
LDR             R0, [R4,#8]
MOV             R5, #0
STRB            R9, [R0,#0x4B4]
LDM             R1, {R1,R2}
ADD             R12, R2, #0x400
LDR             R3, [R1,#0x108]
LDR             R0, [R1,#0x10C]
LDR             R1, [R1,#0x110]
STR             R3, [R2,#0x4BC]
STRD            R0, R1, [R12,#0xC0]
LDR             R0, [R4,#8]
STRB            R11, [R0,#0xC]
VSTR            S18, [R4,#0xC]
LDRB            R0, [R10]
CMP             R0, #0
BLS             loc_1AC32C
RSB             R0, R5, R5,LSL#3
RSB             R1, R5, R5,LSL#4
ADD             R0, R7, R0,LSL#2
VLDR            S0, [R7]
ADD             R0, R0, #4
ADD             R1, R8, R1,LSL#1
BL              sub_1B707C
LDRB            R0, [R10]
ADD             R1, R5, #1
UXTH            R5, R1
CMP             R0, R5
BHI             loc_1AC2FC
VMOV.F32        S0, S17
AND             R0, R0, #0xFF
CMP             R0, #0
LDRGT           R2, =unk_68D002
MOV             R1, #0
VMOV.F32        S1, S0
BLE             loc_1AC394
RSB             R0, R1, R1,LSL#4
ADD             R1, R1, #1
ADD             R0, R2, R0,LSL#1
LDRSH           R0, [R0,#4]
VMOV            S2, R0
VCVT.F32.S32    S2, S2
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R0
VMOVCC          S0, R0
VCVT.F32.S32    S2, S2
VCVTCC.F32.S32  S0, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT          S1, R0
LDRB            R0, [R10]
VCVTGT.F32.S32  S1, S1
CMP             R1, R0
BLT             loc_1AC348
VSTR            S17, [R6,#0x198]
VSTR            S17, [R6,#0x19C]
VSTR            S17, [R6,#0x1A0]
VSTR            S17, [R6,#0x1A4]
ADD             R1, R6, #0x1A8
LDR             R0, =0x11B4
VSUB.F32        S0, S1, S0
VSTM            R1, {S17-S18}
ADD             R1, R6, #0x190
VSTR            S17, [R6,#0x1B0]
VSTM            R1, {S0-S1}
STRH            R9, [R0,R4]
VSTR            S17, [R6,#0x1B8]
VSTR            S17, [R6,#0x1BC]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R6,#0x1C8]
ADD             R0, R6, #0x1C0
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
NOP
B               loc_1AC42C
DCFS 1.0
DCD byte_68DBBC
DCFS -0.35
DCFS 10.0
DCFS 0.5
DCFS 4.2
DCFS 0.0
DCD off_6D1648
DCFS 2.0
DCFS -1.0
DCD dword_6D1F40
DCFS 75.0
DCD unk_68D002
DCD 0x11B4
LDR             R0, [R0,#8]
STR             R0, [R6,#0x1D4]
ADD             R0, R6, #0x1CC
STM             R0, {R1,R2}
ADD             R0, R4, #0x1000
VSTR            S17, [R6,#0x1D8]
VSTR            S17, [R6,#0x1DC]
ADD             R0, R0, #0x1E4
VSTR            S17, [R6,#0x1E0]
STRH            R9, [R0]
STRH            R11, [R0,#2]
STRB            R9, [R0,#4]
ADD             R1, R6, #0x1EC
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1F4
VSTM            R1, {S16-S17}
STRH            R9, [R0]
STRH            R11, [R0,#2]
STRB            R9, [R0,#4]
LDR             R0, =0x3978
VSTR            S16, [R6,#0x1FC]
VSTR            S16, [R6,#0x200]
ORR             R1, R0, R0,ASR#9
STR             R9, [R0,R4]
STR             R9, [R1,R4]
BL              sub_4635D8
MOV             R12, R0
ADD             R8, R4, #0x3980
LDM             R12, {R6,R7,R12}
ADD             R5, R4, #0x3800
LDR             R0, =0x3998
STM             R8, {R6,R7,R12}
ADD             R3, R0, #8
VSTR            S17, [R5,#0x18C]
VSTR            S17, [R5,#0x190]
VSTR            S17, [R5,#0x194]
STR             R9, [R0,R4]
ADD             R1, R0, #0xC
VSTR            S17, [R5,#0x19C]
ADD             R2, R0, #0x10
STRH            R9, [R3,R4]
STR             R9, [R1,R4]
STR             R9, [R2,R4]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R7, R5, #0x1AC
LDR             R0, =0x39B8
STM             R7, {R1-R3}
STRB            R9, [R0,R4]
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1BC
BL              sub_5A26D0
VSTR            S17, [R5,#0x214]
VSTR            S17, [R5,#0x218]
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
VSTR            S17, [R5,#0x234]
VSTR            S17, [R5,#0x238]
STRB            R9, [R0,R4]
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1AC574
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1AC574
LDR             R0, =flt_6E1324
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R1, =flt_6E1324
ADD             R2, R4, #0x3A00
LDRD            R0, R1, [R1]
STRD            R0, R1, [R2,#0x40]
VSTR            S17, [R5,#0x248]
VSTR            S17, [R5,#0x24C]
VSTR            S17, [R5,#0x250]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R6, R5, #0x254
LDR             R0, =0x3A64
STM             R6, {R1-R3}
VSTR            S17, [R5,#0x260]
STRB            R9, [R0,R4]
VSTR            S17, [R5,#0x268]
VSTR            S17, [R5,#0x26C]
BL              sub_4635D8
MOV             R3, R0
ADD             R11, R5, #0x270
VLDM            R3, {S0-S2}
MOV             R7, #0x3A80
VSTR            S17, [R5,#0x27C]
ADD             R6, R4, #0x3A00
VSTM            R11, {S0-S2}
ADD             R0, R4, #0x3A00
STRB            R9, [R7,R4]
ADD             R6, R6, #0x81
ADD             R0, R0, #0x82
ADD             R2, R4, #0x3A00
ADD             R8, R4, #0x3800
STRB            R9, [R6]
ADD             R2, R2, #0x83
ADD             R10, R4, #0x3800
STRB            R9, [R0]
ADD             R8, R8, #0x284
ADD             R1, R4, #0x3800
ADD             R10, R10, #0x288
ADD             R12, R4, #0x3000
STRB            R9, [R2]
ADD             R1, R1, #0x28C
ADD             R3, R4, #0x3800
STR             R9, [R8]
ADD             R12, R12, #0xA90
STR             R9, [R10]
ADD             R3, R3, #0x294
ADD             R4, R4, #0x3800
STR             R9, [R1]
ADD             R4, R4, #0x298
STR             R9, [R12]
MOV             R0, #0xFFFFFFFF
STR             R9, [R3]
STR             R0, [R4]
LDR             R0, =dword_6E1340
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1AC6A0
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1AC6A0
LDR             R0, =flt_71203C
ADD             R1, R0, #0x14
VSTM            R0, {S16-S17}
VSTR            S17, [R0,#(flt_712044 - 0x71203C)]
VSTR            S17, [R0,#(flt_712048 - 0x71203C)]
VSTR            S17, [R0,#(flt_71204C - 0x71203C)]
VSTM            R1, {S16-S17}
VSTR            S17, [R0,#(flt_712058 - 0x71203C)]
VSTR            S17, [R0,#(flt_71205C - 0x71203C)]
VSTR            S17, [R0,#(flt_712060 - 0x71203C)]
ADD             R0, R0, #0x28 ; '('
VSTM            R0, {S16-S17}
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
VPOP            {D8-D10}
POP             {R4-R12,PC}
