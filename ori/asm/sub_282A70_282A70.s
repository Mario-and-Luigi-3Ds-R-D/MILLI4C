PUSH            {R4-R11,LR}
MOV             R5, R0
LDR             R2, =dword_6D1F40
VPUSH           {D8-D11}
SUB             SP, SP, #0x64
LDR             R0, [R0,#0x30]
LDRD            R0, R1, [R0,#8]
BL              sub_47EADC
MOVS            R9, R0
BEQ             loc_28328C
ADD             R11, SP, #0xA8+var_A0
VLDR            S22, =-3.4028e38
VLDR            S20, =3.4028e38
VLDR            S21, =0.0
VMOV.F32        S18, S22
LDR             R7, =0x7F7FFFFF
VMOV.F32        S17, S21
MOV             R6, #0x32 ; '2'
LDR             R0, [R5,#0x30]
LDR             R2, =dword_6D1F40
SUB             R6, R6, #1
ADD             R4, R0, #8
LDRD            R0, R1, [R4,#0x10]
BL              sub_47EADC
VMOV            S0, R0
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R4,#0x18]
VCVT.F32.S32    S19, S0
BL              sub_47EADC
VMOV            S0, R0
LDR             R0, [R5,#0x30]
VMOV.F32        S16, S20
ADD             R2, R0, #8
ADD             R0, R5, #0x14
VCVT.F32.S32    S0, S0
LDM             R0, {R0,R3}
CMP             R3, R0
VMOVNE.F32      S4, S17
VLDRNE          S1, [R2,#0x20]
BEQ             loc_282E10
LDR             R1, [R0]
VMOV.F32        S3, S19
VLDR            S2, [R1,#0x2C]
VSUB.F32        S3, S2, S3
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
VLDR            S6, [R1,#0x34]
VMOVCC.F32      S2, S3
VMOVCS.F32      S5, S3
VNEGCC.F32      S5, S2
VMOV.F32        S2, S0
VSUB.F32        S2, S6, S2
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S6, S2
VCMPE.F32       S1, S5
VNEGCC.F32      S6, S6
VMRS            APSR_nzcv, FPSCR
VLDRLT          S5, [R2,#0x24]
VCMPELT.F32     S5, S6
VMRSLT          APSR_nzcv, FPSCR
BLT             loc_282B90
VMOV.F32        S6, S17
VLDR            S5, [R1,#0x30]
VMUL.F32        S3, S3, S3
VSUB.F32        S5, S5, S6
VMLA.F32        S3, S5, S5
VMLA.F32        S3, S2, S2
VCMPE.F32       S16, S3
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S3, S16
VMOV.F32        S16, S3
ADD             R0, R0, #0xC
CMP             R3, R0
BNE             loc_282B10
VMOV            R0, S16
CMP             R0, R7
BEQ             loc_282E10
VCMPE.F32       S18, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_282BC8
VMOV.F32        S1, S17
VMOV.F32        S18, S16
VSTR            S19, [SP,#0xA8+var_70]
VSTR            S1, [SP,#0xA8+var_6C]
VSTR            S0, [SP,#0xA8+var_68]
CMP             R6, #0
BNE             loc_282AB8
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R7, SP, #0xA8+var_A4
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x41C
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_282D4C
LDR             R1, [R5,#0x30]
MOV             R8, #0
ADD             R6, SP, #0xA8+var_70
STR             R1, [R0]
STRB            R8, [R0,#4]
ADD             R0, R0, #8
BL              sub_14F198
SUB             R4, R0, #8
MOV             R0, #4
STRB            R8, [R4,#0x418]
STRB            R8, [R4,#0x419]
STRB            R0, [R4,#4]
LDR             R0, [R4]
MOV             R2, #0
LDR             R1, [R0]
ADD             R0, R4, #8
BL              sub_14E6E0
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF9]
MOV             R1, R6
ADD             R0, R4, #8
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #8
BL              sub_14C430
LDR             R8, =dword_6D1F40
ADD             R0, R4, #8
BL              sub_5C5724
MOV             R6, R0
MOV             R0, R8
BL              sub_546DB0
MUL             R0, R0, R6
MOV             R1, R0,LSR#16
ADD             R0, R4, #8
BL              sub_14F01C
LDR             R0, [R4]
ADD             R1, SP, #0xA8+var_6C
VLDR            S3, [SP,#0xA8+var_70]
ADD             R0, R0, #8
VLDM            R1, {S4-S5}
ADD             R1, R0, #0x70 ; 'p'
VLDR            S2, [R0,#0x6C]
MOV             R2, R8
VLDM            R1, {S0-S1}
VADD.F32        S2, S2, S3
ADD             R1, R4, #0x3FC
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S5
VSTR            S2, [R4,#0x3FC]
VSTR            S0, [R1,#4]
VSTR            S1, [R1,#8]
ADD             R1, SP, #0xA8+var_6C
VLDR            S1, [R0,#0x78]
VLDR            S0, [R0,#0x7C]
VLDR            S2, [R0,#0x80]
VADD.F32        S1, S1, S3
VLDM            R1, {S4-S5}
ADD             R1, R4, #0x400
VADD.F32        S0, S0, S4
VADD.F32        S2, S2, S5
VSTR            S1, [R1,#8]
VSTR            S0, [R1,#0xC]
VSTR            S2, [R1,#0x10]
LDRD            R0, R1, [R0,#0x58]
BL              sub_47EADC
VMOV            S0, R0
MOV             R0, #0xFFFFFF00
VSTR            S17, [R4,#0x3A4]
REV             R8, R0
ADD             R6, R4, #0x334
MOV             R0, R6
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x3A8]
BL              sub_4E63E0
STR             R8, [R6,#4]
STR             R8, [R6]
ADD             R0, R7, #4
STR             R0, [SP,#0xA8+var_9C]
STR             R4, [SP,#0xA8+var_A4]
STR             R0, [SP,#0xA8+var_A0]
LDR             R0, [R5,#0x18]
LDR             R1, [R5,#0x14]
LDR             R6, =0x2AAAAAAB
LDR             R3, [R5,#0x1C]
SUB             R1, R0, R1
ADD             R10, SP, #0xA8+var_A4
SMULL           R2, R1, R6, R1
ADD             R8, R5, #8
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
ADD             R2, R1, #1
CMP             R2, R3
BLS             loc_282E24
LDR             R1, [R8,#4]
LDR             R3, [R8]
MOV             R0, #1
CMP             R1, #1
MOVHI           R0, R1
STR             R0, [SP,#0xA8+var_84]
MOV             R0, #0
STR             R3, [SP,#0xA8+var_88]
STR             R0, [SP,#0xA8+var_80]
STR             R0, [SP,#0xA8+var_7C]
STR             R0, [SP,#0xA8+var_78]
STR             R0, [SP,#0xA8+var_74]
LDR             R0, [R8,#0x14]
MOV             R4, R2
MOV             R1, R4
MOV             R0, R0,LSL#1
CMP             R0, R1
MOVCS           R1, R0
ADD             R0, SP, #0xA8+var_88
BL              sub_625690
CMP             R0, #0
NOP
BNE             loc_282E70
B               loc_282E58
DCD dword_6D1F40
DCFS -3.4028e38
DCFS 3.4028e38
DCFS 0.0
DCD 0x7F7FFFFF
DCD off_6CE970
DCD 0x41C
DCD 0x2AAAAAAB
VMOV.F32        S1, S17
VSTR            S19, [SP,#0xA8+var_70]
VSTR            S1, [SP,#0xA8+var_6C]
VSTR            S0, [SP,#0xA8+var_68]
B               loc_282BD0
CMP             R0, #0
BEQ             loc_282E48
STR             R4, [R0],#4
ADD             R1, R10, #4
STR             R1, [R0]
LDR             R1, [SP,#0xA8+var_9C]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0xA8+var_9C]
LDR             R0, [R8,#0x10]
ADD             R0, R0, #0xC
STR             R0, [R8,#0x10]
B               loc_28324C
MOV             R1, R4
ADD             R0, SP, #0xA8+var_88
BL              sub_625690
CMP             R0, #0
NOP
BEQ             loc_282F18
LDRD            R0, R1, [R8,#0xC]
LDR             R3, =0x2AAAAAAB
ADD             R2, SP, #0xA8+var_7C
STR             R2, [SP,#0xA8+var_50]
SUB             R2, R1, R0
SMULL           R3, R2, R3, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
LDR             R3, [SP,#0xA8+var_74]
CMP             R2, R3
BHI             loc_2830B0
STR             R0, [SP,#0xA8+var_8C]
STR             R1, [SP,#0xA8+var_90]
LDR             R6, [SP,#0xA8+var_78]
LDR             R7, [SP,#0xA8+var_7C]
CMP             R0, R1
BNE             loc_283000
CMP             R7, R6
BEQ             loc_282F08
SUB             R6, R6, #0xC
ADD             R0, R6, #4
LDR             R1, [R6,#8]
MOV             R4, R6
CMP             R1, R0
BNE             loc_282EF4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_282EF4
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_282EBC
LDR             R0, [SP,#0xA8+var_50]
LDR             R1, [R0]
STR             R1, [R0,#4]
B               loc_2830B0
LDR             R6, [SP,#0xA8+var_78]
LDR             R7, [SP,#0xA8+var_7C]
MOV             R8, #0
STR             R8, [SP,#0xA8+var_74]
CMP             R7, R6
BEQ             loc_282F7C
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R4, R6
CMP             R0, R1
BNE             loc_282F68
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_282F68
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_282F30
LDR             R0, [SP,#0xA8+var_80]
STR             R8, [SP,#0xA8+var_7C]
STR             R8, [SP,#0xA8+var_78]
CMP             R0, #0
STR             R8, [SP,#0xA8+var_80]
BLNE            sub_2FF5D4
LDR             R6, [SP,#0xA8+var_78]
LDR             R7, [SP,#0xA8+var_7C]
CMP             R7, R6
BEQ             loc_282FF0
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R4, R6
CMP             R0, R1
BNE             loc_282FDC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_282FDC
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_282FA4
LDR             R0, [SP,#0xA8+var_80]
CMP             R0, #0
BEQ             loc_28324C
B               loc_283244
CMP             R7, R6
BEQ             loc_283054
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R4, R6
CMP             R0, R1
BNE             loc_283040
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_283040
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_283008
LDR             R0, [SP,#0xA8+var_50]
LDR             R2, [SP,#0xA8+var_8C]
LDR             R3, [SP,#0xA8+var_90]
LDR             R0, [R0]
CMP             R2, R3
BEQ             loc_2830A8
CMP             R0, #0
BEQ             loc_283098
LDR             R12, [R2]
ADD             R1, R0, #4
STR             R12, [R0]
ADD             R12, R2, #4
STR             R12, [R0,#4]
LDR             R4, [R2,#8]
STR             R4, [R0,#8]
STR             R1, [R4]
STR             R1, [R2,#8]
ADD             R2, R2, #0xC
CMP             R2, R3
ADD             R0, R0, #0xC
BNE             loc_28306C
LDR             R1, [SP,#0xA8+var_50]
STR             R0, [R1,#4]
LDR             R1, [SP,#0xA8+var_78]
LDR             R2, [SP,#0xA8+var_7C]
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
LDR             R1, [SP,#0xA8+var_74]
ADD             R0, R0, #1
CMP             R0, R1
BHI             loc_283114
LDR             R0, [SP,#0xA8+var_78]
CMP             R0, #0
BEQ             loc_283108
LDR             R1, [SP,#0xA8+var_A4]
STR             R1, [R0],#4
ADD             R1, R10, #4
STR             R1, [R0]
LDR             R2, [R10,#8]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R10,#8]
LDR             R0, [SP,#0xA8+var_78]
ADD             R0, R0, #0xC
STR             R0, [SP,#0xA8+var_78]
LDRD            R2, R3, [R8]
LDRD            R0, R1, [SP,#0xA8+var_88]
STRD            R2, R3, [SP,#0xA8+var_88]
STRD            R0, R1, [R8]
LDR             R1, [R8,#8]
LDR             R0, [SP,#0xA8+var_80]
STR             R1, [SP,#0xA8+var_80]
STR             R0, [R8,#8]
LDR             R1, [R8,#0xC]
LDR             R0, [SP,#0xA8+var_7C]
STR             R1, [SP,#0xA8+var_7C]
STR             R0, [R8,#0xC]
LDR             R1, [R8,#0x10]
LDR             R0, [SP,#0xA8+var_78]
STR             R1, [SP,#0xA8+var_78]
STR             R0, [R8,#0x10]
LDR             R0, [SP,#0xA8+var_74]
LDR             R1, [R8,#0x14]
STR             R0, [R8,#0x14]
LDR             R6, [SP,#0xA8+var_78]
LDR             R7, [SP,#0xA8+var_7C]
MOV             R8, #0
STR             R8, [SP,#0xA8+var_74]
CMP             R7, R6
BEQ             loc_2831C4
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R4, R6
CMP             R0, R1
BNE             loc_2831B0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2831B0
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_283178
LDR             R0, [SP,#0xA8+var_80]
STR             R8, [SP,#0xA8+var_7C]
STR             R8, [SP,#0xA8+var_78]
CMP             R0, #0
STR             R8, [SP,#0xA8+var_80]
BLNE            sub_2FF5D4
LDR             R6, [SP,#0xA8+var_78]
LDR             R7, [SP,#0xA8+var_7C]
CMP             R7, R6
BEQ             loc_283238
SUB             R6, R6, #0xC
ADD             R1, R6, #4
LDR             R0, [R6,#8]
MOV             R4, R6
CMP             R0, R1
BNE             loc_283224
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_283224
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R6
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2831EC
LDR             R0, [SP,#0xA8+var_80]
CMP             R0, #0
BEQ             loc_28324C
NOP
BL              sub_2FF5D4
LDR             R0, [SP,#0xA8+var_9C]
CMP             R0, R11
BNE             loc_283278
LDR             R0, [SP,#0xA8+var_A4]
CMP             R0, #0
BEQ             loc_283278
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xA8+var_A0]
SUBS            R9, R9, #1
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_282AA8
LDR             R0, [R5,#4]
SUB             R0, R0, #1
STR             R0, [R5,#4]
ADD             SP, SP, #0x64 ; 'd'
MOV             R0, R9
VPOP            {D8-D11}
POP             {R4-R11,PC}
