PUSH            {R0,R4-R11,LR}
SUB             SP, SP, #0x18
LDR             R0, [SP,#0x40+var_28]
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
BNE             loc_1EBFD4
LDR             R0, [SP,#0x40+var_28]
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [R0,#0x74]
MOV             R0, #0
STR             R0, [SP,#0x40+var_3C]
CMP             R1, #0
BLS             loc_1EBF9C
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [SP,#0x40+var_28]
MOV             R12, #4
MOV             LR, #8
LDR             R3, [R0,#0x78]
LDR             R0, [SP,#0x40+var_3C]
LDR             R2, [R1,#0x70]
MOV             R1, #0x38 ; '8'
ADD             R0, R0, R0,LSL#1
ADD             R12, R12, R0,LSL#2
ADD             LR, LR, R0,LSL#2
LDR             R0, [R2,R12]
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R2,LR]
STR             R0, [SP,#0x40+var_34]
ADD             R1, R1, R0,LSL#6
LDR             R0, [SP,#0x40+var_38]
STR             R1, [SP,#0x40+var_40]
ORR             R2, R0, #0x2000000
ADD             R0, R3, R1
LDR             R1, [R0]
LDR             R3, [R1,#0x28]!
CMP             R3, #0
ADDNE           R1, R1, R3
MOVEQ           R1, #0
CMP             R1, #0
ADDNE           R3, R1, #0x1C
LDR             R1, [R0]
LDR             R0, [R0]
MOVEQ           R3, #0
LDR             R1, [R1,#0x24]
ADD             R1, R3, R1,LSL#4
LDR             R3, [R0,#0x28]!
CMP             R3, #0
ADDNE           R0, R0, R3
MOVEQ           R0, #0
CMP             R0, #0
ADDNE           R0, R0, #0x1C
CMP             R0, R1
MOVNE           R3, #0
BEQ             loc_1EBA64
LDR             LR, [R0,#0xC]
ADD             R12, R0, #0xC
ADD             R0, R0, #0x10
CMP             LR, #0
ADDNE           R12, R12, LR
MOVEQ           R12, R3
LDR             LR, [R12]
CMP             LR, #0x20000009
SUBNE           LR, LR, #0x10
SUBSNE          LR, LR, #0x20000001
STREQ           R2, [R12,#0x30]
CMP             R0, R1
BNE             loc_1EBA30
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [R0,#0x78]
LDR             R0, [SP,#0x40+var_38]
ORR             R3, R0, #0x2000000
LDR             R0, [SP,#0x40+var_40]
ADD             R0, R0, R1
LDR             R1, [R0]
LDR             R2, [R1,#0x20]!
CMP             R2, #0
ADDNE           R1, R1, R2
LDR             R2, [R0]
LDR             R0, [R0]
MOVEQ           R1, #0
CMP             R1, #0
LDR             R2, [R2,#0x1C]
ADDNE           R1, R1, #0x1C
ADD             R11, R1, R2,LSL#4
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, #0
CMP             R0, #0
ADDNE           R10, R0, #0x1C
MOVEQ           R10, #0
CMP             R10, R11
MOVNE           LR, #0
BEQ             loc_1EBC78
LDR             R1, [R10,#0xC]
ADD             R0, R10, #0xC
CMP             R1, #0
ADDNE           R1, R1, R0
MOVEQ           R1, LR
MOV             R0, R1
LDR             R2, [R1,#0xC8]!
LDR             R0, [R0,#0xC4]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, LR
ADD             R8, R1, R0,LSL#2
LDR             R1, [R10,#0xC]
ADD             R0, R10, #0xC
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, LR
LDR             R1, [R0,#0xC8]!
CMP             R1, #0
ADDNE           R6, R1, R0
MOVEQ           R6, LR
CMP             R6, R8
BEQ             loc_1EBC6C
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R1, R0, R6
MOVEQ           R1, LR
MOV             R0, R1
LDR             R2, [R1,#0x30]!
LDR             R0, [R0,#0x2C]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, LR
ADD             R5, R1, R0,LSL#2
LDR             R0, [R6]
CMP             R0, #0
ADDNE           R0, R0, R6
MOVEQ           R0, LR
LDR             R1, [R0,#0x30]!
CMP             R1, #0
ADDNE           R4, R1, R0
MOVEQ           R4, LR
CMP             R4, R5
BEQ             loc_1EBC60
LDR             R0, [R4]
CMP             R0, #0
ADDNE           R1, R0, R4
MOVEQ           R1, LR
MOV             R0, R1
LDR             R2, [R1,#0x10]!
LDR             R0, [R0,#0xC]
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, LR
ADD             R12, R1, R0,LSL#2
LDR             R0, [R4]
CMP             R0, #0
ADDNE           R0, R0, R4
MOVEQ           R0, LR
LDR             R1, [R0,#0x10]!
CMP             R1, #0
ADDNE           R2, R1, R0
MOVEQ           R2, LR
CMP             R2, R12
BEQ             loc_1EBC54
LDR             R0, [R2]
CMP             R0, #0
ADDNE           R1, R0, R2
MOVEQ           R1, LR
MOV             R0, R1
LDR             R7, [R1,#4]!
LDR             R0, [R0]
CMP             R7, #0
ADDNE           R1, R1, R7
MOVEQ           R1, LR
ADD             R1, R1, R0,LSL#2
LDR             R0, [R2]
CMP             R0, #0
ADDNE           R0, R0, R2
MOVEQ           R0, LR
LDR             R7, [R0,#4]!
CMP             R7, #0
ADDNE           R0, R0, R7
MOVEQ           R0, LR
CMP             R0, R1
BEQ             loc_1EBC48
LDR             R7, [R0]
CMP             R7, #0
ADDNE           R7, R7, R0
MOVEQ           R7, LR
ADD             R0, R0, #4
CMP             R0, R1
STR             R3, [R7,#0x14]
BNE             loc_1EBC28
ADD             R2, R2, #4
CMP             R2, R12
BNE             loc_1EBBD4
ADD             R4, R4, #4
CMP             R4, R5
BNE             loc_1EBB80
ADD             R6, R6, #4
CMP             R6, R8
BNE             loc_1EBB2C
ADD             R10, R10, #0x10
CMP             R10, R11
BNE             loc_1EBAD0
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [R0,#0x78]
LDR             R0, [SP,#0x40+var_38]
ORR             R2, R0, #0x2000000
LDR             R0, [SP,#0x40+var_40]
ADD             R0, R0, R1
LDR             R1, [R0]
LDR             R3, [R1,#0x20]!
CMP             R3, #0
ADDNE           R1, R1, R3
LDR             R3, [R0]
MOVEQ           R1, #0
CMP             R1, #0
ADDNE           R1, R1, #0x1C
LDR             R3, [R3,#0x1C]
ADD             R6, R1, R3,LSL#4
LDR             R1, [R0]
LDR             R0, [R1,#0x20]!
CMP             R0, #0
ADDNE           R0, R0, R1
CMP             R0, #0
ADDNE           R0, R0, #0x1C
CMP             R0, R6
MOVNE           R5, #0x10000001
MOVNE           R12, #0
BEQ             loc_1EBDEC
MOV             R4, R0
LDR             R1, [R0,#0xC]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
ADD             R1, R0, #0xC8
LDR             R3, [R0,#0xC8]
LDR             R0, [R0,#0xC4]
CMP             R3, #0
ADDNE           R1, R1, R3
MOVEQ           R1, R12
ADD             LR, R1, R0,LSL#2
LDR             R0, [R4,#0xC]
ADD             R1, R4, #0xC
CMP             R0, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R12
LDR             R1, [R0,#0xC8]!
CMP             R1, #0
ADDNE           R3, R1, R0
MOVEQ           R3, R12
CMP             R3, LR
BEQ             loc_1EBDE0
LDR             R0, [R3]
CMP             R0, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R12
CMP             R0, #0
BEQ             loc_1EBD60
LDR             R1, [R0]
BICS            R1, R5, R1
MOVNE           R0, #0
CMP             R0, #0
BEQ             loc_1EBDD4
LDR             R7, [R0,#0x3C]
ADD             R1, R0, #0x3C ; '<'
CMP             R7, #0
ADDNE           R1, R1, R7
LDR             R7, [R0,#0x38]
MOVEQ           R1, R12
ADD             R1, R1, R7,LSL#2
LDR             R7, [R0,#0x3C]!
CMP             R7, #0
ADDNE           R0, R0, R7
MOVEQ           R0, R12
CMP             R0, R1
BEQ             loc_1EBDD4
LDR             R7, [R0]
CMP             R7, #0
ADDNE           R7, R7, R0
MOVEQ           R7, R12
CMP             R7, #0
BEQ             loc_1EBDC0
LDR             R8, [R7]
TST             R8, #0x40000000
MOVEQ           R7, #0
CMP             R7, #0
ADD             R0, R0, #4
STRNE           R2, [R7,#0x10]
CMP             R0, R1
BNE             loc_1EBD9C
ADD             R3, R3, #4
CMP             R3, LR
BNE             loc_1EBD3C
ADD             R0, R4, #0x10
CMP             R0, R6
BNE             loc_1EBCE0
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [R0,#0x78]
LDR             R0, [SP,#0x40+var_40]
ADD             R0, R0, R1
LDR             R1, [R0]
LDR             R2, [R1,#0x20]!
CMP             R2, #0
ADDNE           R1, R1, R2
LDR             R2, [R0]
LDR             R0, [R0]
MOVEQ           R1, #0
CMP             R1, #0
LDR             R2, [R2,#0x1C]
ADDNE           R1, R1, #0x1C
ADD             R8, R1, R2,LSL#4
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, #0
CMP             R0, #0
ADDNE           R5, R0, #0x1C
MOVEQ           R5, #0
CMP             R5, R8
MOVNE           R7, #0
ADDNE           R9, SP, #0x40+var_2C
BEQ             loc_1EBF0C
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
BEQ             loc_1EBF00
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
BNE             loc_1EBEC4
ADD             R5, R5, #0x10
CMP             R5, R8
BNE             loc_1EBE54
LDR             R0, [SP,#0x40+var_38]
AND             R0, R0, #0x30000
CMP             R0, #0x10000
BEQ             loc_1EBF4C
LDR             R1, [SP,#0x40+var_28]
CMP             R0, #0x20000
MOVEQ           R0, #0x30000
MOVNE           R0, #0x20000
LDR             R2, [R1,#0x78]
LDR             R1, [SP,#0x40+var_40]
ORR             R0, R0, #0x2000000
MOV             R3, #1
LDR             R1, [R2,R1]
ADD             R2, SP, #0x40+var_30
STR             R1, [SP,#0x40+var_30]
BL              sub_146A94
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [R0,#0x78]
LDR             R0, [SP,#0x40+var_40]
ADD             R0, R0, R1
LDR             R1, [SP,#0x40+var_28]
LDR             R2, [R0]
ADD             R1, R1, #0x14
BL              sub_4BDC60
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [R0,#0x78]
LDR             R0, [SP,#0x40+var_34]
ADD             R0, R1, R0,LSL#6
BL              sub_232D04
LDR             R0, [SP,#0x40+var_28]
LDR             R1, [R0,#0x74]
LDR             R0, [SP,#0x40+var_3C]
ADD             R0, R0, #1
CMP             R1, R0
STR             R0, [SP,#0x40+var_3C]
BHI             loc_1EB98C
LDR             R0, =off_67E18C
LDR             R2, [SP,#0x40+var_28]
LDR             R1, [R0,#(off_67E33C - 0x67E18C)]; sub_1EA9EC
LDR             R0, [R0,#(dword_67E340 - 0x67E18C)]
STR             R1, [R2,#0x4C]!
TST             R0, #1
STR             R0, [R2,#4]
LDR             R2, [SP,#0x40+var_28]
ADD             R0, R2, R0,ASR#1
BEQ             loc_1EBFCC
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
