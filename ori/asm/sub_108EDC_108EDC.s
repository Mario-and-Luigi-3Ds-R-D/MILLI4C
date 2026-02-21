PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0x34
MOV             R8, #0
LDR             R5, =off_6BFDFC
ADR             R1, aRomShaderFbcle; "rom:/Shader/FBClear.shbin"
MOV             R6, SP
LDR             R0, [R5,#(off_6BFE00 - 0x6BFDFC)]; off_656E4C
MOV             R2, R0
STR             R0, [SP,#0x50+var_50]
LDR             R2, [R2,#(dword_656E1C - 0x656E4C)]
LDR             R0, [R5,#(off_6BFE04 - 0x6BFDFC)]; off_656E4C
STR             R0, [SP,R2]
MOV             R2, #1
ADD             R0, SP, #0x50+var_4C
STR             R8, [SP,#0x50+var_4C]
STR             R8, [SP,#0x50+var_40]
STR             R8, [SP,#0x50+var_3C]
STR             R8, [SP,#0x50+var_48]
STR             R8, [SP,#0x50+var_44]
BL              sub_10D7A8
ANDS            R1, R0, #0x80000000
BPL             loc_108F44
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R5]; off_6BFE3C
MOV             R1, R0
STR             R0, [SP,#0x50+var_50]
LDR             R1, [R1,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R5,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
MOV             R5, SP
STR             R0, [R6,R1]
ADD             R0, SP, #0x50+var_4C
ADD             R1, SP, #0x50+var_38
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, =dword_6ED9B8
LDR             R1, [SP,#0x50+var_38]
MOV             R2, #0x10000
LDR             R0, [R0]
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
MOV             R6, R0
ADD             R0, R5, #4
ADD             R1, SP, #0x50+var_28
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R3, [SP,#0x50+var_28]
MOV             R2, R6
ADD             R0, R5, #4
ADD             R1, SP, #0x50+var_34
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x50+var_4C]
BICS            R0, R0, #1
BEQ             loc_108FF8
LDR             R0, [SP,#0x50+var_4C]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x50+var_4C]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x50+var_4C]
LDR             R0, [R4,#0x88C]
MOV             R7, #1
CMP             R0, #0
BNE             loc_109028
ADD             R0, R4, #0x800
LDR             R1, =unk_658010
MOV             R3, #0x20000
MOV             R2, #4
ADD             R0, R0, #0x88
STR             R7, [SP,#0x50+var_4C]
STR             R8, [SP,#0x50+var_50]
BL              sub_112340
MOV             R3, #0
LDR             R1, =dword_6ED9B8
LDR             R0, =0x137CC
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_109050
BL              sub_11C444
MOV             R5, R0
MOV             R3, #0xFFFFFFFF
MOV             R2, #0
MOV             R1, R6
MOV             R0, R5
BL              sub_111924
MOV             R0, R5
NOP
BL              sub_111C08
MOV             R1, #0
MOV             R0, R5
BL              sub_111E70
MOV             R0, R5
NOP
BL              sub_111CF8
MOV             R2, #1
MOV             R1, R2
MOV             R0, R5
BL              sub_111C30
MOV             R0, #2
MOV             R3, #0xFF
STR             R0, [SP,#0x50+var_4C]
STR             R0, [SP,#0x50+var_48]
STR             R0, [SP,#0x50+var_44]
MOV             R2, R3
MOV             R1, #0
MOV             R0, R5
STR             R7, [SP,#0x50+var_50]
BL              sub_111D20
MOV             R0, R5
NOP
BL              sub_111BC4
MOV             R0, R5
NOP
BL              sub_111E48
LDR             R1, [R4,#0x88C]
MOV             R0, R5
BL              sub_111D78
MOV             R1, #1
MOV             R0, R5
BL              sub_111BEC
LDR             R0, [R4,#0x89C]
ADD             R7, R4, #0x800
ADD             R1, SP, #0x50+var_2C
STR             R0, [SP,#0x50+var_2C]
MOV             R0, R5
BL              sub_111C60
ADD             R0, R5, #0x13000
ADD             R0, R0, #0x6D0
LDR             R1, [R0]
BIC             R1, R1, #0xFE000000
BIC             R1, R1, #0x208
STR             R1, [R0]
MOV             R1, R4
MOV             R0, R5
BL              sub_110D28
SUB             R0, R0, R4
BIC             R0, R0, #3
ADD             R9, R4, #0x800
STR             R0, [R7]
LDR             R0, [R4,#0x88C]
ADD             R9, R9, #4
BL              sub_122B64
MOV             R1, R0
MOV             R3, #1
MOV             R2, #4
MOV             R0, R9
BL              sub_111B1C
SUB             R0, R0, R4
SUB             R0, R0, #0x800
SUB             R0, R0, #4
BIC             R0, R0, #3
CMP             R5, #0
STR             R0, [R4,#0x884]
BEQ             loc_10918C
MOV             R0, R5
BL              sub_111F48
NOP
NOP
BL              sub_300FD4
CMP             R6, #0
MOVNE           R0, R6
BLNE            sub_110D10
MOV             R3, #0
ADD             R5, R4, #0x800
STR             R3, [R4,#0x8A4]
ADD             R5, R5, #0xAC
STR             R3, [R4,#0x8A8]
MOV             R0, #0xF0
MOV             R1, #0x190
STR             R8, [R4,#0x8A0]
STM             R5, {R0,R1}
ADD             SP, SP, #0x34 ; '4'
POP             {R4-R9,PC}
