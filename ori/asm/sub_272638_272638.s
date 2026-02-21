PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R6, R4, #0x400
LDR             R8, =off_6CE970
VLDR            S1, =0.0039062
VLDR            S3, =1.0
VPUSH           {D8-D9}
SUB             SP, SP, #0x4C
LDR             R0, [R8]
LDR             R1, [R4,#4]
VLDR            S18, =0.0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1C
STR             R0, [SP,#0x80+var_74]
ADD             R0, R1, #0x400
VCVT.F32.S32    S0, S0
VMUL.F32        S17, S0, S1
VLDR            S0, [R6,#0x20]
VLDR            S1, [R4,#0x20]
VMOV.F32        S2, S0
VMLA.F32        S0, S1, S17
VMOV.F32        S4, S0
VLDR            S0, [R0,#0x18C]
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BLE             loc_2726D8
VSUB.F32        S0, S0, S2
ADD             R2, SP, #0x80+var_4C
MOV             R1, #0
VSTR            S0, [SP,#0x80+var_4C]
VSTR            S18, [SP,#0x80+var_48]
VMOV.F32        S0, S3
VSTR            S18, [SP,#0x80+var_44]
LDR             R0, [SP,#0x80+var_74]
BL              sub_5A2B20
B               loc_2726F8
VSTR            S1, [SP,#0x80+var_4C]
VSTR            S18, [SP,#0x80+var_48]
VMOV.F32        S0, S3
VSTR            S18, [SP,#0x80+var_44]
LDR             R0, [SP,#0x80+var_74]
ADD             R2, SP, #0x80+var_4C
MOV             R1, #0
BL              sub_5A2B20
VMOV.F32        S0, S17
LDR             R0, [SP,#0x80+var_74]
BL              sub_5A2484
LDR             R0, [R4,#4]
ADD             R1, R4, #0x420
BL              sub_2715F4
LDR             R0, [R4,#4]
ADD             R1, SP, #0x80+var_6C
LDR             R9, =off_6CDF98
ADD             R3, SP, #0x80+var_70
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x80+var_6C]
STR             R2, [SP,#0x80+var_70]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x80+var_68]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [R9]
ADD             R2, SP, #0x80+var_40
ADD             R0, SP, #0x80+var_58
BL              sub_5CCC2C
LDR             R1, [SP,#0x80+var_68]
ADD             R0, SP, #0x80+var_6C
CMP             R1, R0
BNE             loc_27277C
LDR             R0, [SP,#0x80+var_70]
CMP             R0, #0
BEQ             loc_27277C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x80+var_6C]
LDR             R10, =0xFFE683CC
ADD             R7, SP, #0x80+var_54
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x80+var_58]
CMP             R0, #0
BEQ             loc_272964
LDR             R2, [R0,#4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x80+var_48]
STR             R2, [SP,#0x80+var_4C]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x80+var_48
STR             R2, [SP,#0x80+var_44]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x80+var_4C]
LDR             R1, [SP,#0x80+var_44]
ADD             R5, R0, #0x570
ADD             R0, SP, #0x80+var_48
CMP             R1, R0
BNE             loc_2727F0
LDR             R0, [SP,#0x80+var_4C]
CMP             R0, #0
BEQ             loc_2727F0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x80+var_48]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R5,#4]
VLDR            S1, [R5,#0x10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S3, [R6,#0x30]
VMOVGT.F32      S2, S0
VMOVLE.F32      S2, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BHI             loc_2728BC
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VLDR            S1, [R6,#0x24]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2728BC
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R0, [R8]
LDR             R1, =0x300D5
MOV             R2, #0
SUB             R0, R0, R10
BL              sub_503414
LDR             R0, [SP,#0x80+var_58]
ADD             R1, SP, #0x80+var_60
LDR             R2, [R0,#4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x80+var_60]
STR             R2, [SP,#0x80+var_64]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x80+var_5C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x80+var_64
BL              sub_26DE54
LDR             R1, [SP,#0x80+var_5C]
ADD             R0, SP, #0x80+var_60
CMP             R1, R0
BNE             loc_272914
LDR             R0, [SP,#0x80+var_64]
CMP             R0, #0
BEQ             loc_272914
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_272914
LDR             R0, [R4,#4]
MOV             R1, #2
BL              sub_2703B0
LDR             R0, [SP,#0x80+var_58]
ADD             R1, SP, #0x80+var_60
LDR             R2, [R0,#4]!
ADD             R0, R0, #4
STR             R0, [SP,#0x80+var_60]
STR             R2, [SP,#0x80+var_64]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x80+var_5C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x80+var_64]
BL              sub_27D998
LDR             R1, [SP,#0x80+var_5C]
ADD             R0, SP, #0x80+var_60
CMP             R1, R0
BNE             loc_272914
LDR             R0, [SP,#0x80+var_64]
CMP             R0, #0
BNE             loc_2728AC
LDRD            R0, R1, [SP,#0x80+var_60]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x80+var_50]
CMP             R0, R7
BNE             loc_272C6C
LDR             R0, [SP,#0x80+var_58]
CMP             R0, #0
BEQ             loc_272C6C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_272C6C
DCD off_6CE970
DCFS 0.0039062
DCFS 1.0
DCFS 0.0
DCD off_6CDF98
DCD 0xFFE683CC
DCD 0x300D5
LDR             R1, [R9]
LDRB            R0, [R4,#0x24]
LDR             R5, [R1,#0x124]
CMP             R0, #2
BEQ             loc_272A18
LDR             R0, [R8]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(flt_19B0AC - 0x19B000)]
TST             R0, #0x20000000
VLDRNE          S0, [R5,#0x194]
VNEGNE.F32      S16, S0
BEQ             loc_272A70
ADD             R0, R4, #0x14
VLDR            S0, [R4,#0x20]
VLDM            R0, {S1-S2}
VCMP.F32        S16, S18
VADD.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VMRS            APSR_nzcv, FPSCR
VSTR            S0, [R4,#0x20]
VMOVNE.F32      S0, S1
BNE             loc_2729D8
VMOV.F32        S1, S17
VLDR            S0, [R4,#0x10]
BL              sub_137A60
VLDR            S1, [R4,#0x14]
VMUL.F32        S0, S1, S0
VSTR            S0, [R4,#0x14]
VMOV.F32        S1, S17
VLDR            S2, [R4,#8]
VMLA.F32        S0, S16, S1
VLDR            S1, [R4,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_272A04
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
VSTR            S0, [R4,#0x14]
VLDR            S1, [R5,#0x198]
VLDR            S0, [R4,#0x18]
VMLA.F32        S0, S1, S17
VSTR            S0, [R4,#0x18]
VLDR            S0, [R4,#0x20]
VLDR            S1, [R5,#0x1AC]
VLDR            S2, [R5,#0x1A8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_272A40
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
MOV             R11, #1
VSTR            S0, [R4,#0x20]
VLDR            S0, [R6,#0x24]
VLDR            S1, [R6,#0x30]
LDR             R0, [R4,#4]
VSUB.F32        S0, S0, S1
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x188]
LDRB            R0, [R4,#0x25]
CMP             R0, #0
BNE             loc_272AA4
B               loc_272A80
TST             R0, #0x10000000
VMOVEQ.F32      S16, S18
VLDRNE          S16, [R5,#0x194]
B               loc_272998
ADD             R0, R4, #0x3C4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_272AA4
STRB            R11, [R4,#0x25]
LDR             R0, [R4,#4]
VLDR            S0, [R4,#0x1C]
BL              sub_270880
LDRB            R0, [R4,#0x24]
CMP             R0, #0
BEQ             loc_272AC4
CMP             R0, #1
BEQ             loc_272AEC
CMP             R0, #2
BNE             loc_272C54
B               loc_272B68
VLDR            S0, [R6,#0x30]
VLDR            S1, [R6,#0x24]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_272C54
LDR             R0, [R4,#4]
BL              sub_270708
STRB            R11, [R4,#0x24]
NOP
B               loc_272C54
LDR             R0, [R4,#0x444]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_272C54
VSTR            S18, [R4,#0x20]
LDR             R0, [R9]
MOV             R1, #2
ADD             R0, R0, #0x12800
VLDR            S0, [R0,#0x184]
LDR             R0, [SP,#0x80+var_74]
BL              sub_5A2708
MOV             R0, #2
STRB            R0, [R4,#0x24]
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R0, [R8]
LDR             R1, =0x300D4
MOV             R2, #0
SUB             R0, R0, R10
BL              sub_503414
LDR             R0, [R4,#4]
NOP
BL              sub_26FBCC
LDR             R0, [R4,#4]
NOP
BL              sub_270750
NOP
NOP
B               loc_272C54
LDR             R0, [R4,#0x444]
ADD             R0, R0, #0x5C ; '\'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_272C54
LDR             R0, [R4,#4]
ADD             R1, SP, #0x80+var_48
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x80+var_48]
STR             R2, [SP,#0x80+var_4C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x80+var_44]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x80+var_4C]
ADD             R1, SP, #0x80+var_64
BL              sub_5CCFE8
LDR             R1, [SP,#0x80+var_44]
ADD             R0, SP, #0x80+var_48
CMP             R1, R0
BNE             loc_272BE0
LDR             R0, [SP,#0x80+var_4C]
CMP             R0, #0
BEQ             loc_272BE0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x80+var_48]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0x80+var_64]
ADD             R1, R5, #0x400
ADD             R0, R0, #0x400
ADD             R0, R0, #0x198
MOV             R5, #0
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x80+var_64]
VLDR            S1, [R1,#0x2E8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_272C4C
LDR             R0, [R8]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #2
BEQ             loc_272C4C
LDR             R0, [R9]
BL              sub_5CD764
CMP             R0, #0
NOP
BEQ             loc_272C84
LDR             R0, [R4,#4]
BL              sub_2706BC
LDR             R0, [SP,#0x80+var_50]
CMP             R0, R7
BNE             loc_272C6C
LDR             R0, [SP,#0x80+var_58]
CMP             R0, #0
BNE             loc_272938
LDRD            R0, R1, [SP,#0x80+var_54]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8-D9}
POP             {R4-R11,PC}
LDR             R0, [R4,#4]
BL              sub_2706BC
LDR             R0, [R4,#4]
NOP
BL              sub_273518
LDR             R0, [R4,#4]
STRB            R5, [R0,#0x4C9]
LDR             R0, [SP,#0x80+var_50]
CMP             R0, R7
BNE             loc_272C6C
LDR             R0, [SP,#0x80+var_58]
CMP             R0, #0
BNE             loc_272938
B               loc_272C6C
