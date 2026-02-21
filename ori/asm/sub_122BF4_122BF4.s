PUSH            {R4-R7,LR}
SUB             SP, SP, #0x2C
MOV             R5, #0
MOV             R4, R0
STR             R5, [SP,#0x40+var_2C]
BL              sub_118AE8
MOV             R0, R4
BL              sub_13273C
STR             R5, [R4,#0x10]
STR             R5, [R4,#0x14]
STR             R5, [R4,#0x18]
STR             R5, [R4,#0x1C]
STR             R5, [R4,#0x20]
STR             R5, [R4,#0x24]
STR             R5, [R4,#0x28]
ADD             R6, R4, #0x2C ; ','
MOV             R1, R5
MOV             R0, SP
STR             R5, [SP,#0x40+var_40]
BL              sub_120218
MOVS            R1, R0,LSR#31
BNE             loc_122C58
LDR             R1, [SP,#0x40+var_40]
MOV             R0, #0
STR             R1, [R6]
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
STRB            R5, [R4,#0x77]
MOV             R1, #0
ADD             R0, R4, #0x64 ; 'd'
STRB            R5, [R4,#0x76]
BL              sub_120E48
NOP
NOP
BL              sub_129DB8
MOV             R7, R0
NOP
BL              sub_1230AC
CMP             R0, #0
MOVNE           R6, #2
MOVEQ           R6, #1
BL              sub_129D98
CMP             R0, #0
ADD             R0, SP, #0x40+var_30
STR             R0, [SP,#0x40+var_40]
ORRNE           R6, R6, #4
LDR             R1, [R4,#0x2C]
ADD             R3, SP, #0x40+var_2C
MOV             R2, R6
MOV             R0, R7
BL              sub_129D20
MOV             R6, R0
LDR             R0, [SP,#0x40+var_30]
MOV             R3, #0
MOV             R2, #0x1000
STRB            R0, [R4,#0x74]
LDR             R1, [SP,#0x40+var_2C]
ADD             R0, R4, #0x38 ; '8'
BL              sub_128318
LDR             R2, [SP,#0x40+var_30]
LDR             R0, [R4,#0x40]
LDR             R1, [R4,#0x2C]
ADD             R3, R0, R2,LSL#6
ADD             R0, R4, #0x30 ; '0'
STM             R0, {R1,R3}
MOV             R1, #0x800
LDR             R0, [R4,#0x40]
ADD             R1, R1, R2,LSL#9
ADD             R1, R1, R0
ADD             R0, R4, #0x58 ; 'X'
BL              sub_1298DC
LDR             R0, [SP,#0x40+var_30]
LDR             R1, [R4,#0x40]
MOV             R2, #0x200
MOV             R12, #4
ADD             R0, R2, R0,LSL#7
ADD             R0, R0, R1
STR             R0, [R4,#0x5C]
ADD             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0x60]
SUB             R0, R6, #0x2A00
SUBS            R0, R0, #7
MOVEQ           R0, #1
STRBEQ          R0, [R4,#0x75]
STRBNE          R5, [R4,#0x75]
STR             R12, [SP,#0x40+var_28]
LDR             R12, =sub_131A50
LDR             R3, =0x5109D502
ADD             R6, SP, #0x40+var_38
STR             R12, [SP,#0x40+var_24]
LDR             R12, =nullsub_371
STR             R4, [SP,#0x40+var_18]
STR             R3, [SP,#0x40+var_3C]
STR             R12, [SP,#0x40+var_20]
LDR             R12, =sub_131A60
MOV             R1, #0xFFFFFFFE
LDR             R2, =sub_129AB0
STR             R12, [SP,#0x40+var_1C]
ADD             R12, R4, #0x1000
ADD             R12, R12, #0x78 ; 'x'
STR             R12, [SP,#0x40+var_40]
STM             R6, {R1,R5}
ADD             R0, R4, #0x6C ; 'l'
ADD             R3, SP, #0x40+var_18
ADD             R1, SP, #0x40+var_28
BL              sub_118C00
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
MOV             R0, R4
NOP
BL              sub_1327BC
ADD             SP, SP, #0x2C ; ','
POP             {R4-R7,PC}
