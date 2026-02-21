PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0x5C
MOV             R0, #2
LDR             R8, =off_6CDF98
STRB            R0, [R4,#8]
LDR             R0, [R4,#4]
LDR             R1, [R8]
LDR             R5, [R1,#0x124]
ADD             R1, R0, #0x12800
VLDR            S0, [R1,#0x190]
VLDR            S1, [R5,#0x28]
VADD.F32        S0, S1, S0
BL              sub_27A89C
LDR             R9, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R9]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x30 ; '0'
BL              sub_10A358
CMP             R0, #0
BLNE            sub_26CC58
MOV             R7, R0
LDR             R0, [R8]
ADD             R6, R0, #0xC4
ADD             R1, R0, #0xC8
LDR             R0, [R0,#0xCC]
CMP             R0, R1
BNE             loc_279FB4
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_279C78
BL              sub_26CCDC
BL              sub_300FD4
STR             R7, [R6]
LDR             R0, [R4,#4]
ADD             R1, R5, #0x400
MOV             R3, #0
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x1B8
VLDR            S0, [R1,#0x27C]
VLDR            S1, [R0]
LDR             R1, [R5,#0xD8]!
VADD.F32        S0, S1, S0
LDR             R2, [R5,#0x5A8]
VSTR            S0, [SP,#0x78+var_30]
STR             R1, [SP,#0x78+var_28]
STR             R2, [SP,#0x78+var_2C]
LDR             R0, [R4,#4]
MOV             R2, R3
ADD             R5, R0, #0xD0
LDR             R0, [R9]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x424
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_279CF0
LDR             R1, [R4,#4]
ADD             R2, SP, #0x78+var_30
ADD             R1, R1, #0x12800
ADD             R1, R1, #0x194
BL              sub_27FB94
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_279FD0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_279D18
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5]
LDR             R0, [R9]
MOV             R3, #0
MOV             R5, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x10C
BL              sub_10A358
LDR             R6, =0x2AAAAAAB
MOVS            R3, R0
BEQ             loc_279D68
LDR             R0, [R8]
LDRD            R0, R1, [R0,#0xBC]
SUB             R0, R1, R0
SMULL           R1, R0, R6, R0
MOV             R1, R0,ASR#1
SUB             R2, R1, R0,ASR#31
ADD             R1, SP, #0x78+var_30
MOV             R0, R3
BL              sub_26B5E4
STR             R0, [SP,#0x78+var_78]
ADD             R0, R5, #4
STR             R0, [SP,#0x78+var_70]
STR             R0, [SP,#0x78+var_74]
LDR             R0, [R8]
MOV             R2, SP
ADD             R1, R0, #8
LDR             R3, [R0,#0xBC]
LDR             R0, [R0,#0xC0]
SUB             R3, R0, R3
SMULL           R12, R3, R6, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0xF
BHI             loc_279DDC
CMP             R0, #0
BEQ             loc_279DD0
LDR             R3, [SP,#0x78+var_78]
ADD             R2, R2, #4
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x78+var_70]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x78+var_70]
LDR             R0, [R1,#0xB8]
ADD             R0, R0, #0xC
STR             R0, [R1,#0xB8]
LDR             R1, [SP,#0x78+var_78]
ADD             R0, SP, #0x78+var_68
ADD             R2, SP, #0x78+var_6C
STR             R1, [SP,#0x78+var_6C]
ADD             R1, SP, #0x78+var_74
STR             R1, [SP,#0x78+var_68]
LDR             R1, [SP,#0x78+var_70]
STR             R1, [SP,#0x78+var_64]
STR             R0, [R1]
STR             R0, [SP,#0x78+var_70]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x78+var_58
LDR             R3, [R0,#0xD0]!
ADD             R0, R0, #4
STR             R0, [SP,#0x78+var_54]
STR             R3, [SP,#0x78+var_58]
LDR             R12, [R0,#4]
ADD             R3, SP, #0x78+var_54
STR             R12, [SP,#0x78+var_50]
STR             R3, [R12]
STR             R3, [R0,#4]
LDR             R0, [R8]
ADD             R3, SP, #0x78+var_30
LDR             R0, [R0,#0xC4]
BL              sub_26CAD4
LDR             R1, [SP,#0x78+var_50]
ADD             R0, SP, #0x78+var_54
CMP             R1, R0
BNE             loc_279E68
LDR             R0, [SP,#0x78+var_58]
CMP             R0, #0
BEQ             loc_279E68
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x78+var_54]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x78+var_64]
ADD             R1, SP, #0x78+var_68
CMP             R0, R1
BNE             loc_279E9C
LDR             R0, [SP,#0x78+var_6C]
CMP             R0, #0
BEQ             loc_279E9C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x78+var_68]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC4]
BL              sub_26CAA0
LDR             R1, [SP,#0x78+var_70]
ADD             R0, SP, #0x78+var_74
CMP             R1, R0
BNE             loc_279EDC
LDR             R0, [SP,#0x78+var_78]
CMP             R0, #0
BEQ             loc_279EDC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x78+var_74]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x78+var_48
LDR             R0, [R0,#0xC4]
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x78+var_48]
STR             R2, [SP,#0x78+var_4C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x78+var_44]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x78+var_4C]
ADD             R1, R4, #0xC
STR             R1, [R0,#0xC4]
LDR             R1, [SP,#0x78+var_44]
ADD             R0, SP, #0x78+var_48
CMP             R1, R0
BNE             loc_279F4C
LDR             R0, [SP,#0x78+var_4C]
CMP             R0, #0
BEQ             loc_279F4C
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x78+var_48]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x78+var_3C
LDR             R0, [R0,#0x118]
BL              sub_5CC8F4
LDR             R0, =dword_6E2378
LDR             R5, [SP,#0x78+var_3C]
LDR             R4, [R4,#4]
LDR             R0, [R0,#(dword_6E237C - 0x6E2378)]
BL              sub_4FA910
ADD             R2, R4, #0x12800
STR             R5, [R2,#0x190]
LDR             R1, [R4,#0x124]
ADD             R1, R1, #0x400
VLDR            S0, [R0,#0x54]
VLDR            S1, [R2,#0x190]
VSUB.F32        S1, S1, S0
VSTR            S1, [R2,#0x190]
VLDR            S0, [R1,#0x158]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_279F8C
ADD             SP, SP, #0x5C ; '\'
POP             {R4-R9,PC}
LDR             R2, [R6,#4]
ADD             R1, R6, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R6,#4]
STR             R1, [R6,#8]
B               loc_279C78
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_279D18
