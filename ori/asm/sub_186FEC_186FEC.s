PUSH            {R0,R4-R11,LR}
SUB             SP, SP, #0x10
MOV             R1, #0
LDR             R0, [SP,#0x38+var_28]
LDR             R0, [R0]
LDR             R2, [R0,#0xF8]
LDR             R0, [SP,#0x38+var_28]
BLX             R2
CMP             R0, #0
BNE             loc_1875B8
LDR             R0, [SP,#0x38+var_28]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0xFC
LDR             R0, [R0]
LDR             R1, [R0,#0x60]
ADD             R0, R0, R1
LDR             R1, [SP,#0x38+var_28]
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x3D00
STR             R0, [R1,#0x2C]
LDR             R0, [SP,#0x38+var_28]
LDR             R0, [R0]
LDR             R1, [R0,#0x90]
LDR             R0, [SP,#0x38+var_28]
BLX             R1
ORR             R1, R0, #0x2000000
LDR             R0, [SP,#0x38+var_28]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x12C
MOV             R11, R0
BL              sub_62A370
LDR             R0, [SP,#0x38+var_28]
LDR             R0, [R0]
LDR             R1, [R0,#0x90]
LDR             R0, [SP,#0x38+var_28]
BLX             R1
ORR             R4, R0, #0x2000000
MOV             R1, R11
MOV             R0, SP
BL              sub_4BE554
LDR             R5, [SP,#0x38+var_34]
MOV             R1, R11
MOV             R0, SP
STR             R5, [SP,#0x38+var_2C]
BL              sub_4BE554
LDR             R10, [SP,#0x38+var_38]
CMP             R10, R5
MOVNE           R3, #0
BEQ             loc_18725C
LDR             R1, [R10,#0xC]
ADD             R0, R10, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R3
ADD             R1, R0, #0xC8
LDR             R2, [R0,#0xC8]
LDR             R0, [R0,#0xC4]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R3
ADD             R8, R1, R0,LSL#2
LDR             R1, [R10,#0xC]
ADD             R0, R10, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R3
LDR             R1, [R0,#0xC8]!
CMP             R1, #0
ADDNE           R6, R1, R0
MOVEQ           R6, R3
CMP             R6, R8
BEQ             loc_18724C
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R0, R0, R6
MOVEQ           R0, R3
ADD             R1, R0, #0x30 ; '0'
LDR             R2, [R0,#0x30]
LDR             R0, [R0,#0x2C]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R3
ADD             R5, R1, R0,LSL#2
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R0, R0, R6
MOVEQ           R0, R3
LDR             R1, [R0,#0x30]!
CMP             R1, #0
ADDNE           LR, R1, R0
MOVEQ           LR, R3
CMP             LR, R5
BEQ             loc_187240
LDR             R0, [LR]
CMP             R0, #0
ADDNE           R1, R0, LR
MOVEQ           R1, R3
MOV             R0, R1
LDR             R2, [R1,#0x10]!
LDR             R0, [R0,#0xC]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R3
ADD             R12, R1, R0,LSL#2
LDR             R0, [LR]
CMP             R0, #0
ADDNE           R0, R0, LR
MOVEQ           R0, R3
LDR             R1, [R0,#0x10]!
CMP             R1, #0
ADDNE           R2, R1, R0
MOVEQ           R2, R3
CMP             R2, R12
BEQ             loc_187234
LDR             R0, [R2]
CMP             R0, #0
ADDNE           R1, R0, R2
MOVEQ           R1, R3
MOV             R0, R1
LDR             R7, [R1,#4]!
LDR             R0, [R0]
CMP             R7, #0
ADDNE           R1, R1, R7
MOVEQ           R1, R3
ADD             R1, R1, R0,LSL#2
LDR             R0, [R2]
CMP             R0, #0
ADDNE           R0, R0, R2
MOVEQ           R0, R3
LDR             R7, [R0,#4]!
CMP             R7, #0
ADDNE           R0, R0, R7
MOVEQ           R0, R3
CMP             R0, R1
BEQ             loc_187228
LDR             R7, [R0]
CMP             R7, #0
ADDNE           R7, R7, R0
MOVEQ           R7, R3
ADD             R0, R0, #4
CMP             R0, R1
STR             R4, [R7,#0x14]
BNE             loc_187208
ADD             R2, R2, #4
CMP             R2, R12
BNE             loc_1871B4
ADD             LR, LR, #4
CMP             LR, R5
BNE             loc_187160
ADD             R6, R6, #4
CMP             R6, R8
BNE             loc_18710C
LDR             R0, [SP,#0x38+var_2C]
ADD             R10, R10, #0x10
CMP             R10, R0
BNE             loc_1870B0
LDR             R0, [SP,#0x38+var_28]
LDR             R0, [R0]
LDR             R1, [R0,#0x90]
LDR             R0, [SP,#0x38+var_28]
BLX             R1
ORR             R4, R0, #0x2000000
MOV             R1, R11
MOV             R0, SP
BL              sub_4BE554
LDR             R8, [SP,#0x38+var_34]
MOV             R1, R11
MOV             R0, SP
BL              sub_4BE554
LDR             LR, [SP,#0x38+var_38]
CMP             LR, R8
MOVNE           R6, #0x10000001
MOVNE           R3, #0
BEQ             loc_1873B0
LDR             R1, [LR,#0xC]
ADD             R0, LR, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R3
ADD             R1, R0, #0xC8
LDR             R2, [R0,#0xC8]
LDR             R0, [R0,#0xC4]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R3
ADD             R12, R1, R0,LSL#2
LDR             R1, [LR,#0xC]
ADD             R0, LR, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R3
LDR             R1, [R0,#0xC8]!
CMP             R1, #0
ADDNE           R2, R1, R0
MOVEQ           R2, R3
CMP             R2, R12
BEQ             loc_1873A4
LDR             R0, [R2]
CMP             R0, #0
ADDNE           R0, R0, R2
MOVEQ           R0, R3
CMP             R0, #0
BEQ             loc_187324
LDR             R1, [R0]
BICS            R1, R6, R1
MOVNE           R0, #0
CMP             R0, #0
BEQ             loc_187398
LDR             R5, [R0,#0x3C]
ADD             R1, R0, #0x3C ; '<'
CMP             R5, #0
ADDNE           R1, R1, R5
LDR             R5, [R0,#0x38]
MOVEQ           R1, R3
ADD             R1, R1, R5,LSL#2
LDR             R5, [R0,#0x3C]!
CMP             R5, #0
ADDNE           R0, R0, R5
MOVEQ           R0, R3
CMP             R0, R1
BEQ             loc_187398
LDR             R5, [R0]
CMP             R5, #0
ADDNE           R5, R5, R0
MOVEQ           R5, R3
CMP             R5, #0
BEQ             loc_187384
LDR             R7, [R5]
TST             R7, #0x40000000
MOVEQ           R5, #0
CMP             R5, #0
ADD             R0, R0, #4
STRNE           R4, [R5,#0x10]
CMP             R0, R1
BNE             loc_187360
ADD             R2, R2, #4
CMP             R2, R12
BNE             loc_187300
ADD             LR, LR, #0x10
CMP             LR, R8
BNE             loc_1872A4
LDR             R0, [R11]
MOV             R4, #0
LDR             R0, [R0,#0x1C]
CMP             R0, #0
MOVGT           R5, #0
BLE             loc_187414
LDR             R0, [R11]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R5
CMP             R0, #0
BEQ             loc_1873F8
ADD             R0, R0, R4,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, R5
ADDNE           R0, R0, R1
NOP
BL              sub_59CEC0
LDR             R0, [R11]
ADD             R4, R4, #1
LDR             R0, [R0,#0x1C]
CMP             R0, R4
BGT             loc_1873C8
MOV             R1, R11
ADD             R0, SP, #0x38+var_30
BL              sub_4BE554
LDR             R8, [SP,#0x38+var_2C]
MOV             R1, R11
ADD             R0, SP, #0x38+var_30
BL              sub_4BE554
LDR             R5, [SP,#0x38+var_30]
CMP             R5, R8
MOVNE           R7, #0
BEQ             loc_1874F8
LDR             R1, [R5,#0xC]
ADD             R0, R5, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R7
ADD             R1, R0, #0xC0
LDR             R2, [R0,#0xC0]
LDR             R0, [R0,#0xBC]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R7
CMP             R1, #0
ADDNE           R1, R1, #0x1C
ADD             R6, R1, R0,LSL#4
LDR             R1, [R5,#0xC]
ADD             R0, R5, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R7
LDR             R1, [R0,#0xC0]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R7
CMP             R0, #0
ADDNE           R4, R0, #0x1C
MOVEQ           R4, #0
CMP             R4, R6
BEQ             loc_1874EC
LDR             R1, [R4,#0xC]
ADD             R2, R4, #0xC
ADD             R0, R5, #0xC
CMP             R1, #0
ADDNE           R2, R2, R1
LDR             R1, [R5,#0xC]
MOVEQ           R2, R7
CMP             R1, #0
ADDNE           R1, R1, R0
MOVEQ           R1, R7
MOV             R0, SP
BL              sub_5E80B8
ADD             R4, R4, #0x10
CMP             R4, R6
BNE             loc_1874B0
ADD             R5, R5, #0x10
CMP             R5, R8
BNE             loc_187440
LDR             R5, [SP,#0x38+var_28]
LDR             R0, [SP,#0x38+var_28]
ADD             R5, R5, #0x13C00
ADD             R5, R5, #0x138
ADD             R4, R0, #0x13C00
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_18757C
LDR             R0, [SP,#0x38+var_28]
LDR             R1, [R0]
LDR             R1, [R1,#0x90]
BLX             R1
CMP             R0, #0x20000
MOVEQ           R0, #0x30000
MOVNE           R0, #0x20000
LDR             R1, [R4,#0x12C]
ORR             R0, R0, #0x2000000
MOV             R3, #1
MOV             R2, R5
BL              sub_146A94
LDR             R0, [SP,#0x38+var_28]
LDR             R2, [R4,#0x12C]
ADD             R1, R0, #0xD0
MOV             R0, R11
BL              sub_4BDC60
LDR             R0, [SP,#0x38+var_28]
LDR             R2, [R4,#0x138]
ADD             R1, R0, #0xD0
MOV             R0, R11
BL              sub_4BDC60
NOP
NOP
B               loc_187590
LDR             R0, [SP,#0x38+var_28]
LDR             R2, [R4,#0x12C]
ADD             R1, R0, #0xD0
MOV             R0, R11
BL              sub_4BDC60
LDR             R0, [SP,#0x38+var_28]
MOV             R3, #0
LDR             R0, [R0]
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DAE4
LDM             R0, {R1,R2}
LDR             R0, [SP,#0x38+var_28]
ADD             SP, SP, #0x14
POP             {R4-R11,LR}
BX              R12
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
