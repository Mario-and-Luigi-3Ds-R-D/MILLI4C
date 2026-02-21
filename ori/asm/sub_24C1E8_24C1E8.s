PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R6, R4, #0x400
ADD             R5, R4, #0x400
MOV             R10, #1
LDR             R11, =off_6CE970
LDR             R8, =off_6CE098
VLDR            S0, =0.0039062
MOV             R9, #0
VPUSH           {D8-D10}
SUB             SP, SP, #0x4C
ADD             R6, R6, #0xEC
ADD             R5, R5, #0xF4
LDR             R1, [R11]
LDRB            R3, [R0,#8]
LDR             R0, [R8]
ADD             R2, R1, #0x190000
VLDR            S16, =0.0
ADD             R1, R1, #0x180000
CMP             R3, #9; switch 9 cases
ADD             R2, R2, #0xDE00
ADD             R1, R1, #0x1DC00
LDRCC           PC, [PC,R3,LSL#2]; switch jump
B               def_24C240; jumptable 0024C240 default case, cases 2,3
DCD loc_24C26C; jump table for switch statement
LDRB            R1, [R0,#0x9C]; jumptable 0024C240 case 0
CMP             R1, #0
BEQ             def_24C240; jumptable 0024C240 default case, cases 2,3
BL              sub_254F70
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
MOV             R1, #1
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R4,#4]
MOV             R2, #0
LDR             R1, [R0,#0xA0]
MOV             R0, R5
BL              sub_14E6E0
STRB            R9, [R4,#0x5E6]
LDR             R0, [R11]
ADD             R3, SP, #0x88+var_78
ADD             R7, R4, #0x4F0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xE000
LDR             R0, [R0,#(loc_10E090 - 0x10E000)]
STR             R0, [R4,#0x4F0]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0x88+var_54]
STR             R0, [SP,#0x88+var_50]
ADD             R0, R4, #0xF8
STRB            R10, [SP,#0x88+var_88+1]
STR             R0, [SP,#0x88+var_7C]
STR             R5, [SP,#0x88+var_84]
STRB            R9, [SP,#0x88+var_88]
LDR             R0, [R4,#4]
LDR             R2, [R0,#0x8C]
ADD             R2, R2, #0x400
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
ADD             R3, SP, #0x88+var_6C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x8C]
ADD             R1, R0, #0x400
ADD             R1, R1, #0xC
LDR             R0, [R0,#0x414]
LDM             R1, {R1,R2}
STR             R6, [SP,#0x88+var_5C]
STR             R0, [SP,#0x88+var_64]
STM             R3, {R1,R2}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x90
LDR             R0, [R0,#0x28]
LDR             R1, =0x301D2
ADD             R3, SP, #0x88+var_54
STR             R0, [SP,#0x88+var_60]
SUB             R2, R1, #2
STM             R3, {R1,R2}
MOV             R1, SP
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x80]
ADD             R0, R0, #0x14
STR             R0, [SP,#0x88+var_80]
ADD             R0, R4, #0x10
STR             R7, [SP,#0x88+var_58]
BL              sub_252BFC
REV             R0, R9
STRB            R10, [R4,#8]
STR             R0, [SP,#0x88+var_4C]
LDR             R0, [R8]
ADD             R1, SP, #0x88+var_4C
LDR             R0, [R0,#0x8C]
VLDR            S0, [R0,#0x328]
LDR             R0, [R11]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
REV             R0, R9
ADD             R1, SP, #0x88+var_4C
STR             R0, [SP,#0x88+var_4C]
LDR             R0, [R8]
LDR             R2, [R11]
LDR             R0, [R0,#0x8C]
VLDR            S0, [R0,#0x328]
LDR             R0, =0x19DF78
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
NOP
NOP
B               def_24C240; jumptable 0024C240 default case, cases 2,3
ADD             R2, R1, #0x368; jumptable 0024C240 case 1
VLDM            R2, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_24C240; jumptable 0024C240 default case, cases 2,3
ADD             R1, R1, #0x3A0
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_24C240; jumptable 0024C240 default case, cases 2,3
ADD             R0, R0, #0x90
VLDR            S17, =50.0
VLDR            S18, =-20.0
VLDR            S19, =-140.0
VLDR            S20, =90.0
LDR             R0, [R0,#0x34]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x1F4
ADD             R6, R4, #0x800
STM             R1, {R0,R9}
ADD             R1, R4, #0x800
ADD             R1, R1, #0x1FC
ADD             R6, R6, #0xE8
VSTM            R1, {S16-S17}
ADD             R1, R4, #0x800
VSTR            S16, [R6,#0x11C]
VSTR            S16, [R6,#0x120]
VSTR            S18, [R6,#0x124]
VSTR            S16, [R6,#0x128]
VSTR            S16, [R6,#0x134]
ADD             R1, R1, #0x214
MOV             R0, #0xC0
VSTM            R1, {S19-S20}
MOV             R1, #2
STR             R0, [R4,#0x9E8]
MOV             R0, R6
STR             R10, [R4,#0xA20]
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
ADD             R5, R5, #0x224
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
BNE             loc_24C494
LDR             R1, [R6,#0x13C]
ADD             R0, R6, #0x13C
LDR             R2, [R1,#0x20]
ADD             R1, R6, #0x114
BLX             R2
LDR             R1, [R6,#0x10C]
CMP             R1, #0
BEQ             loc_24C518
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
BEQ             loc_24C53C
LDR             R1, [R6,#0x138]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_24C540
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
ADD             R5, R6, #0x800
ADD             R5, R5, #0x124
B               loc_24C5D8
DCD off_6CE970
DCD off_6CE098
DCFS 0.0039062
DCFS 0.0
DCD 0x301D2
DCD 0x19DF78
DCFS 50.0
DCFS -20.0
DCFS -140.0
DCFS 90.0
DCD 0xC00E
LDR             R0, [R6,#0x100]
TST             R0, #0x80
BEQ             loc_24C5F4
LDR             R0, [R6,#0x138]
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_24C5F8
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
STR             R1, [SP,#0x88+var_88]
LDRB            R1, [SP,#0x88+var_88+3]
STRB            R9, [SP,#0x88+var_88+3]
VMOV            S0, R1
MOV             R1, SP
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S1
VSTM            R2, {S16-S17}
VMOV.F32        S0, S17
BL              sub_4E665C
LDR             R2, [R11]
LDR             R0, =0x19DF78
VMOV.F32        S0, S17
MOV             R1, SP
ADD             R0, R0, R2; loc_19DF78
BL              sub_4E665C
LDR             R0, [R6,#0x100]
LDR             R1, =dword_6E2378
BIC             R0, R0, #0xF
ORR             R0, R0, #1
STR             R0, [R6,#0x100]
MOV             R0, #4
STRH            R10, [R1,#(word_6E23A6 - 0x6E2378)]
STRB            R0, [R4,#8]
B               def_24C240; jumptable 0024C240 default case, cases 2,3
LDR             R0, [R4,#0x9E8]; jumptable 0024C240 case 4
TST             R0, #0xF
BNE             def_24C240; jumptable 0024C240 default case, cases 2,3
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFF
MOV             R3, #2
MOV             R2, #4
LDR             R0, [R0,#0x8C]
STR             R1, [SP,#0x88+var_60]
STR             R1, [SP,#0x88+var_64]
MOV             R1, #3
STRB            R3, [SP,#0x88+var_88]
STRB            R1, [SP,#0x88+var_88+1]
STRB            R2, [SP,#0x88+var_88+2]
STR             R5, [SP,#0x88+var_84]
STRB            R10, [SP,#0x88+var_7C]
LDR             R3, [R0,#0x418]
LDR             R1, =0x301D1
STR             R3, [SP,#0x88+var_6C]
ADD             R3, R0, #0x400
ADD             R3, R3, #0xF4
LDR             R0, [R0,#0x4FC]
LDM             R3, {R3,R12}
SUB             R2, R1, #2
STR             R0, [SP,#0x88+var_70]
ADD             R0, SP, #0x88+var_78
STR             R1, [SP,#0x88+var_60]
STR             R2, [SP,#0x88+var_64]
STR             R6, [SP,#0x88+var_68]
STM             R0, {R3,R12}
MOV             R1, SP
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x80]
ADD             R0, R0, #0x14
STR             R0, [SP,#0x88+var_80]
ADD             R0, R4, #0x68 ; 'h'
BL              sub_25313C
MOV             R0, #5
NOP
B               loc_24C7F4
LDRSH           R0, [R2,#(loc_19DEE0+2 - 0x19DE00)]; jumptable 0024C240 case 5
VMOV            S1, R0
ADD             R0, R4, #0x68 ; 'h'
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
BL              sub_2531B0
LDRB            R0, [R4,#0x74]
CMP             R0, #0
BEQ             def_24C240; jumptable 0024C240 default case, cases 2,3
LDR             R0, [R8]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0x68 ; 'h'
LDR             R0, [R11]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xB70
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_24C7C0
BL              sub_25A888
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_24C7FC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_24C7EC
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
MOV             R0, #7
STR             R6, [R5]
STRB            R0, [R4,#8]
B               def_24C240; jumptable 0024C240 default case, cases 2,3
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_24C7EC
LDR             R2, [R0,#0x68]!; jumptable 0024C240 case 7
ADD             R0, R0, #4
STR             R0, [SP,#0x88+var_50]
STR             R2, [SP,#0x88+var_54]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x88+var_50
STR             R2, [SP,#0x88+var_4C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x88+var_54]
LDR             R1, [SP,#0x88+var_4C]
LDRB            R0, [R0]
CMP             R0, #0xB
MOVEQ           R5, #1
MOVNE           R5, #0
ADD             R0, SP, #0x88+var_50
CMP             R1, R0
BNE             loc_24C87C
LDR             R0, [SP,#0x88+var_54]
CMP             R0, #0
BEQ             loc_24C87C
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x88+var_50]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             def_24C240; jumptable 0024C240 default case, cases 2,3
MOV             R0, #8
STRB            R0, [R4,#8]
LDR             R0, [R8]
ADD             R1, SP, #0x88+var_5C
LDR             R2, [R0,#0x68]!
LDR             R5, [R0,#0x24]
ADD             R0, R0, #4
STR             R2, [SP,#0x88+var_60]
STR             R0, [SP,#0x88+var_5C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x88+var_58]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x88+var_60]
BL              sub_5CBC04
LDR             R1, [SP,#0x88+var_58]
VLDR            S17, [R0]
VLDR            S18, [R0,#8]
ADD             R7, SP, #0x88+var_5C
CMP             R1, R7
BNE             loc_24C900
LDR             R0, [SP,#0x88+var_60]
CMP             R0, #0
BEQ             loc_24C900
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x88+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R8]
MOV             R1, #0xC000
LDR             R6, [R0,#0x80]
LDR             R0, [R11]
BL              sub_52FACC
MOV             R1, R0
LDR             R0, [R6,#0x14]!
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0x88+var_68]
STR             R0, [SP,#0x88+var_64]
MOV             R0, #3
STRB            R0, [SP,#0x88+var_70]
LDR             R0, [R8]
ADD             R1, SP, #0x88+var_5C
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x88+var_5C]
STR             R2, [SP,#0x88+var_60]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x88+var_58]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x88+var_60]
BL              sub_5CBC10
VLDR            S1, =2.0
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x88+var_88]
LDR             R0, [SP,#0x88+var_58]
CMP             R0, R7
BNE             loc_24C9B0
LDR             R0, [SP,#0x88+var_60]
CMP             R0, #0
BEQ             loc_24C9B0
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x88+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, [R5,#0x420]
ADD             R0, R5, #0x400
STR             R1, [SP,#0x88+var_80]
VLDR            S1, [R0,#0x24]
VLDR            S0, [SP,#0x88+var_88]
LDR             R0, =0x301D5
VADD.F32        S0, S0, S1
ADD             R1, R0, #1
VSTR            S0, [SP,#0x88+var_84]
STR             R6, [SP,#0x88+var_6C]
STRB            R10, [SP,#0x88+var_70+1]
VLDR            S1, [R6,#0x24]
VLDR            S0, [R6,#0x2C]
VSUB.F32        S1, S17, S1
VSUB.F32        S0, S18, S0
VSTR            S1, [SP,#0x88+var_7C]
VSTR            S16, [SP,#0x88+var_78]
VSTR            S0, [SP,#0x88+var_74]
STRD            R0, R1, [SP,#0x88+var_68]
MOV             R1, SP
ADD             R0, R4, #0xB0
BL              sub_252A6C
VLDR            S0, [SP,#0x88+var_80]
ADD             R1, R5, #0x1BC
B               loc_24CA3C
DCD 0xC018
DCFS 0.1
DCD 0x19DF40
DCD dword_6E2378
DCD 0x301D1
DCFS 2.0
DCD 0x301D5
LDR             R0, [R11]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x3D8
BL              sub_5A1FC8
LDR             R1, [R8]
LDR             R0, =0x129EC
ADD             R5, R5, #0x1B0
LDR             R0, [R0,R1]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0]
VLDR            S1, [R1,#0x184]
ADD             R1, SP, #0x88+var_48
VLDR            S0, [R0,#0x90]
ADD             R0, SP, #0x88+var_48
VADD.F32        S0, S0, S1
VLDM            R5, {S1-S3}
VADD.F32        S1, S16, S1
VADD.F32        S2, S16, S2
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0x88+var_40]
VSTM            R0, {S1-S2}
LDR             R0, [R11]
VLDR            S0, [SP,#0x88+var_80]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5A1FC8
NOP
NOP
B               def_24C240; jumptable 0024C240 default case, cases 2,3
LDRSH           R0, [R2,#(loc_19DEE0+2 - 0x19DE00)]; jumptable 0024C240 case 8
VMOV            S1, R0
ADD             R0, R4, #0xB0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
BL              sub_2528F8
LDRB            R0, [R4,#0xBC]
CMP             R0, #0
LDRNE           R0, [R8]
BLNE            sub_254DBC
NOP
NOP
B               def_24C240; jumptable 0024C240 default case, cases 2,3
ADD             R2, R1, #0x368; jumptable 0024C240 case 6
VLDM            R2, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_24C240; jumptable 0024C240 default case, cases 2,3
ADD             R1, R1, #0x3A0
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_24C240; jumptable 0024C240 default case, cases 2,3
MOV             R7, R0
LDR             R0, [R0,#0x14]
CMP             R0, #0
BEQ             loc_24CB28
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R9, [R7,#0x14]
LDR             R0, [R8]; jumptable 0024C240 default case, cases 2,3
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8-D10}
POP             {R4-R11,LR}
B               sub_255340
