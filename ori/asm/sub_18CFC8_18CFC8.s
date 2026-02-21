PUSH            {R0,R4-R11,LR}
SUB             SP, SP, #0x28
MOV             R1, #0
LDR             R0, [SP,#0x50+var_28]
LDR             R0, [R0]
LDR             R2, [R0,#0x1A8]
LDR             R0, [SP,#0x50+var_28]
BLX             R2
CMP             R0, #0
BNE             loc_18D6DC
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_18D018
LDR             R0, [SP,#0x50+var_28]
LDR             R0, [R0]
LDR             R1, [R0,#0xC4]
LDR             R0, [SP,#0x50+var_28]
BLX             R1
MOV             R0, #0
STR             R0, [SP,#0x50+var_4C]
LDR             R0, [SP,#0x50+var_28]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x88
STR             R0, [SP,#0x50+var_3C]
LDR             R0, [SP,#0x50+var_28]
ADD             R0, R0, #0x14000
STR             R0, [SP,#0x50+var_38]
LDR             R1, [SP,#0x50+var_4C]
LDR             R0, [SP,#0x50+var_28]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x9C
STR             R0, [SP,#0x50+var_34]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_18D67C
LDR             R0, [SP,#0x50+var_28]
ADD             R0, R0, R1
ADD             R0, R0, #0x14000
MOV             R1, #0
STR             R0, [SP,#0x50+var_30]
STR             R1, [SP,#0x50+var_48]
LDRB            R0, [R0,#0x289]
CMP             R0, #0
BLE             loc_18D67C
LDR             R0, [SP,#0x50+var_34]
LDR             R1, [R0]
LDR             R0, [SP,#0x50+var_48]
ADD             R0, R1, R0,LSL#6
STR             R0, [SP,#0x50+var_50]
MOV             R0, #0x10000
STR             R0, [SP,#0x50+var_44]
LDR             R0, [SP,#0x50+var_50]
LDR             R1, [R0,#0x3C]
CMP             R1, #0
BEQ             loc_18D0DC
LDR             R0, [SP,#0x50+var_38]
LDRB            R2, [R0,#0x286]
MOV             R0, #0
CMP             R2, #0
LDRGT           R3, [SP,#0x50+var_3C]
LDRGT           R3, [R3]
BLE             loc_18D660
ADD             R12, R3, R0,LSL#6
CMP             R12, R1
BNE             loc_18D140
STR             R1, [SP,#0x50+var_50]
LDR             R0, [SP,#0x50+var_44]
ORR             R2, R0, #0x2000000
LDR             R0, [SP,#0x50+var_50]
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
BNE             loc_18D150
B               loc_18D184
ADD             R0, R0, #1
CMP             R2, R0
BGT             loc_18D0CC
B               loc_18D660
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
BNE             loc_18D150
LDR             R0, [SP,#0x50+var_44]
ORR             R3, R0, #0x2000000
LDR             R0, [SP,#0x50+var_50]
LDR             R2, [R0,#0x38]!
LDR             R0, [R0]
MOV             R1, R2
LDR             R12, [R2,#0x20]!
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
BEQ             loc_18D388
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
BEQ             loc_18D37C
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
BEQ             loc_18D370
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
BEQ             loc_18D364
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
BEQ             loc_18D358
LDR             R7, [R0]
CMP             R7, #0
ADDNE           R7, R7, R0
MOVEQ           R7, R4
ADD             R0, R0, #4
CMP             R0, R1
STR             R3, [R7,#0x14]
BNE             loc_18D338
ADD             R2, R2, #4
CMP             R2, R12
BNE             loc_18D2E4
ADD             LR, LR, #4
CMP             LR, R5
BNE             loc_18D290
ADD             R6, R6, #4
CMP             R6, R8
BNE             loc_18D23C
ADD             R0, R10, #0x10
CMP             R0, R11
BNE             loc_18D1E0
LDR             R0, [SP,#0x50+var_44]
ORR             R2, R0, #0x2000000
LDR             R0, [SP,#0x50+var_50]
LDR             R1, [R0,#0x38]!
LDR             R0, [R0]
ADD             R12, R1, #0x20 ; ' '
LDR             R3, [R1,#0x20]
LDR             R1, [R1,#0x1C]
CMP             R3, #0
ADDNE           R3, R3, R12
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
BEQ             loc_18D4F0
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
BEQ             loc_18D4E4
LDR             R0, [R3]
CMP             R0, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R12
CMP             R0, #0
BEQ             loc_18D464
LDR             R1, [R0]
BICS            R1, R5, R1
MOVNE           R0, #0
CMP             R0, #0
BEQ             loc_18D4D8
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
BEQ             loc_18D4D8
LDR             R6, [R0]
CMP             R6, #0
ADDNE           R6, R6, R0
MOVEQ           R6, R12
CMP             R6, #0
BEQ             loc_18D4C4
LDR             R8, [R6]
TST             R8, #0x40000000
MOVEQ           R6, #0
CMP             R6, #0
ADD             R0, R0, #4
STRNE           R2, [R6,#0x10]
CMP             R0, R1
BNE             loc_18D4A0
ADD             R3, R3, #4
CMP             R3, LR
BNE             loc_18D440
ADD             R0, R4, #0x10
CMP             R0, R7
BNE             loc_18D3E4
LDR             R0, [SP,#0x50+var_50]
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
ADDNE           R9, SP, #0x50+var_2C
BEQ             loc_18D600
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
BEQ             loc_18D5F4
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
MOV             R0, R9
BL              sub_5E80B8
ADD             R4, R4, #0x10
CMP             R4, R6
BNE             loc_18D5B8
ADD             R5, R5, #0x10
CMP             R5, R8
BNE             loc_18D548
LDR             R0, [SP,#0x50+var_44]
AND             R0, R0, #0x30000
CMP             R0, #0x10000
BEQ             loc_18D638
LDR             R1, [SP,#0x50+var_50]
CMP             R0, #0x20000
MOVEQ           R0, #0x30000
MOVNE           R0, #0x20000
LDR             R1, [R1,#0x38]
ORR             R0, R0, #0x2000000
MOV             R3, #1
ADD             R2, SP, #0x50+var_40
STR             R1, [SP,#0x50+var_40]
BL              sub_146A94
LDR             R0, [SP,#0x50+var_50]
LDR             R2, [R0,#0x38]
LDR             R0, [SP,#0x50+var_28]
ADD             R1, R0, #0xD0
LDR             R0, [SP,#0x50+var_50]
ADD             R0, R0, #0x38 ; '8'
BL              sub_4BDC60
LDR             R0, [SP,#0x50+var_50]
NOP
BL              sub_232D04
LDR             R0, [SP,#0x50+var_30]
LDRB            R1, [R0,#0x289]
LDR             R0, [SP,#0x50+var_48]
ADD             R0, R0, #1
CMP             R1, R0
STR             R0, [SP,#0x50+var_48]
BGT             loc_18D084
LDR             R0, [SP,#0x50+var_4C]
ADD             R0, R0, #1
CMP             R0, #2
STR             R0, [SP,#0x50+var_4C]
BLT             loc_18D03C
LDR             R0, [SP,#0x50+var_28]
MOV             R1, #0x80
ADD             R0, R0, #0xCC
BL              sub_59BE7C
LDR             R0, [SP,#0x50+var_28]
ADD             R0, R0, #0xCC
BL              sub_4B1570
LDR             R0, [SP,#0x50+var_28]
MOV             R1, #1
ADD             R0, R0, #0xCC
BL              sub_59C530
LDR             R0, [SP,#0x50+var_28]
MOV             R3, #1
LDR             R0, [R0]
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DD9C
LDM             R0, {R1,R2}
LDR             R0, [SP,#0x50+var_28]
BLX             R12
ADD             SP, SP, #0x2C ; ','
POP             {R4-R11,PC}
