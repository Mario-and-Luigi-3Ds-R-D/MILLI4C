PUSH            {R3-R7,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R0, [R0,#4]
LDR             R1, =0x461
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x78 ; 'x'
LDRSB           R5, [R1,R4]
LDR             R7, [R0]
CMN             R5, #1
BEQ             loc_17F97C
LDR             R1, [R6,#0x86C]
MOV             R2, #0xF
MOV             R0, #0xFFFFFFFF
BICS            R1, R2, R1
STRBEQ          R0, [R4,#0x461]
BEQ             loc_17FA54
ADD             R1, R5, R5,LSL#1
ADD             R1, R1, R5,LSL#3
ADD             R1, R7, R1,LSL#2
LDR             R1, [R1,#0x28]
TST             R1, #0x80000
STRBNE          R0, [R4,#0x461]
MOV             R0, #1
POP             {R3-R7,PC}
LDR             R0, [R6]
LDR             R1, [R0,#0x3B0]
MOV             R0, R6
BLX             R1
ADD             R1, R6, #0x800
MOV             R2, #2
LDRSB           R0, [R1,#0xBA]
CMN             R0, #1
MOV             R5, R0
BEQ             loc_17FA28
ADD             R3, R5, R5,LSL#1
ADD             R3, R3, R5,LSL#3
ADD             R3, R7, R3,LSL#2
LDR             R3, [R3,#0x28]
MOV             R3, R3,LSL#28
CMP             R2, R3,LSR#30
BEQ             loc_17F974
ADD             R2, R5, R5,LSL#1
ADD             R2, R2, R5,LSL#3
ADD             R2, R7, R2,LSL#2
LDR             R2, [R2,#0x28]
TST             R2, #0x20
LDRSBEQ         R1, [R1,#0xBB]
CMPEQ           R0, R1
BEQ             loc_17F974
MOV             R0, R2,LSL#17
MOVS            R1, R0,LSR#23
BEQ             loc_17FA54
LDR             R2, [R6,#0x86C]
MOV             R1, #1
AND             R2, R2, #0xF
MOV             R1, R1,LSL R2
TST             R1, R0,LSR#23
BEQ             loc_17FA54
LDR             R1, =off_6D1648
LDR             R2, [R1]
MOV             R1, R0,LSR#23
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
BL              sub_537BE0
STRB            R5, [R4,#0x461]
NOP
B               loc_17F974
LDRSB           R5, [R1,#0xBB]
CMN             R5, #1
BEQ             loc_17F974
ADD             R3, R5, R5,LSL#1
ADD             R3, R3, R5,LSL#3
ADD             R3, R7, R3,LSL#2
LDR             R3, [R3,#0x28]
MOV             R3, R3,LSL#28
CMP             R2, R3,LSR#30
BEQ             loc_17F9C0
B               loc_17F974
ADD             R0, R5, R5,LSL#1
ADD             R0, R0, R5,LSL#3
ADD             R0, R7, R0,LSL#2
LDR             R1, [R0,#0x28]
TST             R1, #0x80000
BNE             loc_17F974
LDRB            R2, [R6,#0xDE]
MOV             R3, #4
LDR             R0, [R4,#4]
MOV             R1, R1,LSR#21
AND             R2, R3, R2,LSL#1
ADD             R2, R2, #0x13000
ADD             R2, R2, #0xC70
SXTB            R3, R5
LDR             R0, [R0,R2]
MOV             R5, R3
LDR             R2, [R0,#0x14]
LDR             R2, [R0,R2]!
ADD             R2, R0, R2,LSL#2
ADD             R1, R2, R1,LSL#2
MOV             R2, #1
LDR             R1, [R1,#4]
STR             R6, [SP,#0x18+var_18]
ADD             R7, R1, R0
LDR             R0, [R4]
MOV             R1, R7
LDR             R12, [R0,#0x34]
MOV             R0, R4
BLX             R12
CMP             R0, #0
BEQ             loc_17FAEC
LDR             R0, [R4,#0x338]
TST             R0, #1
BEQ             loc_17FAE4
TST             R0, #2
BEQ             loc_17F974
MOV             R0, #0
POP             {R3-R7,PC}
STR             R6, [SP,#0x18+var_18]
LDR             R0, [R4]
MOV             R3, R5
MOV             R2, #2
MOV             R1, R7
LDR             R12, [R0,#0x34]
MOV             R0, R4
BLX             R12
MOV             R0, #0
POP             {R3-R7,PC}
