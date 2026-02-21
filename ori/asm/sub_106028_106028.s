PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
MOV             R8, #0
MOV             R4, R0
LDR             R0, =off_6BFDFC
STR             R8, [SP,#0x38+var_34]
STR             R8, [SP,#0x38+var_30]
STR             R8, [SP,#0x38+var_2C]
STR             R8, [SP,#0x38+var_28]
STR             R8, [SP,#0x38+var_24]
LDR             R3, [R0]; off_6BFE3C
MOV             R6, SP
MOV             R2, #1
STR             R3, [SP,#0x38+var_38]
LDR             R3, [R3,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R0,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
STR             R0, [SP,R3]
ADD             R0, SP, #0x38+var_34
STR             R8, [SP,#0x38+var_28]
STR             R8, [SP,#0x38+var_24]
STR             R8, [SP,#0x38+var_30]
STR             R8, [SP,#0x38+var_2C]
BL              sub_10D7A8
ANDS            R1, R0, #0x80000000
BPL             loc_106098
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
ADD             R0, R6, #4
ADD             R1, SP, #0x38+var_20
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, =dword_6ED9B8
LDR             R5, [SP,#0x38+var_20]
MOV             R2, #0
LDR             R0, [R0]
MOV             R1, R5
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
MOV             R2, R0
STR             R0, [R4]
MOV             R3, R5
ADD             R0, R6, #4
ADD             R1, SP, #0x38+var_20
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x38+var_34]
BICS            R0, R0, #1
BEQ             loc_10611C
LDR             R0, [SP,#0x38+var_34]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x38+var_34]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x38+var_34]
LDR             R6, =0x128E8
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, R6
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_106158
MOV             R1, R6
BL              sub_2FFE8C
MOV             R0, R5
NOP
BL              sub_10DB08
MOV             R5, R0
LDR             R1, =dword_6ED9B8
MOV             R3, #7
MOV             R2, #0
MOV             R0, #0x1000
BL              sub_1143B4
MOV             R6, R0
LDR             R1, [R4]
MOV             R3, #0xFFFFFFFF
MOV             R2, #3
MOV             R0, R5
BL              sub_10DA1C
MOV             R1, R6
MOV             R0, R5
BL              sub_113C48
LDRB            R1, [R5,#0x298]
MOV             R7, R0
STRB            R1, [R4,#0x1C]
SUB             R1, R0, R6
TST             R1, #0xC
BNE             loc_1061BC
LDR             R1, =unk_65803C
MOV             R2, #8
MOV             R0, R7
BL              sub_1273D0
ADD             R7, R7, #8
LDR             R1, =unk_658044
MOV             R2, #8
MOV             R0, R7
BL              sub_1273D0
ADD             R0, R7, #8
MOV             R1, #1
SUB             R0, R0, R6
BIC             R2, R0, #3
STR             R1, [SP,#0x38+var_34]
MOV             R3, #0x30000
MOV             R1, R6
ADD             R0, R4, #4
STR             R8, [SP,#0x38+var_38]
BL              sub_109244
CMP             R5, #0
MOVNE           R0, R5
BLNE            sub_300FD4
NOP
NOP
BL              sub_1164E4
NOP
NOP
BL              sub_10C984
CMP             R6, #0
NOP
BEQ             loc_106234
ADD             SP, SP, #0x20 ; ' '
MOV             R0, R6
POP             {R4-R8,LR}
B               sub_2FF5D4
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
