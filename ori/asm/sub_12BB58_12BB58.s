PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
LDR             R10, [R0,#0x10]
CMP             R10, #0
BEQ             loc_12C280
LDR             R0, [R4,#0x334]
LDR             R1, =sub_135F08
MOV             R9, #0
CMP             R0, #0
LDRNE           R0, [R4,#0x33C]
MOV             R11, #1
MOV             R2, R4
CMPNE           R0, #0
LDR             R0, [R4,#0x28]
STR             R9, [R4,#0xC]
BEQ             loc_12BC5C
BL              sub_132DB4
STR             R0, [R4,#8]
CMP             R0, #0
STR             R0, [R4,#0xC]
BEQ             loc_12BBC0
MOV             R1, #1
BL              sub_14121C
LDR             R0, [R4,#8]
BL              sub_134184
STR             R9, [R4,#0x2C]
STR             R11, [R4,#0x3C]
LDR             R0, [R4,#0x334]
MOV             R6, #0
CMP             R0, #0
LDRNE           R0, [R4,#0x33C]
CMPNE           R0, #0
BEQ             loc_12BC38
BL              sub_133EF4
MOVS            R6, R0
NOP
BEQ             loc_12BC1C
LDR             R0, [R4,#0x334]
STR             R0, [R6]
LDR             R0, [R4,#0x33C]
STR             R0, [R6,#4]
LDR             R0, [R4,#0x338]
STR             R0, [R6,#8]
LDR             R0, [R4,#0x340]
CMP             R0, #0
MOVNE           R0, #1
STRB            R0, [R6,#0x10]
STR             R9, [R6,#0xC]
ADDS            R0, R4, #0x334
BEQ             loc_12BC38
MOV             R1, #0
MOV             R2, R1
MOV             R3, R1
MOV             R12, R1
STM             R0, {R1-R3,R12}
LDR             R8, [R4,#8]
CMP             R8, #0x10000
BLE             loc_12C25C
CMP             R6, #0
BEQ             loc_12C250
LDRB            R0, [R6,#0x11]
CMP             R0, #0
BEQ             loc_12BFEC
B               loc_12C250
NOP
BL              sub_132DB4
STR             R0, [R4,#8]
CMP             R0, #0
STR             R0, [R4,#0xC]
BEQ             loc_12BC88
MOV             R1, #1
BL              sub_14121C
LDR             R0, [R4,#8]
NOP
BL              sub_134184
LDR             R8, [R4,#8]
STR             R9, [R4,#0x2C]
STR             R11, [R4,#0x3C]
LDR             R6, [R4,#0x18]
CMP             R8, #0x10000
BLE             loc_12C268
CMP             R6, #0
BEQ             loc_12BFD4
MOV             R0, R10
BL              sub_137788
STR             R0, [R4,#4]
MOV             R0, R10
ADD             R0, R0, #0x2D4
MOV             R7, R0
NOP
BL              sub_1361C8
CMP             R0, #0
MOV             R5, #0
BEQ             loc_12BCF8
ADD             R0, R5, R5,LSL#2
ADD             R2, R4, R0,LSL#4
ADD             R1, R7, R0,LSL#4
ADD             R0, R2, #0x1C4
BL              sub_134470
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_12BCD4
B               loc_12BD14
ADD             R0, R5, R5,LSL#2
ADD             R0, R4, R0,LSL#4
ADD             R0, R0, #0x1C4
BL              sub_1341BC
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_12BCF8
LDR             R7, [R6,#0x10]
MOV             R5, #0
BL              sub_133EF4
MOVS            R1, R0
NOP
BEQ             loc_12BD78
STR             R7, [R1]
LDR             R2, [R6,#0x14]
ADD             R0, R6, #0x4A ; 'J'
MOV             R5, #1
STR             R2, [R1,#4]
LDR             R2, [R6]
STR             R2, [R1,#0xC]
STRB            R9, [R1,#0x10]
STR             R0, [R1,#8]
ADD             R0, R4, #0x50 ; 'P'
ADD             R2, R4, #0x150
LDR             R3, [R0,#8]
CMP             R3, #0
BEQ             loc_12BE58
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R2
BNE             loc_12BD58
MOV             R0, R8
BL              sub_13F00C
LDR             R0, [R6,#0x18]
CMP             R0, #0
BLT             loc_12BE08
CMP             R5, #0
BEQ             loc_12BE08
BL              sub_133EF4
MOVS            R1, R0
NOP
BEQ             loc_12BE08
LDR             R0, [R6,#0x18]
LDR             R3, =0x92492493
MOV             R12, R9
ADD             R2, R6, #0x50 ; 'P'
SMLAL           R12, R0, R3, R0
MOV             R3, R0,ASR#3
SUB             R0, R3, R0,ASR#31
ADD             R0, R7, R0,LSL#3
STR             R0, [R1]
ADD             R0, R6, #0x14
LDM             R0, {R0,R3}
SUB             R0, R0, R3
STR             R0, [R1,#4]
LDR             R0, [R6]
STR             R0, [R1,#0xC]
STRB            R11, [R1,#0x10]
STR             R2, [R1,#8]
ADD             R0, R4, #0x50 ; 'P'
ADD             R2, R4, #0x150
LDR             R3, [R0,#8]
CMP             R3, #0
BEQ             loc_12BE98
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R2
BNE             loc_12BDE8
MOV             R0, R8
BL              sub_13F00C
ADD             R1, R6, #0x28 ; '('
MOV             R0, R8
BL              sub_13EF3C
MOV             R1, #0
MOV             R0, R8
BL              sub_13F120
MOV             R1, #1
MOV             R0, R8
BL              sub_13EFC8
MOV             R1, #2
MOV             R0, R8
BL              sub_13EFE8
LDR             R1, [R6,#8]
CMP             R1, #0
BLE             loc_12BED8
MOV             R0, R8
BL              sub_13EF90
NOP
NOP
B               loc_12BEE4
STR             R1, [R0,#8]
LDR             R2, [R1]
STR             R2, [R0,#0xC]
LDR             R2, [R1,#4]
STR             R2, [R0,#0x10]
LDR             R2, [R4,#0x4C]
STR             R2, [R0,#0x14]
LDR             R2, [R4,#0x4C]
ADD             R2, R2, #1
STR             R2, [R4,#0x4C]
LDR             R3, [R1]
LDRD            R2, R3, [R3]
STRD            R2, R3, [R0]
LDR             R2, [R4,#0x20]
STR             R2, [R0,#0x18]
B               loc_12BD70
STR             R1, [R0,#8]
LDR             R2, [R1]
STR             R2, [R0,#0xC]
LDR             R2, [R1,#4]
STR             R2, [R0,#0x10]
LDR             R2, [R4,#0x4C]
STR             R2, [R0,#0x14]
LDR             R2, [R4,#0x4C]
ADD             R3, R2, #1
STR             R3, [R4,#0x4C]
LDR             R3, [R1]
LDRD            R2, R3, [R3]
STRD            R2, R3, [R0]
LDR             R2, [R4,#0x20]
STR             R2, [R0,#0x18]
B               loc_12BE00
MOV             R1, #0x7D00
MOV             R0, R8
BL              sub_13EF90
MOV             R1, #0
MOV             R0, R8
BL              sub_13EF5C
MOV             R1, #0
MOV             R0, R8
BL              sub_13335C
MOV             R0, R10
NOP
ADD             R0, R0, #0x254
MOV             R1, R0
ADD             R0, R4, #0x190
BL              sub_1345C4
LDR             R0, [R4,#0x1C0]
STR             R0, [SP,#0x38+var_38]
MOV             R0, R10
BL              sub_1358AC
LDR             R1, [SP,#0x38+var_38]
MOV             R2, R6
ADD             R0, R0, R1
STR             R0, [SP,#0x38+var_38]
MOV             R1, SP
MOV             R0, R4
BL              sub_135E00
MOV             R0, R8
NOP
BL              sub_13337C
MOV             R0, R10
NOP
BL              sub_13F7FC
VSTR            S0, [R4,#0x30]
ADD             R0, R4, #0x190
BL              sub_141708
VLDR            S1, [R4,#0x30]
MOV             R0, R8
VMUL.F32        S0, S0, S1
BL              sub_13F1A0
LDRB            R0, [R6,#0x25]
CMP             R0, #0x40 ; '@'
BEQ             loc_12BFB0
VMOV            S0, R0
VLDR            S2, =0.007874
VLDR            S1, =180.0
MOV             R1, #0
MOV             R0, R4
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
BL              sub_1359BC
NOP
NOP
B               loc_12BFC4
MOV             R0, R10
BL              sub_13F78C
MOV             R1, #0
MOV             R0, R4
BL              sub_1359BC
CMP             R5, #0
BNE             loc_12C240
CMP             R8, #0x10000
BLE             loc_12C268
MOV             R1, #0
MOV             R0, R8
BL              sub_13E478
NOP
NOP
B               loc_12C268
MOV             R0, R6
BL              sub_1361C8
CMP             R0, #0
NOP
BEQ             loc_12C250
MOV             R0, R4
BL              sub_1361C8
CMP             R0, #0
NOP
BEQ             loc_12C250
MOV             R0, R10
LDR             R0, [R0,#0x40]
MOV             R7, R0
MOV             R5, #0
ADD             R0, R5, R5,LSL#2
ADD             R0, R4, R0,LSL#4
ADD             R0, R0, #0x1C4
BL              sub_1341BC
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_12C024
CMP             R6, #0
ADDNE           R0, R4, #0x50 ; 'P'
ADDNE           R1, R4, #0x150
BEQ             loc_12C068
LDR             R2, [R0,#8]
CMP             R2, #0
BEQ             loc_12C0A8
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R1
BNE             loc_12C050
MOV             R1, R6
MOV             R0, R8
BL              sub_13F00C
LDR             R1, [R4,#0x1C]
MOV             R0, R8
BL              sub_13EF3C
LDR             R0, [R4,#4]
SUB             R1, R0, #0x100
SUBS            R1, R1, #0x2D ; '-'
BNE             loc_12C0E8
MOV             R1, #1
MOV             R0, R8
BL              sub_13F120
NOP
NOP
B               loc_12C0F4
STR             R6, [R0,#8]
LDR             R1, [R6]
STR             R1, [R0,#0xC]
LDR             R1, [R6,#4]
STR             R1, [R0,#0x10]
LDR             R1, [R4,#0x4C]
STR             R1, [R0,#0x14]
LDR             R1, [R4,#0x4C]
ADD             R2, R1, #1
STR             R2, [R4,#0x4C]
LDR             R2, [R6]
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
LDR             R1, [R4,#0x20]
STR             R1, [R0,#0x18]
B               loc_12C068
MOV             R1, #0
MOV             R0, R8
BL              sub_13F120
MOV             R1, #1
MOV             R0, R8
BL              sub_13EFC8
MOV             R1, #2
MOV             R0, R8
BL              sub_13EFE8
LDR             R1, [R7,#0xC]
CMP             R1, #0
BLE             loc_12C12C
MOV             R0, R8
BL              sub_13EF90
NOP
NOP
B               loc_12C138
MOV             R1, #0x7D00
MOV             R0, R8
BL              sub_13EF90
MOV             R1, #0
MOV             R0, R8
BL              sub_13EF5C
MOV             R1, #0
MOV             R0, R8
BL              sub_13335C
MOV             R0, #0x7F
STRB            R9, [SP,#0x38+var_30]
STRB            R0, [SP,#0x38+var_2F]
MOV             R1, #0xA
STRH            R9, [SP,#0x38+var_38]
STRH            R9, [SP,#0x38+var_34]
STRB            R0, [SP,#0x38+var_2E]
ADDS            R2, R4, #0x190
STRH            R9, [SP,#0x38+var_38+2]
STRH            R1, [SP,#0x38+var_32]
STRB            R0, [SP,#0x38+var_2D]
BEQ             loc_12C18C
MOV             R1, SP
MOV             R0, R2
BL              sub_12B604
MOV             R0, R10
STR             R9, [SP,#0x38+var_2C]
BL              sub_1358AC
LDR             R1, [SP,#0x38+var_2C]
MOV             R2, #0
ADD             R0, R0, R1
STR             R0, [SP,#0x38+var_2C]
ADD             R1, SP, #0x38+var_2C
MOV             R0, R4
BL              sub_135E00
MOV             R0, R8
NOP
BL              sub_13337C
MOV             R0, R10
NOP
BL              sub_13F7FC
VSTR            S0, [R4,#0x30]
ADD             R0, R4, #0x190
BL              sub_141708
VLDR            S1, [R4,#0x30]
MOV             R0, R8
VMUL.F32        S0, S0, S1
BL              sub_13F1A0
LDRSB           R0, [R7,#0x1E]
VLDR            S0, =90.0
CMP             R0, #2
CMPLE           R0, #1
BLE             loc_12C218
LDR             R0, [R4,#0x24]
ADD             R1, R0, #1
MOV             R0, R4
BL              sub_1359BC
NOP
NOP
B               loc_12C22C
MOV             R0, R10
BL              sub_13F78C
MOV             R1, #0
MOV             R0, R4
BL              sub_1359BC
MOV             R0, R10
LDR             R0, [R0,#8]
CMP             R0, #0
NOP
BEQ             loc_12C280
LDR             R0, [R4,#0x44]
ORR             R0, R0, #2
STR             R0, [R4,#0x44]
B               loc_12C280
MOV             R1, #0
MOV             R0, R8
BL              sub_13E478
CMP             R6, #0
MOVNE           R0, #3
STRBNE          R0, [R6,#0x11]
MOV             R1, R4
MOV             R0, R10
BL              sub_13F2E0
STR             R9, [R4,#0x10]
STR             R9, [R4,#8]
STR             R9, [R4,#0x20]
LDR             R1, [R4,#0x44]
LDR             R2, [R4,#0x10]
LDR             R0, [R4,#8]
BIC             R1, R1, #0x100
CMP             R2, #0
CMPNE           R0, #0
STR             R1, [R4,#0x44]
BEQ             loc_12C2D8
TST             R1, #2
BEQ             loc_12C2D8
BIC             R1, R1, #2
ORR             R1, R1, #4
STR             R1, [R4,#0x44]
ADD             SP, SP, #0x14
MOV             R1, #0
POP             {R4-R11,LR}
B               sub_14121C
DCD sub_135F08
DCD 0x92492493
DCFS 0.007874
DCFS 180.0
DCFS 90.0
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
