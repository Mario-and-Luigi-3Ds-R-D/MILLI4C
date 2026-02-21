PUSH            {R4-R11,LR}
SUB             SP, SP, #0xC4
MOV             R4, #0
MOV             R10, SP
MOV             R9, R4
LDR             R7, =dword_6ED9B8
LDR             R11, =unk_6E7BF4
ADD             R0, R4, R4,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R8, R11, R0,LSL#2
LDR             R0, [R8,#8]
CMP             R0, #0
BNE             loc_105B08
LDR             R0, =off_6CED00; "I" ...
MOV             R2, #0
LDR             R1, [R0,R4,LSL#2]
ADD             R0, SP, #0xE8+var_B0
BL              sub_10D1D0
LDR             R5, =off_6BFDFC
MOV             R1, R0
MOV             R6, SP
LDR             R0, [R5,#(off_6BFE00 - 0x6BFDFC)]; off_656E4C
MOV             R2, R0
STR             R0, [SP,#0xE8+var_E8]
LDR             R2, [R2,#(dword_656E1C - 0x656E4C)]
LDR             R0, [R5,#(off_6BFE04 - 0x6BFDFC)]; off_656E4C
STR             R0, [SP,R2]
MOV             R2, #1
ADD             R0, SP, #0xE8+var_E4
STR             R9, [SP,#0xE8+var_E4]
STR             R9, [SP,#0xE8+var_D8]
STR             R9, [SP,#0xE8+var_D4]
STR             R9, [SP,#0xE8+var_E0]
STR             R9, [SP,#0xE8+var_DC]
BL              sub_10D7A8
ANDS            R1, R0, #0x80000000
NOP
BPL             loc_105A64
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R5]; off_6BFE3C
MOV             R1, R0
STR             R0, [SP,#0xE8+var_E8]
LDR             R1, [R1,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R5,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
STR             R0, [R6,R1]
ADD             R0, R10, #4
ADD             R1, SP, #0xE8+var_C0
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R7]
LDR             R5, [SP,#0xE8+var_C0]
MOV             R2, #0
LDR             R12, [R0,#0xC]
MOV             R1, R5
MOV             R0, R7
BLX             R12
MOV             R6, R0
ADD             R0, R10, #4
MOV             R2, R6
MOV             R3, R5
ADD             R1, SP, #0xE8+var_C0
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0xE8+var_E4]
BICS            R0, R0, #1
BEQ             loc_105AFC
LDR             R0, [SP,#0xE8+var_E4]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0xE8+var_E4]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R9, [SP,#0xE8+var_E4]
MOV             R1, R6
MOV             R0, R8
BL              sub_1070B8
ADD             R4, R4, #1
CMP             R4, #2
BCC             loc_1059DC
ADD             SP, SP, #0xC4
POP             {R4-R11,PC}
