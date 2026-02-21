PUSH            {R4-R12,LR}
MOV             R1, #0
MOV             R2, R1
LDR             R0, =off_6D2420
LDR             R4, =0x8CD5
LDR             R0, [R0]
LDR             R10, [R0,#8]
LDR             R0, =off_6D48F8
LDR             R5, [R0]
LDR             R0, [R10,#0xC]
CMP             R0, #0
LDREQ           R3, [R10,#0x1C]
CMPEQ           R3, #0
LDREQ           R12, =0x8CD7
BEQ             loc_12CE44
LDR             R12, =0x8CD6
CMP             R0, #0
BEQ             loc_12CDF4
LDR             R1, [R0]
CMP             R1, #0
LDRNE           R1, [R0,#0xC]
CMPNE           R1, #0
LDRNE           R2, [R0,#0x10]
CMPNE           R2, #0
BEQ             loc_12CE44
LDR             R3, [R10,#0x1C]
CMP             R3, #0
BEQ             loc_12CE3C
LDR             R6, [R3]
CMP             R6, #0
LDRNE           R6, [R3,#0xC]
CMPNE           R6, #0
LDRNE           R7, [R3,#0x10]
CMPNE           R7, #0
BEQ             loc_12CE44
CMP             R1, #0
BEQ             loc_12CE3C
CMP             R6, R1
BNE             loc_12CE34
CMP             R7, R2
BEQ             loc_12CE3C
LDR             R12, =0x8CD9
B               loc_12CE44
CMP             R0, R3
MOVNE           R12, R4
CMP             R12, R4
ADD             R4, R5, #0x400
MOV             R7, #0
ADD             R4, R4, #0x284
BEQ             loc_12CE6C
STR             R7, [R4]
STRB            R7, [R4,#0xC]
STRB            R7, [R4,#0xD]
STRB            R7, [R4,#0xE]
POP             {R4-R12,PC}
STR             R12, [R4]
LDR             R0, [R5,#8]
TST             R0, #0x100
BNE             locret_12CE68
LDR             R8, [R10,#0xC]
LDR             R9, [R10,#0x1C]
MOV             R2, #0
ADD             R6, R5, #0x800
CMP             R8, #0
MOV             R11, #1
MOV             R3, R2
ADD             R6, R6, #4
BEQ             loc_12CEB0
LDR             R0, [R6,#0xC]
LDR             R1, [R8]
CMP             R0, R1
BNE             loc_12CED4
CMP             R9, #0
BEQ             loc_12CEC8
LDR             R0, [R6,#8]
LDR             R1, [R9]
CMP             R0, R1
BNE             loc_12CED4
LDR             R0, [R5,#4]
TST             R0, #0x100
BEQ             loc_12CF2C
LDR             R0, =dword_6D2418
LDR             R1, =dword_6D241C
LDR             R0, [R0]
LDR             R1, [R1]
CMP             R1, R0
BLS             loc_12CF00
LDR             R12, =0xF0111
ADD             LR, R0, #8
STM             R0, {R11,R12}
LDR             R0, =dword_6D2418
STR             LR, [R0]
LDR             R0, =dword_6D241C
LDR             R12, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R12]
CMP             R0, R1
BCS             loc_12CF2C
LDR             R12, =0xF0110
ADD             LR, R0, #8
STM             R0, {R11,R12}
LDR             R0, =dword_6D2418
STR             LR, [R0]
LDR             R0, [R10,#0xC]
CMP             R0, #0
STRBEQ          R7, [R4,#0xC]
BEQ             loc_12D02C
STRB            R11, [R4,#0xC]
LDR             R0, [R8]
STR             R0, [R6,#0xC]
LDR             R0, [R8,#0x20]
STR             R0, [R6,#0x14]
LDR             R0, [R8,#0x1C]
CMP             R0, #0
BEQ             loc_12CF78
CMP             R0, #2
BEQ             loc_12CF88
CMP             R0, #3
BEQ             loc_12CF98
CMP             R0, #4
BNE             loc_12CFB4
B               loc_12CFA8
MOV             R0, #2
STR             R7, [R4,#4]
STR             R0, [R6]
B               loc_12CFB4
MOV             R0, #2
STR             R0, [R4,#4]
STR             R7, [R6]
B               loc_12CFB4
MOV             R0, #3
STR             R0, [R4,#4]
STR             R7, [R6]
B               loc_12CFB4
MOV             R0, #4
STR             R0, [R4,#4]
STR             R7, [R6]
LDR             R2, =dword_6D2418
LDR             R1, =dword_6D241C
LDR             R0, [R2]
LDR             R1, [R1]
CMP             R0, R1
BCS             loc_12CFE8
LDR             LR, [R4,#4]
LDR             R3, [R6]
LDR             R12, =0xF0117
ORR             R3, R3, LR,LSL#16
STM             R0, {R3,R12}
ADD             LR, R0, #8
STR             LR, [R2]
LDR             R0, =dword_6D241C
LDR             R1, [R0]
LDR             R0, =dword_6D2418
LDR             R0, [R0]
CMP             R0, R1
BCS             loc_12D028
LDR             R0, [R6,#0xC]
BL              sub_13BC34
LDR             R1, =dword_6D2418
LDR             R3, =0xF011D
MOV             R2, R0,LSR#3
LDR             R12, [R1]
STR             R2, [R12]
ADD             R2, R12, #8
STR             R3, [R12,#4]
STR             R2, [R1]
LDRD            R2, R3, [R8,#0xC]
LDR             R0, [R10,#0x1C]
CMP             R0, #0
STRBEQ          R7, [R4,#0xD]
STRBEQ          R7, [R4,#0xE]
BEQ             loc_12D14C
LDR             R0, [R5,#0x68C]
STRB            R11, [R4,#0xD]
LDR             R1, [R9]
STR             R1, [R6,#8]
LDR             R1, [R9,#0x38]
CMP             R1, #0x10
STREQ           R7, [R6,#4]
STREQ           R7, [R5,#0x68C]
BEQ             loc_12D090
CMP             R1, #0x18
BEQ             loc_12D084
CMP             R1, #0x20 ; ' '
BNE             loc_12D090
MOV             R1, #3
STR             R1, [R6,#4]
STR             R1, [R5,#0x68C]
B               loc_12D090
MOV             R1, #2
STR             R1, [R6,#4]
STR             R1, [R5,#0x68C]
LDRB            R1, [R5,#0x54]
CMP             R1, #0
BEQ             loc_12D0C8
LDR             R1, [R5,#0x68C]
CMP             R1, #0
BEQ             loc_12D0B4
CMP             R0, #0
BEQ             loc_12D0BC
B               loc_12D0C8
CMP             R0, #0
BEQ             loc_12D0D8
LDR             R0, [R5]
ORR             R0, R0, #4
STR             R0, [R5]
LDR             R0, [R5,#0x68C]
CMP             R0, #3
MOVEQ           R0, #1
BEQ             loc_12D0DC
MOV             R0, #0
STRB            R0, [R4,#0xE]
LDR             R0, [R9,#0x20]
LDR             R7, =dword_6D2418
LDR             R2, =dword_6D241C
STR             R0, [R6,#0x10]
LDR             R1, [R7]
LDR             R0, [R2]
CMP             R1, R0
BCS             loc_12D114
LDR             R3, [R6,#4]
LDR             R12, =0xF0116
ADD             R8, R1, #8
STM             R1, {R3,R12}
STR             R8, [R7]
LDR             R0, [R2]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_12D148
LDR             R0, [R6,#8]
BL              sub_13BC34
LDR             R1, [R7]
LDR             R2, =0xF011C
MOV             R3, R0,LSR#3
ADD             R0, R1, #4
STR             R3, [R1],#8
STR             R2, [R0]
STR             R1, [R7]
LDRD            R2, R3, [R9,#0xC]
LDR             R0, [R4,#0x14]
CMP             R0, R2
LDREQ           R0, [R4,#0x18]
CMPEQ           R0, R3
BNE             loc_12D16C
LDR             R0, [R5,#4]
TST             R0, #0x100
BEQ             loc_12D1F4
LDR             R0, =dword_6D2418
LDR             R7, =dword_6D241C
SUB             R12, R3, #1
BIC             R8, R12, #0xFF000
LDR             R12, [R0]
LDR             R1, [R7]
MOV             R6, R2,LSL#20
MOV             R6, R6,LSR#20
CMP             R12, R1
ORR             R6, R6, R8,LSL#12
BCS             loc_12D1B0
LDR             R8, =0xF011E
ORR             R10, R6, #0x1000000
ADD             R9, R12, #8
STR             R8, [R12,#4]
STR             R10, [R12]
STR             R9, [R0]
LDR             R1, [R7]
LDR             R12, [R0]
CMP             R12, R1
BCS             loc_12D1D8
LDR             R7, =0xF006E
ORR             R8, R6, #0x1000000
ADD             R6, R12, #8
STR             R7, [R12,#4]
STR             R8, [R12]
STR             R6, [R0]
STRD            R2, R3, [R4,#0x14]
LDRB            R0, [R5,#0x648]
CMP             R0, #0
BEQ             loc_12D1F4
LDR             R0, [R5]
ORR             R0, R0, #0x200
STR             R0, [R5]
LDRB            R1, [R5,#0x30]
ADD             R0, R5, #0x20 ; ' '
CMP             R1, #0
BNE             locret_12CE68
STRB            R11, [R0,#0x10]
POP             {R4-R12,LR}
MOV             R1, #0
MOV             R0, R1
B               sub_126B5C
