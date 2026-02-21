PUSH            {R0-R11,LR}
MOV             R12, #0
SUB             SP, SP, #0x3C
MOV             R11, R1
LDR             R0, [R1]
LDR             R2, [SP,#0x70+var_2C]
LDR             R1, [R0,#0x28]!
CMP             R1, #0
ADDNE           R0, R0, R1
LDR             R1, [R11]
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R0, R0, #0x1C
LDR             R1, [R1,#0x24]
ADD             R1, R0, R1,LSL#4
LDR             R0, [R11]
LDR             R3, [R0,#0x28]!
CMP             R3, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R0, R0, #0x1C
CMP             R0, R1
BEQ             loc_1635EC
LDR             LR, [R0,#0xC]
ADD             R3, R0, #0xC
ADD             R0, R0, #0x10
CMP             LR, #0
ADDNE           R3, R3, LR
MOVEQ           R3, R12
LDR             LR, [R3]
CMP             LR, #0x20000009
SUBNE           LR, LR, #0x10
SUBSNE          LR, LR, #0x20000001
STREQ           R2, [R3,#0x30]
CMP             R0, R1
BNE             loc_1635B8
LDR             R0, [R11]
LDR             R2, [SP,#0x70+var_2C]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
LDR             R1, [R11]
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R0, R0, #0x1C
LDR             R1, [R1,#0x1C]
ADD             R0, R0, R1,LSL#4
STR             R0, [SP,#0x70+var_70]
LDR             R0, [R11]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R10, R0, #0x1C
LDR             R0, [SP,#0x70+var_70]
MOVEQ           R10, #0
CMP             R10, R0
BEQ             loc_1637F4
LDR             R1, [R10,#0xC]
ADD             R0, R10, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
ADD             R1, R0, #0xC8
LDR             R3, [R0,#0xC8]
LDR             R0, [R0,#0xC4]
CMP             R3, #0
ADDNE           R1, R1, R3
MOVEQ           R1, R12
ADD             R8, R1, R0,LSL#2
LDR             R1, [R10,#0xC]
ADD             R0, R10, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
LDR             R1, [R0,#0xC8]!
CMP             R1, #0
ADDNE           R6, R1, R0
MOVEQ           R6, R12
CMP             R6, R8
BEQ             loc_1637E4
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R1, R0, R6
MOVEQ           R1, R12
MOV             R0, R1
LDR             R3, [R1,#0x30]!
LDR             R0, [R0,#0x2C]
CMP             R3, #0
ADDNE           R1, R1, R3
MOVEQ           R1, R12
ADD             R5, R1, R0,LSL#2
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R0, R0, R6
MOVEQ           R0, R12
LDR             R1, [R0,#0x30]!
CMP             R1, #0
ADDNE           R4, R1, R0
MOVEQ           R4, R12
CMP             R4, R5
BEQ             loc_1637D8
LDR             R0, [R4]
CMP             R0, #0
ADDNE           R1, R0, R4
MOVEQ           R1, R12
MOV             R0, R1
LDR             R3, [R1,#0x10]!
LDR             R0, [R0,#0xC]
CMP             R3, #0
ADDNE           R1, R1, R3
MOVEQ           R1, R12
ADD             LR, R1, R0,LSL#2
LDR             R0, [R4]
CMP             R0, #0
ADDNE           R0, R0, R4
MOVEQ           R0, R12
LDR             R1, [R0,#0x10]!
CMP             R1, #0
ADDNE           R3, R1, R0
MOVEQ           R3, R12
CMP             R3, LR
BEQ             loc_1637CC
LDR             R0, [R3]
CMP             R0, #0
ADDNE           R1, R0, R3
MOVEQ           R1, R12
MOV             R0, R1
LDR             R7, [R1,#4]!
LDR             R0, [R0]
CMP             R7, #0
ADDNE           R1, R1, R7
MOVEQ           R1, R12
ADD             R1, R1, R0,LSL#2
LDR             R0, [R3]
CMP             R0, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R12
LDR             R7, [R0,#4]!
CMP             R7, #0
ADDNE           R0, R0, R7
MOVEQ           R0, R12
CMP             R0, R1
BEQ             loc_1637C0
LDR             R7, [R0]
CMP             R7, #0
ADDNE           R7, R7, R0
MOVEQ           R7, R12
ADD             R0, R0, #4
CMP             R0, R1
STR             R2, [R7,#0x14]
BNE             loc_1637A0
ADD             R3, R3, #4
CMP             R3, LR
BNE             loc_16374C
ADD             R4, R4, #4
CMP             R4, R5
BNE             loc_1636F8
ADD             R6, R6, #4
CMP             R6, R8
BNE             loc_1636A4
LDR             R0, [SP,#0x70+var_70]
ADD             R10, R10, #0x10
CMP             R10, R0
BNE             loc_163648
LDR             R0, [R11]
LDR             R2, [SP,#0x70+var_2C]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
LDR             R1, [R11]
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R0, R0, #0x1C
LDR             R1, [R1,#0x1C]
ADD             R7, R0, R1,LSL#4
LDR             R0, [R11]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R0, R0, #0x1C
CMP             R0, R7
MOVNE           R5, #0x10000001
BEQ             loc_163954
MOV             R4, R0
LDR             R1, [R0,#0xC]!
CMP             R1, #0
ADDNE           R1, R1, R0
MOVEQ           R1, R12
MOV             R0, R1
LDR             R3, [R1,#0xC8]!
LDR             R0, [R0,#0xC4]
CMP             R3, #0
ADDNE           R1, R1, R3
MOVEQ           R1, R12
ADD             LR, R1, R0,LSL#2
LDR             R1, [R4,#0xC]
ADD             R0, R4, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
LDR             R1, [R0,#0xC8]!
CMP             R1, #0
ADDNE           R3, R1, R0
MOVEQ           R3, R12
CMP             R3, LR
BEQ             loc_163948
LDR             R0, [R3]
CMP             R0, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R12
CMP             R0, #0
BEQ             loc_1638C8
LDR             R1, [R0]
BICS            R1, R5, R1
MOVNE           R0, #0
CMP             R0, #0
BEQ             loc_16393C
LDR             R6, [R0,#0x3C]
ADD             R1, R0, #0x3C ; '<'
CMP             R6, #0
ADDNE           R1, R1, R6
LDR             R6, [R0,#0x38]
MOVEQ           R1, R12
ADD             R1, R1, R6,LSL#2
LDR             R6, [R0,#0x3C]!
CMP             R6, #0
ADDNE           R0, R0, R6
MOVEQ           R0, R12
CMP             R0, R1
BEQ             loc_16393C
LDR             R6, [R0]
CMP             R6, #0
ADDNE           R6, R6, R0
MOVEQ           R6, R12
CMP             R6, #0
BEQ             loc_163928
LDR             R8, [R6]
TST             R8, #0x40000000
MOVEQ           R6, #0
CMP             R6, #0
ADD             R0, R0, #4
STRNE           R2, [R6,#0x10]
CMP             R0, R1
BNE             loc_163904
ADD             R3, R3, #4
CMP             R3, LR
BNE             loc_1638A4
ADD             R0, R4, #0x10
CMP             R0, R7
BNE             loc_163848
LDR             R0, [R11]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
LDR             R1, [R11]
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R0, R0, #0x1C
LDR             R1, [R1,#0x1C]
ADD             R8, R0, R1,LSL#4
LDR             R0, [R11]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
CMP             R0, #0
ADDNE           R5, R0, #0x1C
MOVEQ           R5, #0
CMP             R5, R8
MOVNE           R7, R12
BEQ             loc_163A60
LDR             R1, [R5,#0xC]
ADD             R0, R5, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R7
ADD             R2, R0, #0xC0
LDR             R1, [R0,#0xC0]
LDR             R0, [R0,#0xBC]
CMP             R1, #0
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
BEQ             loc_163A54
LDR             R2, [R4,#0xC]
ADD             R1, R4, #0xC
ADD             R0, R5, #0xC
CMP             R2, #0
ADDNE           R2, R2, R1
LDR             R1, [R5,#0xC]
MOVEQ           R2, R7
CMP             R1, #0
ADDNE           R1, R1, R0
MOVEQ           R1, R7
ADD             R0, SP, #0x70+var_54
BL              sub_5E80B8
ADD             R4, R4, #0x10
CMP             R4, R6
BNE             loc_163A18
ADD             R5, R5, #0x10
CMP             R5, R8
BNE             loc_1639A8
LDR             R0, [SP,#0x70+var_2C]
AND             R0, R0, #0x30000
CMP             R0, #0x10000
BEQ             loc_163A90
LDR             R1, [R11]
CMP             R0, #0x20000
LDREQ           R0, =0x2030000
LDRNE           R0, =0x2020000
MOV             R3, #1
ADD             R2, SP, #0x70+var_6C
STR             R1, [SP,#0x70+var_6C]
BL              sub_146A94
LDR             R0, [SP,#0x70+var_34]
LDR             R2, [R11]
ADD             R1, R0, #0xD0
MOV             R0, R11
BL              sub_4BDC60
LDR             R0, [SP,#0x70+var_28]
CMP             R0, #0
BEQ             loc_163AC0
BL              sub_1164E4
ADD             SP, SP, #0x4C ; 'L'
POP             {R4-R11,LR}
B               sub_10C984
ADD             SP, SP, #0x4C ; 'L'
POP             {R4-R11,PC}
