PUSH            {R4-R9,LR}
SUB             SP, SP, #0x14
LDR             R7, =byte_6D23B8
LDR             R6, [R7,#(dword_6D23C8 - 0x6D23B8)]
CMP             R6, #0
BEQ             loc_109DEC
MOV             R8, #0
STR             R8, [R7,#(dword_6D23CC - 0x6D23B8)]
MOV             R1, #1
ADD             R0, R7, #0x58 ; 'X'
BL              sub_118A50
LDR             R4, =unk_6EF110
MOV             R9, #1
ADD             R5, R4, #0x28 ; '('
LDR             R2, [R4]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STMEA           SP, {R0-R2}
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x30+var_28
ADD             R0, SP, #0x30+var_24
BL              sub_120250
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
MOV             R0, R4
STRB            R9, [R4,#4]
BL              sub_1210EC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_109D5C
SVC             0x23 ; '#'
STR             R8, [R4]
ADD             R4, R4, #8
CMP             R5, R4
BHI             loc_109D0C
LDR             R1, =dword_6FB418
MOV             R0, #0xFFFFFFFF
STR             R0, [R1,#(dword_6FB420 - 0x6FB418)]
BL              sub_112C90
NOP
NOP
BL              sub_112B20
MOV             R1, #0
MOV             R0, R6
BL              sub_12437C
MOV             R1, #1
MOV             R0, R6
BL              sub_12437C
LDRB            R0, [R7]
CMP             R0, #0
BEQ             loc_109DC8
BL              sub_10EC74
NOP
NOP
BL              sub_10E17C
NOP
NOP
BL              sub_10E1AC
STRB            R8, [R7]
NOP
BL              sub_1137E8
NOP
NOP
BL              sub_112D08
STR             R8, [R7,#(dword_6D23C8 - 0x6D23B8)]
ADD             SP, SP, #0x14
POP             {R4-R9,LR}
B               sub_113788
ADD             SP, SP, #0x14
POP             {R4-R9,PC}
