PUSH            {R0-R2,R4-R11,LR}
MOV             R9, R0
MOV             R8, R1
LDR             R0, =dword_6D2418
MOV             R2, R8,LSR#7
BIC             R1, R1, #1
ADD             R1, R1, R2,LSL#1
LDR             R4, [R0]
LDR             R0, [R0,#(dword_6D241C - 0x6D2418)]
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #8
CMP             R0, R1
LDRLS           R1, =dword_6D2418
STRLS           R0, [R1]
BLS             loc_137A4C
CMP             R8, #0
MOV             R7, #0
BLS             loc_137A44
LDR             R0, [SP,#0x30+var_28]
ADD             R5, R0, R7,LSL#2
SUB             R0, R8, R7
LDR             R1, [R5],#4
CMP             R0, #0x80
MOVHI           R0, #0x80
STR             R1, [R4],#4
LDR             R1, =0xFFF00000
BIC             R6, R0, #1
TST             R6, #0xE
ADD             R0, R1, R0,LSL#20
ORR             R0, R0, R9
ORR             R0, R0, #0xF0000
STR             R0, [R4],#4
BEQ             loc_137968
LDR             R0, [R5],#4
SUB             R6, R6, #2
TST             R6, #0xE
STR             R0, [R4],#4
LDR             R1, [R5],#4
STR             R1, [R4],#4
BNE             loc_13794C
CMN             R6, #0x80000001
MOVHI           R10, #0x10
BLS             loc_1379D4
SUB             R0, R4, R5
SUB             R6, R6, #0x10
MOV             R1, R0,ASR#2
CMP             R1, #0
CMPGT           R10, R0,ASR#2
MOVGT           R0, #0
BGT             loc_1379AC
MOV             R2, #0x40 ; '@'
MOV             R1, R5
MOV             R0, R4
BL              sub_127E2C
ADD             R5, R5, #0x40 ; '@'
ADD             R4, R4, #0x40 ; '@'
B               loc_1379C8
LDR             R1, [R5],#4
ADD             R0, R0, #2
CMP             R0, #0x10
STR             R1, [R4],#4
LDR             R1, [R5],#4
STR             R1, [R4],#4
BLT             loc_1379AC
CMP             R6, #0
BNE             loc_137974
B               loc_137A38
MOV             R0, #0xFFFFFFF1
SUB             R0, R0, R6
MOV             R3, #0
MOV             R1, R0,ASR#31
MOV             R12, R3
ADD             R0, R0, R1,LSR#28
MOV             R10, R0,ASR#4
RSB             R6, R10, #0
B               loc_137A2C
ADD             R1, R5, R3,LSL#2
ADD             R0, R4, R3,LSL#2
SUB             R1, R1, #4
MOV             R2, #8
SUB             R0, R0, #4
LDR             R11, [R1,#4]
SUBS            R2, R2, #1
STR             R11, [R0,#4]
LDR             R11, [R1,#8]!
STR             R11, [R0,#8]!
BNE             loc_137A0C
ADD             R3, R3, #0x10
ADD             R12, R12, #1
CMP             R6, R12
BGT             loc_1379F8
SUB             R4, R4, R10,LSL#6
ADD             R7, R7, #0x80
CMP             R7, R8
BCC             loc_137910
LDR             R0, =dword_6D2418
STR             R4, [R0]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
