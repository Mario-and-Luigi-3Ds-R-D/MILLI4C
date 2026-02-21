PUSH            {R4-R11,LR}
SUB             SP, SP, #0x3C
MOV             R7, R0
MOV             R9, #0
MOV             R8, R1
LDR             R0, =off_6BFDFC
STR             R9, [SP,#var_s4]
STR             R9, [SP,#var_s8]
STR             R9, [SP,#var_sC]
STR             R9, [SP,#var_s10]
STR             R9, [SP,#var_s14]
LDR             R2, [R0]; off_6BFE3C
ADD             R1, SP, #var_s18
MOV             R11, SP
STR             R2, [SP,#var_s0]
LDR             R2, [R2,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R0,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
STR             R0, [SP,R2]
LDR             R0, =off_6BFDFC
STR             R9, [SP,#var_s1C]
STR             R9, [SP,#var_s20]
STR             R9, [SP,#var_s24]
STR             R9, [SP,#var_s28]
STR             R9, [SP,#var_s2C]
LDR             R2, [R0]; off_6BFE3C
STR             R2, [SP,#var_s18]
LDR             R2, [R2,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R0,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
STR             R0, [R1,R2]
ADR             R1, aRomRoStaticCrs; "rom:/RO/static.crs"
MOV             R2, #1
ADD             R0, SP, #var_s4
STR             R9, [SP,#var_s10]
STR             R9, [SP,#var_s14]
STR             R9, [SP,#var_s8]
STR             R9, [SP,#var_sC]
BL              sub_10D7A8
ANDS            R1, R0, #0x80000000
BPL             loc_1052BC
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
ADD             R0, R11, #var_s4
ADD             R1, SP, #var_s30
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R4, [SP,#var_s30]
ADR             R1, aRomCrrStaticCr; "rom:/.crr/static.crr"
ADD             R10, SP, #var_s18
ADD             R0, R4, #0xF00
ADD             R0, R0, #0xFF
MOV             R2, #1
MOV             R6, R0,LSR#12
ADD             R0, SP, #var_s1C
MOV             R6, R6,LSL#12
STR             R9, [SP,#var_s28]
STR             R9, [SP,#var_s2C]
STR             R9, [SP,#var_s20]
STR             R9, [SP,#var_s24]
BL              sub_10D7A8
ANDS            R1, R0, #0x80000000
NOP
BPL             loc_105324
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
ADD             R0, R10, #4
ADD             R1, SP, #var_s30
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R7]
LDR             R5, [SP,#var_s30]
MOV             R2, R8
LDR             R3, [R0,#0xC]
ADD             R1, R6, R5
MOV             R0, R7
BLX             R3
LDR             R7, =dword_6D1F88
MOV             R2, R0
MOV             R3, R4
ADD             R1, SP, #var_s30
STR             R0, [R7]
ADD             R0, R11, #var_s4
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#var_s4]
BICS            R0, R0, #1
BEQ             loc_1053A8
LDR             R0, [SP,#var_s4]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#var_s4]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R9, [SP,#var_s4]
LDR             R0, [R7]
MOV             R3, R5
ADD             R1, SP, #var_s30
ADD             R2, R0, R6
MOV             R6, R2
ADD             R0, R10, #4
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#var_s1C]
BICS            R0, R0, #1
BEQ             loc_1053F8
LDR             R0, [SP,#var_s1C]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#var_s1C]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R9, [SP,#var_s1C]
LDR             R0, [R7]
MOV             R1, R4
BL              sub_107644
MOV             R1, R5
MOV             R0, R6
BL              sub_107670
STR             R0, [R7,#(dword_6D1F8C - 0x6D1F88)]
LDR             R0, [SP,#var_s1C]
BICS            R0, R0, #1
BEQ             loc_10543C
LDR             R0, [SP,#var_s1C]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#var_s1C]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R9, [SP,#var_s1C]
LDR             R0, [SP,#var_s4]
BICS            R0, R0, #1
BEQ             loc_105464
LDR             R0, [SP,#var_s4]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#var_s4]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R9, [SP,#var_s4]
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
