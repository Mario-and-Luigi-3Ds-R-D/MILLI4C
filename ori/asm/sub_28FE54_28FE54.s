PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R7, R4, #0x800
ADD             R2, R4, #0x800
MOV             R8, #4
LDR             R11, =off_6CE970
MOV             R10, #1
VPUSH           {D8-D10}
SUB             SP, SP, #0x74
MOV             R9, #0
ADD             R6, R4, #0x400
LDR             R1, [R11]
LDRB            R3, [R0,#0x894]
VLDR            S16, =0.0
ADD             R0, R1, #0x180000
CMP             R3, #7; switch 7 cases
ADD             R0, R0, #0x1DC00
ADD             R7, R7, #0x98
ADD             R2, R2, #0x4C ; 'L'
LDRCC           PC, [PC,R3,LSL#2]; switch jump
B               def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
DCD loc_28FEC4; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 0028FEA0 case 0
ADD             R0, R0, #0xE4
BL              sub_5CDD54
CMP             R0, #0
NOP
BEQ             def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0xE4
STR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R11]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xFC
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_28FF14
BL              sub_286B90
MOV             R5, R0
LDR             R0, [R4,#4]
STR             R5, [R0,#0x18]
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0]
STR             R0, [R5,#8]
LDR             R0, [SP,#0xB0+var_A8]
BL              sub_5CDD28
STR             R0, [R5,#4]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0x24 ; '$'
LDR             R0, [R11]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x144
BL              sub_10A358
CMP             R0, #0
MOVEQ           R8, #0
BEQ             loc_28FF68
BL              sub_286640
MOV             R8, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_290694
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_28FF94
NOP
NOP
NOP
BL              sub_300FD4
STR             R8, [R5]
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0]
LDR             R2, [R4,#4]
MOV             R1, R0
LDR             R2, [R2,#0x24]
MOV             R0, R2
STR             R1, [R0]
LDR             R0, [R11]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R8, R11
MOV             R0, #0x80
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_286A18
LDR             R1, [R4,#4]
STR             R0, [R1,#0x1C]
LDR             R0, [SP,#0xB0+var_A8]
BL              sub_5CDD40
MOV             R11, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0xC]
MOV             R5, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#4]
LDR             R1, [R4,#4]
LDR             R2, [R1,#0x1C]
MOV             R1, R0
MOV             R0, R2
STR             R1, [R0]
MOV             R1, R5
NOP
STR             R1, [R0,#4]
MOV             R1, R11
NOP
STR             R1, [R0,#8]
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x100
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_287EBC
LDR             R1, [R4,#4]
STR             R0, [R1,#0x20]
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x2C]
MOV             R5, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0]
MOV             R11, R0
LDR             R0, [SP,#0xB0+var_A8]
BL              sub_5CDD1C
LDR             R1, [R4,#4]
LDR             R2, [R1,#0x20]
MOV             R1, R0
MOV             R0, R2
STR             R1, [R0]
MOV             R1, R11
NOP
STR             R1, [R0,#4]
MOV             R1, R5
NOP
STR             R1, [R0,#8]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0x4C ; 'L'
LDR             R0, [R8]
MOV             R11, R8
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x6D8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2900E4
LDR             R1, [R4,#4]
LDR             R1, [R1,#0x20]
BL              sub_2878B0
MOV             R8, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_2906B0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_290114
BL              sub_287CDC
NOP
NOP
BL              sub_300FD4
STR             R8, [R5]
LDR             R0, [R11]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xA4
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_2868C0
LDR             R1, [R4,#4]
STR             R0, [R1,#0x3C]
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x14]
MOV             R5, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x10]
LDR             R1, [R4,#4]
LDR             R2, [R1,#0x3C]
MOV             R1, R0
MOV             R0, R2
STR             R1, [R0]
MOV             R1, R5
NOP
STR             R1, [R0,#4]
LDR             R0, [R4,#4]
VLDR            S0, =20.0
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0,#0x20]
VLDR            S1, [R0,#0x8C]
VSUB.F32        S0, S1, S0
VSTR            S0, [SP,#0xB0+var_4C]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x20]
LDR             R0, [R0,#0x90]
STR             R0, [SP,#0xB0+var_48]
VSTR            S16, [SP,#0xB0+var_44]
LDR             R0, [R4,#4]
ADD             R5, R0, #0x12400
LDR             R0, =off_6CE970
ADD             R5, R5, #0x3F8
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x40 ; '@'
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_2865B8
MOV             R8, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_2906CC
LDR             R0, [R5]
CMP             R0, #0
BLNE            sub_300FD4
STR             R8, [R5]
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x18]
STR             R0, [SP,#0xB0+var_B0]
NOP
B               loc_290220
DCD off_6CE970
DCFS 0.0
DCD 0x6D8
DCFS 20.0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x18]
STR             R0, [SP,#0xB0+var_AC]
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x18]
MOV             R8, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x18]
MOV             R5, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x18]
MOV             R11, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x18]
MOV             R1, R0
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3F8
LDR             R0, [R0]
STR             R1, [R0,#4]
MOV             R1, R11
NOP
STR             R1, [R0]
MOV             R1, R5
NOP
STR             R1, [R0,#8]
MOV             R1, R8
NOP
STR             R1, [R0,#0xC]
LDR             R1, [SP,#0xB0+var_AC]
NOP
STR             R1, [R0,#0x10]
LDR             R1, [SP,#0xB0+var_B0]
NOP
STR             R1, [R0,#0x14]
LDR             R1, [R4,#4]
LDR             R1, [R1,#0x14]
BL              sub_286538
ADD             R1, SP, #0xB0+var_4C
NOP
BL              sub_286524
LDR             R0, [R4,#4]
LDR             R11, =off_6CE970
MOV             R3, #0
ADD             R5, R0, #0x12800
ADD             R5, R5, #4
LDR             R0, [R11]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x128
BL              sub_10A358
MOVS            R2, R0
NOP
BEQ             loc_290310
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3F8
LDR             R1, [R0]
MOV             R0, R2
BL              sub_286218
MOV             R8, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_2906E8
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_290340
BL              sub_286348
NOP
NOP
BL              sub_300FD4
STR             R8, [R5]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0x12000
LDR             R0, =off_6CE970
ADD             R5, R5, #0x7E0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x21E50
BL              sub_10A358
CMP             R0, #0
MOVEQ           R8, #0
STR             R0, [SP,#0xB0+var_AC]
BEQ             loc_2903C0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x30]
MOV             R11, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x2C]
MOV             R8, R0
LDR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R0,#0x1C]
MOV             R1, R0
LDR             R0, [R4,#4]
MOV             R3, R11
MOV             R2, R8
LDR             R0, [R0,#0x14]
STR             R0, [SP,#0xB0+var_B0]
LDR             R0, [SP,#0xB0+var_AC]
BL              sub_2970EC
MOV             R8, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_290704
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2903EC
BL              sub_297AA8
NOP
NOP
BL              sub_300FD4
STR             R8, [R5]
LDR             R0, [R4,#4]
LDR             R11, =off_6CE970
MOV             R3, #0
ADD             R5, R0, #0x12400
ADD             R5, R5, #0x3EC
LDR             R0, [R11]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_290434
LDR             R1, [R4,#4]
LDR             R2, =off_6BC52C
STR             R1, [R0,#4]
STR             R2, [R0]
MOV             R8, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_290720
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_290460
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R5]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0x12000
LDR             R0, [R11]
ADD             R5, R5, #0x810
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2904A4
LDR             R1, [R4,#4]
LDR             R2, =off_6BC5C4
STR             R1, [R0,#4]
STR             R2, [R0]
MOV             R8, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_29073C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2904D0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R5]
LDR             R1, [R4,#4]
MOV             R0, R1
ADD             R1, R1, #0x12000
ADD             R0, R0, #0x12800
ADD             R1, R1, #0x810
ADD             R0, R0, #4
LDR             R1, [R1]
LDR             R0, [R0]
STR             R1, [R0,#0x124]
MOV             R1, #2
ADD             R0, R4, #0xC
BL              sub_14C450
LDR             R0, [R4,#4]
ADD             R0, R0, #0xE4
BL              sub_5CDD04
MOV             R1, R0
MOV             R2, #0
ADD             R0, R4, #0xC
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
ADD             R0, R4, #0xC
STRB            R9, [R4,#0xFE]
BL              sub_14C548
MOV             R1, #0
ADD             R0, R4, #0x400
BL              sub_14C3E8
MOV             R1, #1
ADD             R0, R4, #0x400
BL              sub_14C450
LDR             R0, [R4,#4]
ADD             R0, R0, #0xE4
LDR             R0, [R0]
MOV             R1, R0
MOV             R2, #0
ADD             R0, R4, #0x400
BL              sub_14E6E0
STRB            R9, [R4,#0x4F2]
LDR             R0, [R11]
ADD             R3, SP, #0xB0+var_80
ADD             R5, R4, #0x800
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xE000
MOV             R8, R11
LDR             R0, [R0,#(loc_10E090 - 0x10E000)]
ADD             R5, R5, #0x9C
STR             R0, [R4,#0x89C]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0xB0+var_5C]
STR             R0, [SP,#0xB0+var_58]
ADD             R0, R4, #0xC
STRB            R10, [SP,#0xB0+var_90+1]
STR             R0, [SP,#0xB0+var_84]
STR             R6, [SP,#0xB0+var_8C]
STRB            R9, [SP,#0xB0+var_90]
LDR             R0, [R4,#4]
LDR             R2, [R0,#0x14]
ADD             R2, R2, #0x58 ; 'X'
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
ADD             R3, SP, #0xB0+var_74
LDR             R0, [R4,#4]
LDR             R2, [R0,#0x14]
ADD             R2, R2, #0x64 ; 'd'
LDM             R2, {R0-R2}
STR             R7, [SP,#0xB0+var_64]
STM             R3, {R0-R2}
LDR             R0, [R4,#4]
ADD             R0, R0, #0xE4
LDR             R0, [R0,#0xC]
LDR             R1, =0x301F4
STR             R0, [SP,#0xB0+var_68]
ADD             R0, SP, #0xB0+var_5C
SUB             R2, R1, #2
STM             R0, {R1,R2}
ADD             R1, SP, #0xB0+var_90
LDR             R0, [R4,#8]
STR             R0, [SP,#0xB0+var_88]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x3F4
STR             R5, [SP,#0xB0+var_60]
BL              sub_28D4FC
STRB            R10, [R4,#0x894]
LDR             R4, =off_6CDCE8
REV             R0, R9
ADD             R1, SP, #0xB0+var_40
STR             R0, [SP,#0xB0+var_40]
LDR             R0, [R4]
LDR             R0, [R0,#0x14]
VLDR            S0, [R0]
LDR             R0, [R8]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
REV             R0, R9
ADD             R1, SP, #0xB0+var_40
STR             R0, [SP,#0xB0+var_40]
LDR             R0, [R4]
LDR             R2, [R8]
LDR             R0, [R0,#0x14]
VLDR            S0, [R0]
LDR             R0, =0x19DF78
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R8]
LDR             R1, =0x45C
MOV             R2, #0
BL              sub_52F9B4
ADD             SP, SP, #0x74 ; 't'; jumptable 0028FEA0 default case, cases 3,5
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_28FF94
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_290114
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_2901F8
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_290340
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_2903EC
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_290460
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_2904D0
ADD             R1, R0, #0x3A0; jumptable 0028FEA0 case 1
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
ADD             R0, R0, #0x368
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
LDR             R0, =off_6CDCE8
VLDR            S17, =50.0
VLDR            S18, =-20.0
VLDR            S19, =-140.0
LDR             R0, [R0]
VLDR            S20, =90.0
ADD             R0, R0, #0xE4
LDR             R0, [R0,#0x28]
ADD             R2, R4, #0x800
ADD             R2, R2, #0x1AC
ADD             R1, R4, #0x8A0
STM             R2, {R0,R9}
ADD             R0, R4, #0x800
ADD             R0, R0, #0x1B4
MOV             R6, R1
VSTM            R0, {S16-S17}
ADD             R0, R4, #0x800
VSTR            S16, [R1,#0x11C]
VSTR            S16, [R1,#0x120]
VSTR            S18, [R1,#0x124]
VSTR            S16, [R1,#0x128]
VSTR            S16, [R1,#0x134]
ADD             R0, R0, #0x1CC
MOV             R1, #2
VSTM            R0, {S19-S20}
MOV             R0, #0xC0
STR             R0, [R4,#0x9A0]
MOV             R0, R6
STR             R10, [R4,#0x9D8]
BL              sub_14C450
LDR             R0, [R11]
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
BNE             loc_290830
LDR             R1, [R6,#0x13C]
ADD             R0, R6, #0x13C
LDR             R2, [R1,#0x20]
ADD             R1, R6, #0x114
BLX             R2
LDR             R1, [R6,#0x10C]
CMP             R1, #0
BEQ             loc_2908B4
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
LDR             R1, [R6,#0x100]
ADD             R0, R6, #0x530
AND             R1, R1, #0x40 ; '@'
MOVS            R1, R1,LSR#6
BEQ             loc_2908D8
LDR             R1, [R6,#0x138]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_2908DC
MOV             R1, #0
STRB            R1, [R0,#0xF2]
LDR             R0, [R6,#0x530]
ADD             R5, R6, #0x530
ADD             R1, R6, #0x120
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R1, =0xC00E
LDR             R0, [R11]
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
BEQ             loc_290960
LDR             R0, [R6,#0x138]
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_290964
MOV             R0, #0
STRB            R0, [R5,#0xF2]
LDR             R0, [R5]
ADD             R1, R6, #0x12C
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
LDR             R1, =0xC018
LDR             R0, [R11]
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
LDR             R0, [R11]
LDR             R1, =0x19DF40
VLDR            S1, =0.1
ADD             R2, R6, #0x104
LDR             R1, [R1,R0]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
STR             R1, [SP,#0xB0+var_A4]
LDRB            R1, [SP,#0xB0+var_A4+3]
STRB            R9, [SP,#0xB0+var_A4+3]
VMOV            S0, R1
ADD             R1, SP, #0xB0+var_A4
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S1
VSTM            R2, {S16-S17}
VMOV.F32        S0, S17
BL              sub_4E665C
LDR             R2, [R11]
LDR             R0, =0x19DF78
VMOV.F32        S0, S17
ADD             R1, SP, #0xB0+var_A4
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R6,#0x100]
LDR             R1, =dword_6E2378
BIC             R0, R0, #0xF
ORR             R0, R0, #1
STR             R0, [R6,#0x100]
STRH            R10, [R1,#(word_6E23A6 - 0x6E2378)]
STRB            R8, [R4,#0x894]
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R0, [R4,#0x9A0]; jumptable 0028FEA0 case 4
TST             R0, #0xF
BNE             def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFF
MOV             R3, #2
MOV             R12, #3
LDR             R0, [R0,#0x14]
STR             R1, [SP,#0xB0+var_84]
STRB            R3, [SP,#0xB0+var_AC]
STR             R1, [SP,#0xB0+var_88]
STRB            R12, [SP,#0xB0+var_AC+1]
STRB            R8, [SP,#0xB0+var_AC+2]
STR             R6, [SP,#0xB0+var_A8]
STRB            R10, [SP,#0xB0+var_A0]
LDR             R12, [R0,#0x70]
ADD             R5, R0, #0x74 ; 't'
LDR             R1, =0x30262
STR             R12, [SP,#0xB0+var_90]
LDM             R5, {R5,R12}
SUB             R3, R1, #2
LDR             R0, [R0,#0x7C]
STR             R1, [SP,#0xB0+var_84]
STR             R3, [SP,#0xB0+var_88]
STR             R0, [SP,#0xB0+var_94]
ADD             R0, SP, #0xB0+var_9C
STR             R7, [SP,#0xB0+var_8C]
STM             R0, {R5,R12}
ADD             R1, SP, #0xB0+var_AC
LDR             R0, [R4,#8]
STR             R0, [SP,#0xB0+var_A4]
MOV             R0, R2
BL              sub_28DA3C
MOV             R0, #6
STRB            R0, [R4,#0x894]
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8-D10}
POP             {R4-R11,PC}
DCD 0x21E50
DCD off_6BC52C
DCD off_6BC5C4
DCD 0x301F4
DCD off_6CDCE8
DCD 0x19DF78
DCD 0x45C
DCFS 50.0
DCFS -20.0
DCFS -140.0
DCFS 90.0
DCD 0xC00E
DCD 0xC018
DCFS 0.1
DCD 0x19DF40
DCD dword_6E2378
DCD 0x30262
LDR             R0, =0x19DEE2; jumptable 0028FEA0 case 6
VLDR            S1, =0.0039062
LDRSH           R0, [R0,R1]; loc_19DEE0
VMOV            S0, R0
MOV             R0, R2
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_28DAB0
LDRB            R0, [R4,#0x858]
CMP             R0, #0
BEQ             def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x14]
ADD             R1, R0, #0x74 ; 't'
VLDR            S3, [R0,#0x54]
VLDR            S5, [R0,#0x4C]
VLDR            S4, [R0,#0x50]
ADD             R0, SP, #0xB0+var_90
VLDM            R1, {S0-S2}
ADD             R1, SP, #0xB0+var_90
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VSTM            R0, {S0-S2}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x4C]
BL              sub_2872C8
ADD             R0, SP, #0xB0+var_A8
MOV             R1, #0
STR             R1, [SP,#0xB0+var_AC]
STR             R0, [SP,#0xB0+var_A4]
STR             R0, [SP,#0xB0+var_A8]
LDR             R0, [R11]
MOV             R3, R1
MOV             R2, R1
ADD             R1, R0, #0x68 ; 'h'
ADD             R5, SP, #0xB0+var_AC
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_290BD0
LDR             R1, [R4,#4]
ADD             R3, SP, #0xB0+var_90
LDR             R2, [R1,#0x18]
MOV             R1, #0
BL              sub_29A584
MOV             R7, R0
LDR             R0, [SP,#0xB0+var_A4]
ADD             R6, R5, #4
CMP             R0, R6
BNE             loc_290F0C
LDR             R0, [SP,#0xB0+var_AC]
CMP             R0, #0
BEQ             loc_290C00
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
STR             R7, [SP,#0xB0+var_AC]
LDR             R0, [R4,#4]
LDR             R8, =0x2AAAAAAB
ADD             R1, SP, #0xB0+var_AC
ADD             R2, R0, #0x12400
ADD             R2, R2, #0x3B4
LDR             R0, [R2,#0x28]
LDR             R3, [R2,#0x24]
SUB             R3, R0, R3
SMULL           R12, R3, R8, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #3
BHI             loc_290C6C
CMP             R0, #0
BEQ             loc_290C60
STR             R7, [R0],#4
ADD             R1, R1, #4
STR             R1, [R0]
LDR             R1, [SP,#0xB0+var_A4]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xB0+var_A4]
LDR             R0, [R2,#0x28]
ADD             R0, R0, #0xC
STR             R0, [R2,#0x28]
LDR             R0, [R11]
MOV             R3, #0
ADD             R7, SP, #0xB0+var_AC
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_290CAC
LDR             R1, [R4,#4]
ADD             R3, SP, #0xB0+var_90
LDR             R2, [R1,#0x18]
MOV             R1, #2
BL              sub_29A584
MOV             R5, R0
LDR             R0, [SP,#0xB0+var_A4]
CMP             R0, R6
BNE             loc_290F24
LDR             R0, [SP,#0xB0+var_AC]
CMP             R0, #0
BEQ             loc_290CD4
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
STR             R5, [SP,#0xB0+var_AC]
LDR             R0, [R4,#4]
ADD             R1, SP, #0xB0+var_AC
ADD             R2, R0, #0x12400
ADD             R2, R2, #0x3B4
LDR             R0, [R2,#0x28]
LDR             R3, [R2,#0x24]
SUB             R3, R0, R3
SMULL           R12, R3, R8, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #3
BHI             loc_290D3C
CMP             R0, #0
BEQ             loc_290D30
STR             R5, [R0],#4
ADD             R1, R1, #4
STR             R1, [R0]
LDR             R1, [SP,#0xB0+var_A4]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xB0+var_A4]
LDR             R0, [R2,#0x28]
ADD             R0, R0, #0xC
STR             R0, [R2,#0x28]
LDR             R0, [R11]
MOV             R3, #0
ADD             R7, SP, #0xB0+var_AC
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_290D78
LDR             R1, [R4,#4]
ADD             R3, SP, #0xB0+var_90
LDR             R2, [R1,#0x18]
MOV             R1, #1
BL              sub_29A584
MOV             R5, R0
LDR             R0, [SP,#0xB0+var_A4]
CMP             R0, R6
BNE             loc_290F40
LDR             R0, [SP,#0xB0+var_AC]
CMP             R0, #0
BEQ             loc_290DA4
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
STR             R5, [SP,#0xB0+var_AC]
LDR             R0, [R4,#4]
ADD             R1, SP, #0xB0+var_AC
ADD             R2, R0, #0x12400
ADD             R2, R2, #0x3B4
LDR             R0, [R2,#0x28]
LDR             R3, [R2,#0x24]
SUB             R3, R0, R3
SMULL           R12, R3, R8, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #3
BHI             loc_290E0C
CMP             R0, #0
BEQ             loc_290E00
STR             R5, [R0],#4
ADD             R1, R1, #4
STR             R1, [R0]
LDR             R1, [SP,#0xB0+var_A4]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xB0+var_A4]
LDR             R0, [R2,#0x28]
ADD             R0, R0, #0xC
STR             R0, [R2,#0x28]
LDR             R0, [R11]
LDR             R5, [R4,#4]
MOV             R3, #0
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x4E4
MOV             R8, #1
ADD             R7, R5, #8
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_290E58
STR             R8, [SP,#0xB0+var_B0]
LDR             R2, [R5,#0x14]
LDR             R1, [R5,#0x1C]
ADD             R3, R2, #0x4C ; 'L'
ADD             R2, R5, #0x12800
ADD             R2, R2, #0x1C
BL              sub_28F81C
MOV             R5, R0
LDR             R0, [R7,#8]
ADD             R1, R7, #4
CMP             R0, R1
BNE             loc_290F5C
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_290E88
BL              sub_28F9F4
NOP
NOP
BL              sub_300FD4
STR             R5, [R7]
LDR             R0, [R4,#4]
LDR             R1, [R0,#8]
LDR             R0, [R0,#0x20]
VLDR            S0, [R0,#0x40]
MOV             R0, R1
BL              sub_28EA78
LDR             R0, [R4,#4]
NOP
BL              sub_2929E0
NOP
NOP
B               loc_290ECC
DCD 0x19DEE2
DCFS 0.0039062
DCD 0x2AAAAAAB
DCD 0x4E4
LDR             R0, [SP,#0xB0+var_A4]
CMP             R0, R6
BNE             loc_290EF4
LDR             R0, [SP,#0xB0+var_AC]
CMP             R0, #0
BEQ             loc_290EF4
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xB0+var_A8]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R1, [SP,#0xB0+var_A8]
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R6, [SP,#0xB0+var_A8]
STR             R6, [SP,#0xB0+var_A4]
B               loc_290C00
LDR             R1, [SP,#0xB0+var_A8]
ADD             R2, R7, #4
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R2, [SP,#0xB0+var_A8]
STR             R2, [SP,#0xB0+var_A4]
B               loc_290CD4
LDR             R1, [SP,#0xB0+var_A8]
ADD             R2, R7, #4
STR             R0, [R1,#4]
STR             R1, [R0]
STR             R2, [SP,#0xB0+var_A8]
STR             R2, [SP,#0xB0+var_A4]
B               loc_290DA4
LDR             R2, [R7,#4]
ADD             R1, R7, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R7,#4]
STR             R1, [R7,#8]
B               loc_290E88
ADD             R1, R0, #0x3A0; jumptable 0028FEA0 case 2
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
ADD             R0, R0, #0x368
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_28FEA0; jumptable 0028FEA0 default case, cases 3,5
LDR             R4, [R4,#4]
LDR             R0, [R4,#0x58]!
CMP             R0, #0
BEQ             loc_290FBC
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_290FF4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_290FE4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R4]
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_290FE4
