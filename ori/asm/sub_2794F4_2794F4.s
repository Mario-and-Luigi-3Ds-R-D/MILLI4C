PUSH            {R4-R8,LR}
MOV             R6, R0
VPUSH           {D8}
SUB             SP, SP, #0x68
LDR             R0, [R0,#4]
ADD             R8, R0, #8
LDR             R7, [R0,#0xBC]!
LDR             R5, [R0,#4]
CMP             R7, R5
BEQ             loc_279560
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_27954C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27954C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27951C
LDR             R0, [R8,#0xB4]
STR             R0, [R8,#0xB8]
LDR             R0, [R6,#4]
ADD             R8, R0, #0x12800
ADD             R8, R8, #0x14
LDR             R5, [R8,#0x16C]
LDR             R7, [R8,#0x168]
CMP             R7, R5
BEQ             loc_2795C8
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_2795B4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2795B4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_279584
LDR             R0, [R8,#0x168]
ADD             R1, SP, #0x88+var_50
STR             R0, [R8,#0x16C]
LDR             R0, =off_6CDF98
LDR             R0, [R0]
LDR             R4, [R0,#0x124]
LDR             R0, [R6,#4]
LDR             R0, [R0,#0x118]
BL              sub_5CC8F4
LDR             R0, =dword_6E2378
LDR             R7, [SP,#0x88+var_50]
LDR             R5, [R6,#4]
LDR             R0, [R0,#(dword_6E237C - 0x6E2378)]
BL              sub_4FA910
MOV             R1, R0
ADD             R0, R5, #0x12800
STR             R7, [R0,#0x190]
LDR             R2, [R5,#0x124]
ADD             R2, R2, #0x400
VLDR            S1, [R1,#0x54]
VLDR            S0, [R0,#0x190]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#0x190]
VLDR            S1, [R2,#0x158]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_279614
LDR             R0, [R6,#4]
LDR             R0, [R0,#0x118]
ADD             R0, R0, #0x28 ; '('
VLDR            S16, [R0]
LDR             R0, [R6,#4]
LDR             R0, [R0,#0x10C]
BL              sub_5CD7C0
VLDR            S0, [R0]
LDR             R0, [R6,#4]
VSUB.F32        S16, S16, S0
ADD             R1, R0, #0x12800
LDR             R0, [R0,#0x10C]
VLDR            S0, [R1,#0x190]
BL              sub_280F7C
LDR             R0, [R6,#4]
LDR             R0, [R0,#0x118]
ADD             R0, R0, #0x28 ; '('
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x88+var_3C]
ADD             R0, SP, #0x88+var_44
STM             R0, {R1,R2}
ADD             R1, SP, #0x88+var_44
LDR             R0, [R6,#4]
ADD             R0, R0, #0x12800
VLDR            S0, [R0,#0x190]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x88+var_44]
LDR             R0, [R6,#4]
LDR             R0, [R0,#0x118]
BL              sub_273FAC
LDR             R0, [R6,#4]
VLDR            S1, [R4,#0x2E8]
LDR             R7, =off_6CE970
ADD             R0, R0, #0x12800
MOV             R3, #0
VLDR            S0, [R0,#0x190]
ADD             R0, R4, #0x400
MOV             R2, R3
VLDR            S2, [R0,#0x1A4]
VADD.F32        S0, S0, S2
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x88+var_38]
LDR             R0, [R4,#0x598]
STR             R0, [SP,#0x88+var_34]
LDR             R0, [R4,#0xD8]
STR             R0, [SP,#0x88+var_30]
LDR             R0, [R6,#4]
ADD             R4, R0, #0xD0
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x424
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_279728
LDR             R1, [R6,#4]
ADD             R2, SP, #0x88+var_38
ADD             R1, R1, #0x12800
ADD             R1, R1, #0x194
BL              sub_27FB94
LDR             R1, [R4,#8]
MOV             R5, R0
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_279A24
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_279754
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4]
LDR             R0, [R6,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R4, R0, #0xC4
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x30 ; '0'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_27978C
BL              sub_26CC58
MOV             R5, R0
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_279A40
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2797B8
BL              sub_26CCDC
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R0, [R7]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x10C
BL              sub_10A358
LDR             R5, =0x2AAAAAAB
MOVS            R3, R0
BEQ             loc_279808
LDR             R0, [R6,#4]
LDRD            R0, R1, [R0,#0xBC]
SUB             R0, R1, R0
SMULL           R1, R0, R5, R0
MOV             R1, R0,ASR#1
SUB             R2, R1, R0,ASR#31
ADD             R1, SP, #0x88+var_38
MOV             R0, R3
BL              sub_26B5E4
STR             R0, [SP,#0x88+var_88]
ADD             R0, R4, #4
STR             R0, [SP,#0x88+var_80]
STR             R0, [SP,#0x88+var_84]
LDR             R0, [R6,#4]
MOV             R3, SP
ADD             R1, R0, #8
LDR             R2, [R0,#0xBC]
LDR             R0, [R0,#0xC0]
SUB             R2, R0, R2
SMULL           R12, R2, R5, R2
MOV             R12, R2,ASR#1
SUB             R2, R12, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xF
BHI             loc_27987C
CMP             R0, #0
BEQ             loc_279870
LDR             R2, [SP,#0x88+var_88]
STR             R2, [R0],#4
ADD             R2, R3, #4
STR             R2, [R0]
LDR             R2, [SP,#0x88+var_80]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x88+var_80]
LDR             R0, [R1,#0xB8]
ADD             R0, R0, #0xC
STR             R0, [R1,#0xB8]
LDR             R1, [SP,#0x88+var_88]
ADD             R0, SP, #0x88+var_78
ADD             R2, SP, #0x88+var_7C
STR             R1, [SP,#0x88+var_7C]
ADD             R1, R3, #4
STR             R1, [SP,#0x88+var_78]
LDR             R1, [SP,#0x88+var_80]
STR             R1, [SP,#0x88+var_74]
STR             R0, [R1]
STR             R0, [SP,#0x88+var_80]
LDR             R0, [R6,#4]
ADD             R1, SP, #0x88+var_6C
LDR             R3, [R0,#0xD0]!
ADD             R0, R0, #4
STR             R0, [SP,#0x88+var_68]
STR             R3, [SP,#0x88+var_6C]
LDR             R12, [R0,#4]
ADD             R3, SP, #0x88+var_68
STR             R12, [SP,#0x88+var_64]
STR             R3, [R12]
STR             R3, [R0,#4]
LDR             R0, [R6,#4]
ADD             R3, SP, #0x88+var_38
LDR             R0, [R0,#0xC4]
BL              sub_26CAD4
LDR             R1, [SP,#0x88+var_64]
ADD             R0, SP, #0x88+var_68
CMP             R1, R0
BNE             loc_279908
LDR             R0, [SP,#0x88+var_6C]
CMP             R0, #0
BEQ             loc_279908
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x88+var_68]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x88+var_74]
ADD             R1, SP, #0x88+var_78
CMP             R0, R1
BNE             loc_27993C
LDR             R0, [SP,#0x88+var_7C]
CMP             R0, #0
BEQ             loc_27993C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x88+var_78]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R6,#4]
LDR             R0, [R0,#0xC4]
BL              sub_26CA6C
LDR             R0, [R6,#4]
LDR             R0, [R0,#0xD0]
BL              sub_27F1D0
LDR             R0, [R6,#0x10]
LDR             R0, [R0,#0x100]
BL              sub_27FF00
LDR             R0, [R6,#4]
ADD             R1, SP, #0x88+var_5C
LDR             R0, [R0,#0xC4]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x88+var_5C]
STR             R2, [SP,#0x88+var_60]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x88+var_58]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x88+var_60]
ADD             R1, R6, #0xC
STR             R1, [R0,#0xC4]
LDR             R1, [SP,#0x88+var_58]
ADD             R0, SP, #0x88+var_5C
CMP             R1, R0
BNE             loc_2799D0
LDR             R0, [SP,#0x88+var_60]
CMP             R0, #0
BEQ             loc_2799D0
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x88+var_5C]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #1
STRB            R0, [R6,#8]
LDR             R1, [SP,#0x88+var_80]
ADD             R0, SP, #0x88+var_84
CMP             R1, R0
BNE             loc_279A0C
LDR             R0, [SP,#0x88+var_88]
CMP             R0, #0
BEQ             loc_279A0C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x88+var_84]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_279754
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_2797B8
