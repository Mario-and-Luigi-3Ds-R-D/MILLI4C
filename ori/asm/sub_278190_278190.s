PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R5, =off_6CDF98
VPUSH           {D8}
SUB             SP, SP, #0x4C
LDR             R0, [R5]
BL              sub_27B1E4
LDRB            R0, [R4,#8]
LDR             R10, =off_6CE970
VLDR            S16, =0.0
ADD             R2, R4, #0x800
CMP             R0, #7; switch 7 cases
MOV             R11, #0xFFFFFFFF
MOV             R6, #1
MOV             R9, #0
ADD             R7, R4, #0x18
ADD             R8, R4, #0x14
ADD             R2, R2, #0x58 ; 'X'
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2781D8; jumptable 002781D8 default case, cases 3,5
DCD loc_2781FC; jump table for switch statement
LDR             R0, [R5]; jumptable 002781D8 case 0
LDRB            R1, [R0,#0x134]
CMP             R1, #0
BEQ             def_2781D8; jumptable 002781D8 default case, cases 3,5
BL              sub_279090
LDR             R0, [R4,#4]
MOV             R1, #1
LDR             R5, [R0,#0x124]
MOV             R0, #0
STRB            R1, [R4,#8]
REV             R0, R0
ADD             R6, R5, #0x400
STR             R0, [SP,#0x78+var_30]
LDR             R0, [R10]
ADD             R1, SP, #0x78+var_30
VLDR            S0, [R6,#0xAC]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
MOV             R0, #0
ADD             R1, SP, #0x78+var_30
REV             R0, R0
STR             R0, [SP,#0x78+var_30]
LDR             R0, =0x19DF78
LDR             R2, [R10]
VLDR            S0, [R6,#0xAC]
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R4,#4]
MOV             R1, #0xC000
ADD             R6, R0, #0x12800
ADD             R0, R0, #0x12800
ADD             R6, R6, #0x194
LDR             R0, [R0,#0x190]
STR             R0, [SP,#0x78+var_3C]
VSTR            S16, [SP,#0x78+var_38]
LDR             R0, [R5,#0xD8]
STR             R0, [SP,#0x78+var_34]
LDR             R0, [R10]
BL              sub_52FACC
MOV             R1, R0
LDR             R0, [R6]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
MOV             R0, #1
MOV             R1, R0
STRB            R0, [R6,#0xF1]
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R6]
ADD             R1, SP, #0x78+var_3C
LDR             R2, [R0,#0x20]
MOV             R0, R6
BLX             R2
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
MOV             R0, R6
BL              sub_14C548
MOV             R1, #0
MOV             R0, R6
BL              sub_14C3E8
MOV             R1, #0
ADD             R0, R4, #0x18
BL              sub_14C3E8
MOV             R1, #1
ADD             R0, R4, #0x18
BL              sub_14C450
LDR             R0, [R4,#4]
MOV             R2, #0
LDR             R1, [R0,#0x138]
ADD             R0, R4, #0x18
BL              sub_14E6E0
STRB            R9, [R4,#0x10A]
LDR             R0, [R10]
MOV             R1, #0x44 ; 'D'
ADD             R2, R4, #0x400
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xE000
ADD             R2, R2, #0xC
LDR             R0, [R0,#(loc_10E090 - 0x10E000)]
ADD             R3, SP, #0x78+var_68
STR             R0, [R4,#0x10]
MOV             R0, #0x45 ; 'E'
STRB            R0, [SP,#0x78+var_78+1]
STRB            R1, [SP,#0x78+var_78]
ADD             R1, R5, #0x400
ADD             R1, R1, #0x1AC
STR             R11, [SP,#0x78+var_44]
STR             R2, [SP,#0x78+var_6C]
STR             R7, [SP,#0x78+var_74]
STR             R11, [SP,#0x78+var_40]
LDM             R1, {R0-R2}
ADD             R5, R5, #0x400
ADD             R5, R5, #0x1B8
STM             R3, {R0-R2}
ADD             R3, SP, #0x78+var_5C
LDM             R5, {R0-R2}
STR             R8, [SP,#0x78+var_4C]
STM             R3, {R0-R2}
ADD             R3, SP, #0x78+var_44
LDR             R0, [R4,#4]
LDR             R1, =0x300D1
LDR             R0, [R0,#0x150]
SUB             R2, R1, #2
STR             R0, [SP,#0x78+var_50]
STM             R3, {R1,R2}
ADD             R0, R4, #0x10
LDR             R1, [R4,#4]
STR             R0, [SP,#0x78+var_48]
ADD             R0, R4, #0x800
ADD             R1, R1, #0x12800
ADD             R1, R1, #0x194
STR             R1, [SP,#0x78+var_70]
MOV             R1, SP
BL              sub_277454
LDR             R0, [R10]
LDR             R1, =0x45C
MOV             R2, #0
BL              sub_52F9B4
ADD             SP, SP, #0x4C ; 'L'; jumptable 002781D8 default case, cases 3,5
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R10]; jumptable 002781D8 case 1
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2781D8; jumptable 002781D8 default case, cases 3,5
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2781D8; jumptable 002781D8 default case, cases 3,5
LDR             R0, =dword_6E2378
ADD             R2, R4, #0x800
ADD             R2, R2, #0x1AC
VLDR            S1, =50.0
STRH            R6, [R0,#(word_6E23A6 - 0x6E2378)]
LDR             R0, [R5]
VLDR            S2, =-20.0
VLDR            S0, =-140.0
VLDR            S3, =90.0
LDR             R1, [R0,#0x158]
ADD             R0, R4, #0x8A0
STM             R2, {R1,R9}
MOV             R1, #2
VSTR            S16, [R0,#0x114]
VSTR            S1, [R0,#0x118]
VSTR            S16, [R0,#0x11C]
VSTR            S16, [R0,#0x120]
VSTR            S2, [R0,#0x124]
VSTR            S16, [R0,#0x128]
VSTR            S0, [R0,#0x12C]
VSTR            S3, [R0,#0x130]
VSTR            S16, [R0,#0x134]
STR             R6, [R4,#0x9D8]
MOV             R6, R0
MOV             R0, #0xC0
STR             R0, [R6,#0x100]
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R10]
MOV             R1, #0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
LDR             R0, [R0,#(loc_10C4EC - 0x10C400)]
VSTR            S16, [R6,#0x24]
VSTR            S16, [R6,#0x28]
STR             R0, [R6,#0x2C]
MOV             R0, R6
BL              sub_14C3E8
ADD             R5, R4, #0x800
ADD             R7, R6, #0xC00
ADD             R5, R5, #0x1DC
ADD             R7, R7, #0x118
MOV             R1, #2
MOV             R0, R5
BL              sub_14C450
MOV             R2, #0
MOV             R1, #1
MOV             R0, R5
BL              sub_14B798
MOV             R2, #0x8000
MOV             R1, R6
MOV             R0, R5
BL              sub_1CF9C4
ADD             R5, R5, #0x3F4
CMP             R5, R7
BNE             loc_2784CC
LDR             R1, [R6,#0x13C]
ADD             R0, R6, #0x13C
LDR             R2, [R1,#0x20]
ADD             R1, R6, #0x114
BLX             R2
LDR             R1, [R6,#0x10C]
CMP             R1, #0
BEQ             loc_278550
LDR             R2, [R6,#0x13C]
ADD             R0, R6, #0x13C
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
MOV             R2, #0
ADD             R0, R6, #0x13C
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C548
STRB            R9, [R6,#0x22E]
ADD             R0, R6, #0x530
B               loc_278584
DCD off_6CDF98
DCFS 0.0
DCD off_6CE970
DCD 0x19DF78
DCD 0x300D1
DCD 0x45C
DCD dword_6E2378
DCFS 50.0
DCFS -20.0
DCFS -140.0
DCFS 90.0
LDR             R1, [R6,#0x100]
AND             R1, R1, #0x40 ; '@'
MOVS            R1, R1,LSR#6
BEQ             loc_2785A4
LDR             R1, [R6,#0x138]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_2785A8
MOV             R1, #0
STRB            R1, [R0,#0xF2]
LDR             R0, [R6,#0x530]
ADD             R5, R6, #0x530
ADD             R1, R6, #0x120
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R1, =0xC00E
LDR             R0, [R10]
BL              sub_52FACC
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R5
BLX             R3
LDR             R1, [R6,#0x110]
MOV             R0, R5
MOV             R3, #0x100
CMP             R1, #0
MOVEQ           R1, #4
MOVNE           R1, #0xA
MOV             R2, #0
BL              sub_14C548
LDR             R0, [R6,#0x100]
ADD             R5, R6, #0x800
ADD             R5, R5, #0x124
TST             R0, #0x80
BEQ             loc_27862C
LDR             R0, [R6,#0x138]
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_278630
MOV             R0, #0
STRB            R0, [R5,#0xF2]
LDR             R0, [R5]
ADD             R1, R6, #0x12C
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R1, =0xC018
LDR             R0, [R10]
BL              sub_52FACC
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R5
BLX             R3
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R10]
LDR             R1, =0x19DF40
VLDR            S1, =0.1
ADD             R2, R6, #0x104
LDR             R1, [R1,R0]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
STR             R1, [SP,#0x78+var_78]
LDRB            R1, [SP,#0x78+var_78+3]
STRB            R9, [SP,#0x78+var_78+3]
VMOV            S0, R1
MOV             R1, SP
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S1
VSTM            R2, {S16-S17}
VMOV.F32        S0, S17
BL              sub_4E665C
LDR             R2, [R10]
LDR             R0, =0x19DF78
VMOV.F32        S0, S17
MOV             R1, SP
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R6,#0x100]
BIC             R0, R0, #0xF
ORR             R0, R0, #1
STR             R0, [R6,#0x100]
MOV             R0, #6
B               loc_278788
LDR             R0, [R4,#0x9A0]; jumptable 002781D8 case 6
TST             R0, #0xF
BNE             def_2781D8; jumptable 002781D8 default case, cases 3,5
STR             R11, [SP,#0x78+var_54]
STR             R11, [SP,#0x78+var_50]
LDR             R0, [R4,#4]
MOV             R1, #0x46 ; 'F'
MOV             R3, #0x47 ; 'G'
MOV             R12, #0x48 ; 'H'
LDR             R0, [R0,#0x124]
STRB            R1, [SP,#0x78+var_78]
STRB            R3, [SP,#0x78+var_78+1]
STR             R7, [SP,#0x78+var_74]
STRB            R12, [SP,#0x78+var_78+2]
STRB            R9, [SP,#0x78+var_6C]
LDR             R1, [R0,#0x5C4]
LDR             R5, =0x300D0
STR             R1, [SP,#0x78+var_5C]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x27C
LDR             R0, [R0,#0x684]
LDM             R1, {R1,R3}
SUB             R6, R5, #5
STR             R0, [SP,#0x78+var_60]
ADD             R0, SP, #0x78+var_68
STR             R5, [SP,#0x78+var_50]
STR             R6, [SP,#0x78+var_54]
STR             R8, [SP,#0x78+var_58]
STM             R0, {R1,R3}
MOV             R1, SP
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x194
STR             R0, [SP,#0x78+var_70]
MOV             R0, R2
BL              sub_277994
MOV             R0, #4
STRB            R0, [R4,#8]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R0, [R10]; jumptable 002781D8 case 4
VLDR            S1, =0.0039062
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
MOV             R0, R2
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_277A08
LDRB            R0, [R4,#0x864]
CMP             R0, #0
BEQ             def_2781D8; jumptable 002781D8 default case, cases 3,5
LDR             R0, [R5]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_278E9C
LDR             R0, [R10]; jumptable 002781D8 case 2
ADD             R0, R0, #0x180000
ADD             R0, R0, #0x1DC00
ADD             R1, R0, #0x368
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_2781D8; jumptable 002781D8 default case, cases 3,5
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_2781D8; jumptable 002781D8 default case, cases 3,5
LDR             R4, [R4,#4]
LDR             R0, [R4,#0xDC]!
CMP             R0, #0
BEQ             loc_278830
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_278868
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_278858
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R4]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_278858
