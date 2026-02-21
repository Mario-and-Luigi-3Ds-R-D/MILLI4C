PUSH            {R4-R11,LR}
SUB             SP, SP, #0x5C
MOV             R8, R0
MOV             R3, R1
MOV             R2, #0
LDR             R12, =0xB02B9
LDR             R0, =0x10242
LDR             R5, =0xF02BB
STR             R12, [R1,#4]!
ADD             R6, R1, #4
ADD             R1, R1, #8
ADD             R7, SP, #0x24
STM             R1, {R0,R2}
ADD             R1, R1, #4
ADD             R4, R5, R0,ASR#16
STR             R1, [SP,#0x5C+var_58]
ADD             R0, R1, #4
STM             R7, {R3,R6}
MOV             R1, R2
STR             R5, [R0],#4
LDR             R12, =dword_6D2598
STM             R0!, {R2,R4}
ADD             R3, R0, #8
MOV             R5, #0
LDR             R12, [R12]
STR             R3, [SP,#0x5C+var_14]
ADD             R3, R0, #0xC
STR             R3, [SP,#0x5C+var_2C]
STR             R12, [R0],#4
STR             R0, [SP,#0x5C+var_10]
STR             R2, [R0,#4]
ADD             R3, R0, #8
ADD             R0, R0, #0xC
MOV             R6, R5
STR             R3, [SP,#0x5C+var_28]
STR             R12, [SP,#0x5C+var_C]
RSB             R2, R6, R6,LSL#3
ADD             R12, R8, R2,LSL#4
LDR             R2, [R12,#0x160]!
CMP             R2, #0
BEQ             loc_114100
MOV             R2, #0
MOV             R3, R2
MOV             R7, R2
MOV             R4, #1
ADD             R5, R5, #1
STR             R2, [SP,#0x5C+var_54]
STR             R2, [SP,#0x5C+var_50]
ADD             R9, R12, R2
LDRB            R9, [R9,#4]
SUB             R9, R9, #2
CMP             R9, #0xE; switch 14 cases
LDRCC           PC, [PC,R9,LSL#2]; switch jump
B               def_113F54; jumptable 00113F54 default case, cases 2,3,6,7,10,11
DCD loc_113F94; jump table for switch statement
CMP             R4, #2; jumptable 00113F54 cases 0,4,8,12
ADD             R3, R3, #1
BIC             R3, R3, #1
MOVLT           R4, #2
B               def_113F54; jumptable 00113F54 default case, cases 2,3,6,7,10,11
CMP             R4, #4; jumptable 00113F54 cases 1,5,9,13
ADD             R3, R3, #3
BIC             R3, R3, #3
MOVLT           R4, #4
ADD             R9, R12, R2,LSL#2; jumptable 00113F54 default case, cases 2,3,6,7,10,11
STR             R9, [SP,#0x5C+var_18]
LDR             R9, [R9,#0x10]
CMP             R9, #0
BEQ             loc_1140C0
LDR             R10, [SP,#0x5C+var_18]
ADD             R3, R3, R9
LDR             R10, [R10,#0x40]
CMP             R10, #0
MOV             R10, R2,ASR#31
BLT             loc_114084
ADD             R11, R2, R10,LSR#29
ADD             R9, SP, #0x5C+var_54
MOV             R10, R11,ASR#3
BIC             R11, R11, #7
SUB             R11, R2, R11
LDR             R10, [R9,R10,LSL#2]!
MOV             R11, R11,LSL#2
ORR             R10, R10, R1,LSL R11
STR             R10, [R9]
MOV             R9, R1,ASR#31
ADD             R10, R12, R2
ADD             R9, R1, R9,LSR#29
LDRB            R11, [R10,#4]
MOV             R10, R9,ASR#3
BIC             LR, R9, #7
LDR             R9, [SP,#0x5C+var_14]
ADD             R9, R9, R10,LSL#2
SUB             R10, R1, LR
LDR             LR, [R9]
MOV             R10, R10,LSL#2
ORR             R11, LR, R11,LSL R10
STR             R11, [R9]
MOV             R11, #0xF
BIC             R9, R1, #7
MOV             LR, R11,LSL R10
STR             R9, [SP,#0x5C+var_30]
LDR             R11, [SP,#0x5C+var_58]
ADD             R1, R1, #1
LDR             R9, [R11,R9]
BIC             R11, R9, LR
LDR             R9, [SP,#0x5C+var_30]
LDR             LR, [SP,#0x5C+var_58]
STR             R11, [LR,R9]
LDR             R9, [SP,#0x5C+var_18]
LDR             R9, [R9,#0x40]
ORR             R11, R11, R9,LSL R10
LDR             R9, [SP,#0x5C+var_30]
LDR             R10, [SP,#0x5C+var_58]
STR             R11, [R10,R9]
B               loc_1140B0
ADD             R10, R2, R10,LSR#29
MOV             LR, #0xB
MOV             R11, R10,ASR#3
BIC             R10, R10, #7
ADD             LR, LR, R9,LSR#2
ADD             R9, SP, #0x5C+var_54
SUB             R10, R2, R10
LDR             R11, [R9,R11,LSL#2]!
MOV             R10, R10,LSL#2
ORR             R10, R11, LR,LSL R10
STR             R10, [R9]
ADD             R2, R2, #1
CMP             R2, #0xC
ADD             R7, R7, #1
BCC             loc_113F44
LDR             R2, [SP,#0x5C+var_C]
LDR             R12, [R12]
ADD             R3, R3, R4
RSB             R2, R2, #0
SUB             R9, R3, #1
SUB             R4, R4, #1
ADD             R3, R12, R2,LSL#3
BIC             R2, R9, R4
STR             R3, [R0],#4
MOV             R3, R2,LSL#16
LDR             R2, [SP,#0x5C+var_54]
STR             R2, [R0],#4
ORR             R2, R3, R7,LSL#28
LDR             R3, [SP,#0x5C+var_50]
ORR             R2, R2, R3
STR             R2, [R0],#4
ADD             R6, R6, #1
CMP             R6, #0xC
BCC             loc_113F14
ADD             R3, R5, R5,LSL#1
LDR             R2, =0x800F0200
MOV             R3, R3,LSL#20
ADD             R3, R3, #0x200000
ORR             R3, R3, R2
LDR             R2, [SP,#0x5C+var_10]
TST             R5, #1
STR             R3, [R2]
BEQ             loc_114138
MOV             R2, #0
STR             R2, [R0],#4
LDR             R6, =0x803F0232
MOV             R12, #0xB
MOV             R4, #0
MOV             R7, #1
MOV             R5, #0xF
ADD             R2, R12, R12,LSL#2
ADD             R2, R8, R2,LSL#2
LDRB            R3, [R2,#0x6A0]!
CMP             R3, #0
BEQ             loc_114358
STM             R0!, {R1,R6}
VLDR            S0, [R2,#0xC]
VMOV            R3, S0
BICS            R9, R3, #0x80000000
BEQ             loc_114190
MOV             R9, R3,LSL#1
MOV             R9, R9,LSR#24
SUB             R9, R9, #0x40 ; '@'
CMP             R9, #0
MOVLT           R3, R3,LSR#31
MOVLT           R3, R3,LSL#23
BLT             loc_1141A4
MOV             R10, R3,LSL#9
MOV             R11, R3,LSR#31
MOV             R3, R10,LSR#16
ORR             R3, R3, R9,LSL#16
ORR             R3, R3, R11,LSL#23
VLDR            S0, [R2,#0x10]
MOV             R3, R3,LSL#8
MOV             R10, R3,LSR#24
VMOV            R3, S0
BICS            R9, R3, #0x80000000
BEQ             loc_1141D8
MOV             R9, R3,LSL#1
MOV             R9, R9,LSR#24
SUB             R9, R9, #0x40 ; '@'
CMP             R9, #0
MOVLT           R3, R3,LSR#31
MOVLT           R3, R3,LSL#23
BLT             loc_1141EC
MOV             R11, R3,LSL#9
MOV             R3, R3,LSR#31
MOV             R11, R11,LSR#16
ORR             R9, R11, R9,LSL#16
ORR             R3, R9, R3,LSL#23
ORR             R3, R10, R3,LSL#8
STR             R3, [R0],#4
VLDR            S0, [R2,#0xC]
VMOV            R3, S0
BICS            R9, R3, #0x80000000
BEQ             loc_114220
MOV             R9, R3,LSL#1
MOV             R9, R9,LSR#24
SUB             R9, R9, #0x40 ; '@'
CMP             R9, #0
MOVLT           R3, R3,LSR#31
MOVLT           R3, R3,LSL#23
BLT             loc_114234
MOV             R10, R3,LSL#9
MOV             R11, R3,LSR#31
MOV             R3, R10,LSR#16
ORR             R3, R3, R9,LSL#16
ORR             R3, R3, R11,LSL#23
VLDR            S0, [R2,#8]
MOV             R9, R3,LSL#16
VMOV            R3, S0
BICS            R10, R3, #0x80000000
BEQ             loc_114264
MOV             R10, R3,LSL#1
MOV             R10, R10,LSR#24
SUB             R10, R10, #0x40 ; '@'
CMP             R10, #0
MOVLT           R3, R3,LSR#31
MOVLT           R3, R3,LSL#23
BLT             loc_114278
MOV             R11, R3,LSL#9
MOV             R3, R3,LSR#31
MOV             R11, R11,LSR#16
ORR             R10, R11, R10,LSL#16
ORR             R3, R10, R3,LSL#23
MOV             R3, R3,LSR#8
PKHBT           R3, R3, R9
STR             R3, [R0],#4
VLDR            S0, [R2,#4]
VMOV            R3, S0
BICS            R9, R3, #0x80000000
BEQ             loc_1142B0
MOV             R9, R3,LSL#1
MOV             R9, R9,LSR#24
SUB             R9, R9, #0x40 ; '@'
CMP             R9, #0
MOVLT           R3, R3,LSR#31
MOVLT           R3, R3,LSL#23
BLT             loc_1142C4
MOV             R10, R3,LSL#9
MOV             R3, R3,LSR#31
MOV             R10, R10,LSR#16
ORR             R9, R10, R9,LSL#16
ORR             R3, R9, R3,LSL#23
VLDR            S0, [R2,#8]
BIC             R9, R3, #0xFF000000
VMOV            R2, S0
BICS            R3, R2, #0x80000000
BEQ             loc_1142F4
MOV             R3, R2,LSL#1
MOV             R3, R3,LSR#24
SUB             R3, R3, #0x40 ; '@'
CMP             R3, #0
MOVLT           R2, R2,LSR#31
MOVLT           R2, R2,LSL#23
BLT             loc_114308
MOV             R10, R2,LSL#9
MOV             R2, R2,LSR#31
MOV             R10, R10,LSR#16
ORR             R3, R10, R3,LSL#16
ORR             R2, R3, R2,LSL#23
ORR             R2, R9, R2,LSL#24
STM             R0!, {R2,R4}
MOV             R2, R1,ASR#31
LDR             R3, [SP,#0x5C+var_58]
ADD             R2, R1, R2,LSR#29
BIC             R2, R2, #7
ADD             R3, R3, R2
SUB             R2, R1, R2
LDR             R9, [R3]
MOV             R2, R2,LSL#2
BIC             R9, R9, R5,LSL R2
ORR             R2, R9, R12,LSL R2
STR             R2, [R3]
LDR             R2, [SP,#0x5C+var_2C]
ADD             R3, R1, #0x10
ADD             R1, R1, #1
LDR             R2, [R2]
ORR             R3, R2, R7,LSL R3
LDR             R2, [SP,#0x5C+var_2C]
STR             R3, [R2]
SUBS            R12, R12, #1
BPL             loc_11414C
MOV             R3, #0xF0000000
SUB             R2, R1, #1
ADD             R3, R3, R1,LSL#28
LDR             R1, [SP,#0x5C+var_38]
ORR             R12, R2, #0xA0000000
STR             R12, [R1]
LDR             R1, [SP,#0x5C+var_34]
STR             R2, [R1]
LDR             R1, [SP,#0x5C+var_28]
LDR             R1, [R1]
ORR             R2, R1, R3
LDR             R1, [SP,#0x5C+var_28]
STR             R2, [R1]
ADD             SP, SP, #0x5C ; '\'
POP             {R4-R11,PC}
