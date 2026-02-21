PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
MOV             R9, #0
MOV             R1, R9
LDR             R0, [R0,#8]
LDR             R10, =off_6CE970
LDR             R5, [R0,#0x18]
LDR             R0, [R10]
BL              sub_5EE540
VCVT.S32.F32    S0, S0
VMOV            R0, S0
CMP             R0, #6
BEQ             loc_151E34
CMP             R0, #7
BNE             loc_151A58
MOV             R2, #0
VLDR            S0, =1.0
MOV             R1, R2
VSTR            S0, [R5,#0x98]
LDR             R0, [R4,#0x34]
BL              sub_1586EC
LDR             R0, [R10]
VLDR            S0, =8.0
MOV             R1, #0
BL              sub_52A480
MOV             R9, #1
VLDR            S0, [R5,#0x39C]
LDR             R0, [R4,#0x2C]
VCVT.S32.F32    S0, S0
LDR             R1, [R0]
LDR             R3, [R0,#4]
LDR             R2, [R0,#8]
ADD             R0, R3, R1
ADD             R7, R2, R0
LDR             R0, [R10]
VMOV            R6, S0
BL              sub_5EE83C
CMP             R0, #0
NOP
BEQ             loc_151ADC
LDR             R0, [R10]
BL              sub_5EEDB4
CMP             R0, #0x100
NOP
BNE             loc_151ADC
LDR             R0, [R4,#0x2C]
LDR             R0, [R0]
CMP             R6, R0
BLT             loc_151ADC
LDR             R0, =unk_6E1DF4
VLDR            S1, =256.0
MOV             R2, #1
VLDR            S0, [R0,#(flt_6E1FB4 - 0x6E1DF4)]
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
LDR             R0, [R10]
BL              sub_530184
MOV             R0, R5
BL              sub_5C55B8
CMP             R0, #5
MOV             R11, #0
BNE             loc_151BAC
CMP             R7, R6
BGT             loc_151BAC
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #6
MOV             R0, R5
BL              sub_14C548
LDR             R2, [R4,#8]
MOV             R0, #0xA
MOV             R1, #0xB
LDR             R8, [R10]
LDRB            R2, [R2,#0x495]
CMP             R2, #0
MOVNE           R0, R1
UXTH            R7, R0
BL              sub_4635D8
MOV             R1, #7
MOV             R3, R0
STMEA           SP, {R1,R11}
MOV             R2, R5
MOV             R1, R7
MOV             R0, R8
BL              sub_52AE1C
MOV             R8, R0
LDR             R0, [R4,#0x1C]
ADD             R7, R4, #0x1C
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R8, #0
STR             R8, [R7,#4]
STRNE           R7, [R8,#0x184]
LDR             R0, [R4,#8]
LDR             R12, [R10]
LDR             R2, =0x30093
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, [R10]
MOV             R1, #0
BL              sub_5EE540
VCVT.S32.F32    S0, S0
VMOV            R0, S0
CMP             R0, #5
BEQ             loc_151D34
ADD             R0, R5, #0x39C
MOV             R8, #1
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #0xFF
STRBLS          R0, [R4,#0x14]
BLS             loc_151C48
LDR             R1, [R10]
LDR             R0, [R4,#8]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0x9B000
LDR             R0, [R0,#0x470]
LDR             R1, [R1,#(loc_19B0B4 - 0x19B000)]
ANDS            R0, R0, R1
MOVNE           R0, #1
ORRS            R0, R0, R9
BEQ             loc_151C48
LDR             R1, [R4,#0x2C]
LDR             R0, [R1]
CMP             R0, R6
STRBGT          R11, [R4,#0x14]
BGT             loc_151C48
LDR             R2, [R1,#4]
ADD             R0, R0, R2
CMP             R6, R0
STRBLT          R8, [R4,#0x14]
BLT             loc_151C48
LDR             R2, [R1,#8]
ADD             R0, R0, R2
CMP             R6, R0
MOVLT           R0, #2
BLT             loc_151C44
LDR             R1, [R1,#0xC]
ADD             R0, R0, R1
CMP             R0, R6
MOVGT           R0, #3
BLE             loc_151C48
STRB            R0, [R4,#0x14]
LDRSB           R0, [R4,#0x14]
CMN             R0, #2
BEQ             loc_151E34
LDR             R0, [R4,#0x34]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R0, [R10]
NOP
BL              sub_5EE83C
CMP             R0, #0
NOP
BEQ             loc_151CA0
LDR             R0, [R10]
BL              sub_5EEDB4
CMP             R0, #0x100
NOP
BEQ             loc_151CA0
LDR             R0, [R10]
MOV             R2, #1
MOV             R1, #0x100
BL              sub_530184
LDRSB           R0, [R4,#0x14]
LDR             R7, =unk_63FC24
CMP             R0, #2
BHI             loc_151D64
LDR             R0, [R4,#0x28]
CMP             R0, #0
BEQ             loc_151CD0
BL              sub_533330
LDR             R0, [R4,#0x28]
CMP             R0, #0
STRNE           R11, [R0,#0x184]
STRNE           R11, [R4,#0x28]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #7
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R4,#8]
LDR             R12, [R10]
LDR             R2, =0x30095
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDRD            R0, R1, [R7,#(off_63FCA8 - 0x63FC24)]
NOP
B               loc_151EE8
DCD off_6CE970
DCFS 1.0
DCFS 8.0
DCFS 256.0
DCD unk_6E1DF4
DCD 0x30093
DCD 0xFFE683CC
DCD unk_63FC24
DCD 0x30095
VLDR            S0, =0.0
MOV             R2, #0
VSTR            S0, [R5,#0x98]
LDR             R0, [R4,#0x34]
MOV             R1, #1
BL              sub_1586EC
LDR             R0, [R10]
ADD             SP, SP, #0xC
VLDR            S0, =6.0
POP             {R4-R11,LR}
MOV             R1, #0
B               sub_52A480
CMP             R0, #3
BEQ             loc_151E3C
CMN             R0, #1
BNE             loc_151E34
LDR             R0, [R4,#0x28]
CMP             R0, #0
BEQ             loc_151D94
BL              sub_533330
LDR             R0, [R4,#0x28]
CMP             R0, #0
STRNE           R11, [R0,#0x184]
STRNE           R11, [R4,#0x28]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xF
MOV             R0, R5
BL              sub_14C548
LDR             R0, [R4,#0x38]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, R5, #0x24 ; '$'
BLX             R2
LDR             R0, [R4,#0x38]
MOV             R2, #0x60 ; '`'
STRB            R8, [R0,#0xF2]
LDR             R1, [R4,#8]
MOV             R0, #0x5F ; '_'
LDR             R8, [R10]
LDR             R5, [R4,#0x38]
LDRB            R1, [R1,#0x495]
CMP             R1, #0
MOVNE           R0, R2
UXTH            R6, R0
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, R6
MOV             R0, R8
STR             R11, [SP,#0x30+var_30]
BL              sub_52B72C
MOV             R6, R0
LDR             R0, [R4,#0x3C]
ADD             R5, R4, #0x3C ; '<'
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
STR             R4, [R4,#0x44]
LDRD            R0, R1, [R7,#(off_63FCA8 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #6
MOV             R0, R5
BL              sub_14C430
LDR             R0, [R4,#0x20]
MOV             R1, #0xD
CMP             R0, #0
STRNE           R11, [R0,#0x184]
STRNE           R11, [R4,#0x20]
LDR             R2, [R4,#8]
MOV             R0, #0xC
LDR             R8, [R10]
LDRB            R2, [R2,#0x495]
CMP             R2, #0
MOVNE           R0, R1
UXTH            R6, R0
BL              sub_4635D8
MOV             R1, #7
MOV             R3, R0
STMEA           SP, {R1,R11}
MOV             R2, R5
MOV             R1, R6
MOV             R0, R8
BL              sub_52AE1C
MOV             R6, R0
LDR             R0, [R4,#0x1C]
ADD             R5, R4, #0x1C
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
LDR             R0, [R4,#8]
LDR             R12, [R10]
LDR             R2, =0x30094
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDRD            R0, R1, [R7,#(off_63FCB0 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
