PUSH            {R0-R11,LR}
SUB             SP, SP, #4
CMP             R2, #0x64 ; 'd'
MOV             R4, R0
MOV             R9, R2
LDR             R6, [SP,#0x38+arg_4]
LDR             R7, [SP,#0x38+arg_0]
LDR             R8, [R0,#0x10]
BNE             loc_133970
CMP             R7, #0
BEQ             loc_133918
LDR             R0, [R4,#0xC]
LDR             R11, [SP,#0x38+var_28]
ADD             R5, R0, #0x4000
ADD             R5, R5, #0x2780
MOV             R0, R5
BL              sub_13F7E8
CMP             R0, #0
NOP
BNE             loc_133908
MOV             R1, #0x64 ; 'd'
MOV             R0, R5
BL              sub_1348CC
CMP             R0, #0
NOP
BEQ             loc_133908
MOV             R0, R5
LDR             R0, [R0,#0x20]
CMP             R0, R11
NOP
BGT             loc_133908
MOV             R0, R5
LDR             R0, [R0,#0x40]
LDRH            R0, [R0,#6]
TST             R0, R7
BEQ             loc_133908
MOV             R1, #0
MOV             R0, R5
BL              sub_13551C
LDR             R0, [R4,#0xC]
SUB             R5, R5, #0x480
CMP             R0, R5
BLS             loc_1338A8
MOV             R5, #0x18
CMP             R9, #0xC8
MOV             R0, R9
BEQ             loc_133988
CMP             R0, #0x12C
BEQ             loc_1339C0
SUB             R0, R9, #0x100
SUBS            R0, R0, #0x2D ; '-'
CMPNE           R0, #1
LDRNE           R0, [R4,#0xC]
ADDNE           R7, R0, #0x4000
ADDNE           R7, R7, #0x2780
BEQ             loc_1339C0
MOV             R0, R7
BL              sub_13F7E8
CMP             R0, #0
LDR             R0, [R4,#0xC]
SUBEQ           R5, R5, #1
SUB             R7, R7, #0x480
CMP             R0, R7
BLS             loc_13394C
B               loc_1339EC
CMP             R9, #0x64 ; 'd'
LDRNE           R0, [R4,#8]
MOVEQ           R5, #0x18
SUBNE           R5, R0, #0x18
BEQ             loc_133930
B               loc_13391C
LDRD            R0, R1, [R4,#8]
SUB             R5, R0, #0x18
ADD             R7, R1, #0x6C00
MOV             R0, R7
BL              sub_13F7E8
CMP             R0, #0
LDRD            R0, R1, [R4,#8]
SUBEQ           R5, R5, #1
ADD             R7, R7, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R7
BHI             loc_133994
B               loc_1339EC
LDR             R7, [R4,#0xC]
MOV             R5, #0x18
MOV             R0, R7
BL              sub_13F7E8
CMP             R0, #0
LDR             R0, [R4,#0xC]
SUBEQ           R5, R5, #1
ADD             R7, R7, #0x480
ADD             R0, R0, #0x6C00
CMP             R0, R7
BHI             loc_1339C8
CMP             R6, R5
MOVLS           R5, #0
BHI             loc_133AFC
CMP             R9, #0xC8
BEQ             loc_133A2C
CMP             R9, #0x12C
SUBNE           R0, R9, #0x100
SUBSNE          R0, R0, #0x2D ; '-'
CMPNE           R0, #1
BEQ             loc_133A6C
CMP             R5, #0
LDREQ           R0, [R4,#0xC]
SUBNE           R5, R5, #0x480
ADDEQ           R5, R0, #0x4000
ADDEQ           R5, R5, #0x2780
B               loc_133AA4
CMP             R5, #0
LDREQ           R0, [R4,#0xC]
ADDNE           R5, R5, #0x480
ADDEQ           R5, R0, #0x6C00
MOV             R0, R5
BL              sub_13F7E8
CMP             R0, #0
NOP
BNE             loc_133AB8
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BHI             loc_133A3C
B               loc_133AF4
CMP             R5, #0
ADDNE           R5, R5, #0x480
LDREQ           R5, [R4,#0xC]
MOV             R0, R5
BL              sub_13F7E8
CMP             R0, #0
NOP
BNE             loc_133AB8
LDR             R0, [R4,#0xC]
ADD             R5, R5, #0x480
ADD             R0, R0, #0x6C00
CMP             R0, R5
BHI             loc_133A78
B               loc_133AF4
MOV             R0, R5
BL              sub_13F7E8
CMP             R0, #0
NOP
BEQ             loc_133AE4
CMP             R5, #0
BEQ             loc_133ACC
MOV             R1, #1
MOV             R0, R5
STR             R1, [R0,#0x14]
SUBS            R6, R6, #1
STR             R5, [R8],#4
BNE             loc_1339F8
LDR             R0, [R4,#0x10]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
LDR             R0, [R4,#0xC]
SUB             R5, R5, #0x480
CMP             R0, R5
BLS             loc_133AA4
MOV             R5, #0
B               loc_133ACC
LDR             R7, [SP,#0x38+var_28]
CMP             R9, #0xC8
BEQ             loc_133C04
LDR             R1, [R4,#0xC]
CMP             R9, #0x12C
MOV             R11, #0
ADD             R5, R1, #0x4000
ADD             R5, R5, #0x2780
SUBGE           R7, R7, #1
STR             R11, [SP,#0x38+var_38]
MOV             R0, R5
BL              sub_13F7E8
CMP             R0, #0
NOP
BNE             loc_133BA4
MOV             R1, #0x64 ; 'd'
MOV             R0, R5
BL              sub_1348CC
CMP             R0, #0
NOP
BEQ             loc_133BA4
MOV             R0, R5
LDR             R0, [R0,#0x20]
CMP             R0, R7
MOV             R10, R0
BGT             loc_133BA4
MOV             R0, R5
LDR             R0, [R0,#0x2C]
CMP             R10, R7
NOP
BGE             loc_133B8C
CMP             R0, #0
BEQ             loc_133B8C
MOV             R11, #0
MOV             R7, R10
STR             R11, [SP,#0x38+var_38]
CMP             R11, R0
BGE             loc_133BA4
MOV             R11, R0
MOV             R0, R5
LDR             R0, [R0,#0xC]
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R4,#0xC]
SUB             R5, R5, #0x480
CMP             R0, R5
BLS             loc_133B24
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
LDRNE           R0, [R4,#0xC]
ADDNE           R5, R0, #0x4000
ADDNE           R5, R5, #0x2780
BEQ             loc_133C04
LDR             R1, [SP,#0x38+var_38]
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_133BF0
MOV             R1, #0
MOV             R0, R5
BL              sub_13551C
LDR             R0, [R4,#0xC]
SUB             R5, R5, #0x480
CMP             R0, R5
BLS             loc_133BCC
B               loc_133970
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4-R11,PC}
