PUSH            {R0,R4-R11,LR}
SUB             SP, SP, #0x20
MOV             R1, #0
LDR             R0, [SP,#0x48+var_28]
LDR             R0, [R0]
LDR             R2, [R0,#0x1A8]
LDR             R0, [SP,#0x48+var_28]
BLX             R2
CMP             R0, #0
BNE             loc_187FA0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_187964
LDR             R0, [SP,#0x48+var_28]
LDR             R0, [R0]
LDR             R1, [R0,#0xC4]
LDR             R0, [SP,#0x48+var_28]
BLX             R1
MOV             R0, #0
STR             R0, [SP,#0x48+var_44]
LDR             R1, [SP,#0x48+var_44]
LDR             R0, [SP,#0x48+var_28]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x9C
STR             R0, [SP,#0x48+var_34]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_187F6C
LDR             R0, [SP,#0x48+var_28]
ADD             R0, R0, R1
ADD             R0, R0, #0x14000
MOV             R1, #0
STR             R0, [SP,#0x48+var_30]
STR             R1, [SP,#0x48+var_40]
LDRB            R0, [R0,#0x289]
CMP             R0, #0
BLE             loc_187F6C
LDR             R0, [SP,#0x48+var_34]
LDR             R1, [R0]
LDR             R0, [SP,#0x48+var_40]
ADD             R0, R1, R0,LSL#6
STR             R0, [SP,#0x48+var_48]
MOV             R0, #0x10000
STR             R0, [SP,#0x48+var_3C]
LDR             R0, [SP,#0x48+var_48]
LDR             R0, [R0,#0x3C]
CMP             R0, #0
BNE             loc_187F50
LDR             R0, [SP,#0x48+var_48]
LDR             R2, =0x2010000
LDR             R1, [R0,#0x38]!
LDR             R0, [R0]
ADD             R3, R1, #0x28 ; '('
LDR             R12, [R1,#0x28]
LDR             R1, [R1,#0x24]
CMP             R12, #0
ADDNE           R3, R3, R12
MOVEQ           R3, #0
CMP             R3, #0
ADDNE           R3, R3, #0x1C
ADD             R1, R3, R1,LSL#4
LDR             R3, [R0,#0x28]!
CMP             R3, #0
ADDNE           R0, R0, R3
MOVEQ           R0, #0
CMP             R0, #0
ADDNE           R12, R0, #0x1C
MOVEQ           R12, #0
CMP             R12, R1
MOVNE           R3, #0
BEQ             loc_187A70
MOV             R0, R12
LDR             LR, [R12,#0xC]!
CMP             LR, #0
ADDNE           R12, R12, LR
MOVEQ           R12, R3
LDR             LR, [R12]
CMP             LR, #0x20000009
SUBNE           LR, LR, #0x10
SUBSNE          LR, LR, #0x20000001
STREQ           R2, [R12,#0x30]
ADD             R12, R0, #0x10
CMP             R12, R1
BNE             loc_187A3C
LDR             R0, [SP,#0x48+var_3C]
ORR             R3, R0, #0x2000000
LDR             R0, [SP,#0x48+var_48]
LDR             R1, [R0,#0x38]!
LDR             R0, [R0]
ADD             R2, R1, #0x20 ; ' '
LDR             R12, [R1,#0x20]
LDR             R1, [R1,#0x1C]
CMP             R12, #0
ADDNE           R2, R2, R12
MOVEQ           R2, #0
CMP             R2, #0
ADDNE           R2, R2, #0x1C
ADD             R11, R2, R1,LSL#4
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, #0
CMP             R0, #0
ADDNE           R0, R0, #0x1C
CMP             R0, R11
MOVNE           R4, #0
BEQ             loc_187C74
MOV             R10, R0
LDR             R1, [R0,#0xC]!
CMP             R1, #0
ADDNE           R1, R1, R0
MOVEQ           R1, R4
MOV             R0, R1
LDR             R2, [R1,#0xC8]!
LDR             R0, [R0,#0xC4]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R4
ADD             R8, R1, R0,LSL#2
LDR             R1, [R10,#0xC]
ADD             R0, R10, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R4
LDR             R1, [R0,#0xC8]!
CMP             R1, #0
ADDNE           R6, R1, R0
MOVEQ           R6, R4
CMP             R6, R8
BEQ             loc_187C68
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R1, R0, R6
MOVEQ           R1, R4
MOV             R0, R1
LDR             R2, [R1,#0x30]!
LDR             R0, [R0,#0x2C]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R4
ADD             R5, R1, R0,LSL#2
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R0, R0, R6
MOVEQ           R0, R4
LDR             R1, [R0,#0x30]!
CMP             R1, #0
ADDNE           LR, R1, R0
MOVEQ           LR, R4
CMP             LR, R5
BEQ             loc_187C5C
LDR             R0, [LR]
CMP             R0, #0
ADDNE           R1, R0, LR
MOVEQ           R1, R4
MOV             R0, R1
LDR             R2, [R1,#0x10]!
LDR             R0, [R0,#0xC]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R4
ADD             R12, R1, R0,LSL#2
LDR             R0, [LR]
CMP             R0, #0
ADDNE           R0, R0, LR
MOVEQ           R0, R4
LDR             R1, [R0,#0x10]!
CMP             R1, #0
ADDNE           R2, R1, R0
MOVEQ           R2, R4
CMP             R2, R12
BEQ             loc_187C50
LDR             R0, [R2]
CMP             R0, #0
ADDNE           R1, R0, R2
MOVEQ           R1, R4
MOV             R0, R1
LDR             R7, [R1,#4]!
LDR             R0, [R0]
CMP             R7, #0
ADDNE           R1, R1, R7
MOVEQ           R1, R4
ADD             R1, R1, R0,LSL#2
LDR             R0, [R2]
CMP             R0, #0
ADDNE           R0, R0, R2
MOVEQ           R0, R4
LDR             R7, [R0,#4]!
CMP             R7, #0
ADDNE           R0, R0, R7
MOVEQ           R0, R4
CMP             R0, R1
BEQ             loc_187C44
LDR             R7, [R0]
CMP             R7, #0
ADDNE           R7, R7, R0
MOVEQ           R7, R4
ADD             R0, R0, #4
CMP             R0, R1
STR             R3, [R7,#0x14]
BNE             loc_187C24
ADD             R2, R2, #4
CMP             R2, R12
BNE             loc_187BD0
ADD             LR, LR, #4
CMP             LR, R5
BNE             loc_187B7C
ADD             R6, R6, #4
CMP             R6, R8
BNE             loc_187B28
ADD             R0, R10, #0x10
CMP             R0, R11
BNE             loc_187ACC
LDR             R0, [SP,#0x48+var_3C]
ORR             R2, R0, #0x2000000
LDR             R0, [SP,#0x48+var_48]
LDR             R1, [R0,#0x38]!
LDR             R0, [R0]
ADD             R3, R1, #0x20 ; ' '
LDR             R12, [R1,#0x20]
LDR             R1, [R1,#0x1C]
CMP             R12, #0
ADDNE           R3, R3, R12
MOVEQ           R3, #0
CMP             R3, #0
ADDNE           R3, R3, #0x1C
ADD             R7, R3, R1,LSL#4
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, #0
CMP             R0, #0
ADDNE           R0, R0, #0x1C
CMP             R0, R7
MOVNE           R5, #0x10000001
MOVNE           R12, #0
BEQ             loc_187DE0
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
BEQ             loc_187DD4
LDR             R0, [R3]
CMP             R0, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R12
CMP             R0, #0
BEQ             loc_187D54
LDR             R1, [R0]
BICS            R1, R5, R1
MOVNE           R0, #0
CMP             R0, #0
BEQ             loc_187DC8
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
BEQ             loc_187DC8
LDR             R6, [R0]
CMP             R6, #0
ADDNE           R6, R6, R0
MOVEQ           R6, R12
CMP             R6, #0
BEQ             loc_187DB4
LDR             R8, [R6]
TST             R8, #0x40000000
MOVEQ           R6, #0
CMP             R6, #0
ADD             R0, R0, #4
STRNE           R2, [R6,#0x10]
CMP             R0, R1
BNE             loc_187D90
ADD             R3, R3, #4
CMP             R3, LR
BNE             loc_187D30
ADD             R0, R4, #0x10
CMP             R0, R7
BNE             loc_187CD4
LDR             R0, [SP,#0x48+var_48]
LDR             R1, [R0,#0x38]!
LDR             R0, [R0]
ADD             R3, R1, #0x20 ; ' '
LDR             R2, [R1,#0x20]
LDR             R1, [R1,#0x1C]
CMP             R2, #0
ADDNE           R2, R2, R3
CMP             R2, #0
ADDNE           R2, R2, #0x1C
ADD             R8, R2, R1,LSL#4
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, #0
CMP             R0, #0
ADDNE           R5, R0, #0x1C
MOVEQ           R5, #0
CMP             R5, R8
MOVNE           R7, #0
ADDNE           R9, SP, #0x48+var_2C
BEQ             loc_187EF0
LDR             R1, [R5,#0xC]
ADD             R0, R5, #0xC
CMP             R1, #0
ADDNE           R1, R1, R0
MOVEQ           R1, R7
MOV             R0, R1
LDR             R2, [R1,#0xC0]!
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
BEQ             loc_187EE4
LDR             R2, [R4,#0xC]
ADD             R0, R4, #0xC
ADD             R1, R5, #0xC
CMP             R2, #0
ADDNE           R2, R2, R0
LDR             R0, [R5,#0xC]
MOVEQ           R2, R7
CMP             R0, #0
ADDNE           R1, R1, R0
MOVEQ           R1, R7
MOV             R0, R9
BL              sub_5E80B8
ADD             R4, R4, #0x10
CMP             R4, R6
BNE             loc_187EA8
ADD             R5, R5, #0x10
CMP             R5, R8
BNE             loc_187E38
LDR             R0, [SP,#0x48+var_3C]
AND             R0, R0, #0x30000
CMP             R0, #0x10000
BEQ             loc_187F28
LDR             R1, [SP,#0x48+var_48]
CMP             R0, #0x20000
MOVEQ           R0, #0x30000
MOVNE           R0, #0x20000
LDR             R1, [R1,#0x38]
ORR             R0, R0, #0x2000000
MOV             R3, #1
ADD             R2, SP, #0x48+var_38
STR             R1, [SP,#0x48+var_38]
BL              sub_146A94
LDR             R0, [SP,#0x48+var_48]
LDR             R2, [R0,#0x38]
LDR             R0, [SP,#0x48+var_28]
ADD             R1, R0, #0xD0
LDR             R0, [SP,#0x48+var_48]
ADD             R0, R0, #0x38 ; '8'
BL              sub_4BDC60
LDR             R0, [SP,#0x48+var_48]
NOP
BL              sub_232D04
LDR             R0, [SP,#0x48+var_30]
LDRB            R1, [R0,#0x289]
LDR             R0, [SP,#0x48+var_40]
ADD             R0, R0, #1
CMP             R1, R0
STR             R0, [SP,#0x48+var_40]
BGT             loc_1879B4
LDR             R0, [SP,#0x48+var_44]
ADD             R0, R0, #1
CMP             R0, #2
STR             R0, [SP,#0x48+var_44]
BLT             loc_18796C
LDR             R0, [SP,#0x48+var_28]
MOV             R3, #1
LDR             R0, [R0]
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DB64
LDM             R0, {R1,R2}
LDR             R0, [SP,#0x48+var_28]
BLX             R12
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
