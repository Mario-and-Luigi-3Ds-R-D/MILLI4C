PUSH            {R0-R12,LR}
ADD             R4, SP, #0x38+arg_0
LDR             R0, [SP,#0x38+arg_8]
LDM             R4, {R9,R10}
LDR             R12, [R0]
CMP             R12, #0
LDREQ           R12, [R0,#4]
CMPEQ           R12, #0
LDREQ           R12, [R0,#8]
CMPEQ           R12, #0
BEQ             loc_1150D8
BL              sub_2FE484
LDR             LR, =0x675B
MOV             R4, #0
STR             R4, [R0,#0x3C]
CMP             R2, LR
SUB             R11, R2, LR
LDR             LR, [SP,#0x38+var_38]
STR             R1, [R0,#0x10]
STR             R9, [R0,#0x34]
STR             LR, [R0,#0xC]
MOV             R12, #8
MOV             R8, #0x20 ; ' '
MOV             R5, #4
MOV             R7, #0x10
MOV             R6, #5
STRD            R2, R3, [R0,#0x14]
BEQ             loc_115554
BGT             loc_115180
LDR             LR, =0x190A
CMP             R2, LR
SUB             R11, R2, LR
BEQ             loc_1153AC
BGE             loc_115158
SUB             R10, R2, #0x1900
SUBS            R10, R10, #6
BEQ             loc_115304
CMP             R10, #1
BEQ             loc_1152A0
CMP             R10, #2
BEQ             loc_115200
CMP             R10, #3
BNE             loc_11552C
B               loc_115350
SUB             R3, R11, #0x4700
SUBS            R3, R3, #0x36 ; '6'
CMPNE           R3, #0x10
BEQ             loc_1151E4
CMP             R3, #0x6C0
BEQ             loc_115404
SUB             R3, R3, #0x700
SUBS            R3, R3, #0x1A
BEQ             loc_11550C
B               loc_11552C
LDR             R10, =0x1A4A
CMP             R11, R10
SUB             R3, R11, R10
BEQ             loc_115420
BGT             loc_1151C0
SUB             R10, R11, #0x1800
SUBS            R10, R10, #0xF6
BEQ             loc_11527C
LDR             R3, =0x1908
CMP             R10, #5
BEQ             loc_1154B8
CMP             R10, #6
BEQ             loc_1154E0
CMP             R10, #7
BNE             loc_11552C
B               loc_1151E4
CMP             R3, #1
BEQ             loc_11543C
SUB             R3, R3, #0x700
SUBS            R3, R3, #0x4B ; 'K'
BEQ             loc_115460
SUB             R3, R3, #0x400
SUBS            R3, R3, #0x72 ; 'r'
BNE             loc_11552C
B               loc_115484
STR             R4, [R0,#0x1C]
STR             R12, [R0,#0x24]
STR             R12, [R0,#0x28]
STR             R12, [R0,#0x2C]
STR             R8, [R0,#0x38]
STR             R12, [R0,#0x30]
B               loc_11552C
SUB             R2, R3, #0x1400
SUBS            R2, R2, #1
BEQ             loc_115260
SUB             R2, R2, #0x6C00
SUBS            R2, R2, #0x32 ; '2'
BEQ             loc_115224
CMP             R2, #1
BNE             loc_115544
B               loc_11523C
STR             R5, [R0,#0x1C]
STR             R5, [R0,#0x24]
STR             R5, [R0,#0x28]
STR             R5, [R0,#0x2C]
STR             R5, [R0,#0x30]
B               loc_115258
MOV             R2, #2
STR             R2, [R0,#0x1C]
STR             R6, [R0,#0x24]
MOV             R3, #1
STR             R6, [R0,#0x28]
STR             R3, [R0,#0x30]
STR             R6, [R0,#0x2C]
STR             R7, [R0,#0x38]
B               loc_115544
STR             R4, [R0,#0x1C]
STR             R12, [R0,#0x24]
STR             R12, [R0,#0x28]
STR             R12, [R0,#0x2C]
STR             R8, [R0,#0x38]
STR             R12, [R0,#0x30]
B               loc_115544
MOV             R3, #1
STR             R3, [R0,#0x1C]
STR             R12, [R0,#0x24]
STR             R12, [R0,#0x28]
MOV             R5, #0x18
STR             R4, [R0,#0x30]
STR             R5, [R0,#0x38]
STR             R12, [R0,#0x2C]
B               loc_11552C
SUB             R2, R3, #0x1400
SUBS            R2, R2, #1
BEQ             loc_1152BC
SUB             R2, R2, #0x6F00
SUBS            R2, R2, #0x62 ; 'b'
BNE             loc_115544
B               loc_1152E0
MOV             R3, #1
STR             R3, [R0,#0x1C]
STR             R12, [R0,#0x24]
MOV             R2, #0x18
STR             R12, [R0,#0x28]
STR             R2, [R0,#0x38]
STR             R4, [R0,#0x30]
STR             R12, [R0,#0x2C]
B               loc_115544
MOV             R2, #3
STR             R2, [R0,#0x1C]
STR             R4, [R0,#0x30]
ADD             R2, R0, #0x28 ; '('
STR             R6, [R0,#0x24]
MOV             R3, #6
STR             R7, [R0,#0x38]
STM             R2, {R3,R6}
B               loc_115544
SUB             R2, R3, #0x1400
SUBS            R2, R2, #1
BEQ             loc_115320
SUB             R2, R2, #0x5000
SUBS            R2, R2, #0x360
BNE             loc_115544
B               loc_115338
STR             R4, [R0,#0x24]
ADD             R2, R0, #0x2C ; ','
STR             R12, [R0,#0x1C]
STR             R4, [R0,#0x28]
STM             R2, {R4,R12}
B               loc_115384
MOV             R2, #0xB
STR             R2, [R0,#0x1C]
STR             R4, [R0,#0x24]
STR             R4, [R0,#0x28]
STRD            R4, R5, [R0,#0x2C]
B               loc_1153A4
SUB             R2, R3, #0x1400
SUBS            R2, R2, #1
BEQ             loc_11536C
SUB             R2, R2, #0x5000
SUBS            R2, R2, #0x360
BNE             loc_115544
B               loc_11538C
MOV             R2, #7
STR             R2, [R0,#0x1C]
STR             R12, [R0,#0x24]
STR             R12, [R0,#0x28]
STR             R4, [R0,#0x30]
STR             R12, [R0,#0x2C]
STR             R12, [R0,#0x38]
B               loc_115544
MOV             R2, #0xA
STR             R2, [R0,#0x1C]
STR             R5, [R0,#0x24]
STR             R5, [R0,#0x28]
STR             R4, [R0,#0x30]
STR             R5, [R0,#0x2C]
STR             R5, [R0,#0x38]
B               loc_115544
SUB             R3, R3, #0x1400
SUBS            R3, R3, #1
BEQ             loc_1153C8
SUB             R3, R3, #0x5300
SUBS            R3, R3, #0x5F ; '_'
BNE             loc_11552C
B               loc_1153E4
STR             R6, [R0,#0x1C]
STR             R12, [R0,#0x24]
STR             R12, [R0,#0x28]
STR             R12, [R0,#0x2C]
STR             R12, [R0,#0x30]
STR             R7, [R0,#0x38]
B               loc_11552C
MOV             R3, #9
STR             R3, [R0,#0x1C]
STR             R5, [R0,#0x24]
STR             R5, [R0,#0x28]
STR             R5, [R0,#0x2C]
STR             R5, [R0,#0x30]
STR             R12, [R0,#0x38]
B               loc_11552C
MOV             R3, #6
STR             R3, [R0,#0x1C]
STR             R12, [R0,#0x24]
STR             R4, [R0,#0x2C]
STR             R12, [R0,#0x28]
STR             R4, [R0,#0x30]
B               loc_1153DC
STR             R4, [R0,#0x1C]
STR             R7, [R0,#0x24]
STR             R4, [R0,#0x28]
STR             R4, [R0,#0x2C]
STR             R4, [R0,#0x30]
STR             R7, [R0,#0x38]
B               loc_11552C
MOV             R12, #2
ADD             R5, R0, #0x24 ; '$'
MOV             R3, #0x18
STR             R12, [R0,#0x1C]
STM             R5, {R3,R4}
STR             R4, [R0,#0x2C]
STR             R3, [R0,#0x38]
STR             R4, [R0,#0x30]
B               loc_11552C
MOV             R3, #3
STR             R3, [R0,#0x1C]
STR             R4, [R0,#0x2C]
ADD             R3, R0, #0x24 ; '$'
STR             R4, [R0,#0x30]
MOV             R5, #0x18
STR             R8, [R0,#0x38]
STM             R3, {R5,R12}
B               loc_11552C
MOV             R3, #3
ADD             R10, R0, #0x24 ; '$'
STR             R3, [R0,#0x1C]
MOV             R12, #6
STM             R10, {R6,R12}
ADD             R3, R0, #0x14
LDR             R5, =0x1907
LDR             R8, =0x8363
STR             R4, [R0,#0x30]
STR             R6, [R0,#0x2C]
STR             R7, [R0,#0x38]
STM             R3, {R5,R8}
B               loc_11552C
STR             R5, [R0,#0x1C]
STR             R5, [R0,#0x24]
STR             R5, [R0,#0x28]
LDR             R12, =0x8033
STR             R5, [R0,#0x2C]
ADD             R6, R0, #0x14
STR             R5, [R0,#0x30]
STR             R7, [R0,#0x38]
STM             R6, {R3,R12}
B               loc_11552C
STR             R6, [R0,#0x24]
MOV             R5, #1
STR             R6, [R0,#0x28]
LDR             R8, =0x8034
STR             R5, [R0,#0x30]
ADD             R10, R0, #0x14
STR             R6, [R0,#0x2C]
MOV             R12, #2
STR             R7, [R0,#0x38]
STM             R10, {R3,R8,R12}
B               loc_11552C
STR             R12, [R0,#0x24]
STR             R12, [R0,#0x28]
STR             R4, [R0,#0x30]
ADD             R5, R0, #0x1C
STR             R12, [R0,#0x2C]
MOV             R3, #0xC
STR             R4, [R0,#0x38]
STM             R5, {R3,R10}
SUB             R3, R2, #0x6700
SUBS            R3, R3, #0x5A ; 'Z'
BEQ             loc_1155BC
SUB             R3, R2, #0x6700
SUBS            R3, R3, #0x5B ; '['
BEQ             loc_1155BC
LDR             R2, [SP,#0x38+var_38]
MOV             R3, #0
STR             R4, [R0,#0x20]
B               loc_1155A4
STR             R12, [R0,#0x24]
STR             R12, [R0,#0x28]
STR             R4, [R0,#0x38]
ADD             R6, R0, #0x1C
STR             R5, [R0,#0x30]
MOV             R3, #0xD
STR             R12, [R0,#0x2C]
STM             R6, {R3,R10}
B               loc_115538
MUL             R5, R2, R1
LDR             R12, [R0,#0x38]
LDR             R4, [R0,#0x20]
ADD             R3, R3, #1
MOV             R2, R2,ASR#1
MUL             R12, R12, R5
MOV             R1, R1,ASR#1
MOV             R5, R12,ASR#31
ADD             R12, R12, R5,LSR#29
ADD             R12, R4, R12,ASR#3
STR             R12, [R0,#0x20]
CMP             R3, R9
BGE             loc_1155BC
CMP             R2, #8
BLT             loc_1155BC
CMP             R1, #8
BGE             loc_115578
ADD             SP, SP, #0x10
POP             {R4-R12,PC}
