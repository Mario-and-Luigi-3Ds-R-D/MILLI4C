PUSH            {R0-R11,LR}
SUB             SP, SP, #4
MOV             R5, R2
MOV             R8, R0
MOV             R7, R3
ADD             R11, R3, #0x68 ; 'h'
LDR             R1, [R0]
LDR             R0, [R3,#8]
ADD             R6, R3, #8
LDR             R2, [R8,#4]
LDR             R12, [R1,#0x9C]
SXTB            R3, R0
MOV             R1, R5
MOV             R0, R8
BLX             R12
MOV             R9, R0
LDRH            R0, [R7]
MOV             R10, #0
ADD             R4, R9, #0x14
SUB             R0, R0, #0x41 ; 'A'
CMP             R0, #0xE; switch 14 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
DCD loc_182228; jump table for switch statement
LDR             R0, [R5,#0x70]; jumptable 001821E8 cases 0,1
TST             R0, #0x40000
BNE             loc_18228C
LDR             R1, [R6,#4]
CMP             R1, #0
BEQ             loc_18229C
LDR             R1, [R4,#0x70]
TST             R1, #2
BEQ             loc_18229C
STR             R4, [SP,#0x38+var_38]
LDR             R1, [R8]
MOV             R0, R0,LSL#4
MOV             R3, R5
MOV             R2, R0,LSR#31
LDR             R12, [R1,#0x5C]
LDR             R1, [R5]
MOV             R0, R8
BLX             R12
LDRH            R0, [R7]
CMP             R0, #0x42 ; 'B'
LDR             R0, [R5,#0x70]
ORREQ           R0, R0, #0x40000
STREQ           R0, [R5,#0x70]
TST             R0, #0x40000
BEQ             loc_1822E4
LDR             R0, [R4,#0x70]
TST             R0, #2
BEQ             loc_1822E4
B               loc_182390
LDR             R1, [R4,#0x70]
MOV             R0, #0
STR             R0, [R4,#0x7C]
BIC             R1, R1, #2
STR             R1, [R4,#0x70]
LDR             R0, [R9]
LDR             R1, [R0,#0x24]
MOV             R0, R9
BLX             R1
STR             R4, [SP,#0x38+var_38]
LDR             R0, [R8]
LDR             R1, [R5]
MOV             R3, R5
MOV             R2, R9
LDR             R12, [R0,#0x54]
MOV             R0, R8
BLX             R12
B               loc_182270
LDR             R0, [R5]
LDR             R1, [R6,#8]
ADD             R0, R0, R1
STR             R0, [R5]
LDR             R0, [R5,#0x70]
BIC             R0, R0, #0x40000
STR             R0, [R5,#0x70]
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R2, [R6,#4]!; jumptable 001821E8 case 2
LDR             R0, [R5]
LDR             R1, [R6,#4]
CMP             R2, #0
ADD             R1, R1, R0
BEQ             loc_182350
LDR             R0, [R4,#0x70]
TST             R0, #2
BEQ             loc_182350
STR             R4, [SP,#0x38+var_38]
LDR             R0, [R5,#0x70]
LDR             R2, [R8]
MOV             R3, R5
MOV             R0, R0,LSL#4
LDR             R12, [R2,#0x5C]
MOV             R2, R0,LSR#31
MOV             R0, R8
BLX             R12
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R2, [R4,#0x70]
MOV             R0, #0
STR             R0, [R4,#0x7C]
BIC             R2, R2, #2
STR             R2, [R4,#0x70]
STR             R4, [SP,#0x38+var_38]
LDR             R0, [R8]
MOV             R3, R5
MOV             R2, R9
LDR             R12, [R0,#0x54]
MOV             R0, R8
BLX             R12
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R0, [R4,#0x70]; jumptable 001821E8 case 3
TST             R0, #2
BEQ             def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R0, [SP,#0x38+var_30]
MOV             R2, R7
MOV             R1, R5
BL              sub_29D1B0
MOV             R10, #3
NOP
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R1, [R4,#0x70]; jumptable 001821E8 case 5
MOV             R0, #0
BIC             R1, R1, #2
STR             R1, [R4,#0x70]!
STR             R0, [R4,#0xC]
LDR             R0, [R9]
LDR             R1, [R0,#0x24]
MOV             R0, R9
BLX             R1
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R0, [R4,#0x70]; jumptable 001821E8 case 7
ORR             R0, R0, #4
STR             R0, [R4,#0x70]
LDR             R0, [R9]
LDR             R1, [R0,#0x28]
MOV             R0, R9
BLX             R1
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R0, [R4,#0x70]; jumptable 001821E8 case 9
BIC             R0, R0, #4
STR             R0, [R4,#0x70]
LDR             R0, [R9]
LDR             R1, [R0,#0x2C]
MOV             R0, R9
BLX             R1
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R0, [R4,#0x70]; jumptable 001821E8 case 11
ANDS            R1, R0, #2
BEQ             loc_18242C
TST             R0, #4
MOVNE           R1, #3
BEQ             loc_182450
VMOV            S0, R1
LDRH            R0, [R7,#2]
LDR             R1, [SP,#0x38+var_30]
MOV             R2, R5
VCVT.F32.U32    S0, S0
BL              sub_145730
NOP
NOP
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
AND             R0, R0, #0x30000
CMP             R0, #0x30000
MOVEQ           R1, #2
MOVNE           R1, #1
B               loc_18242C
LDR             R0, [R6,#4]; jumptable 001821E8 case 12
CMP             R0, #0
BEQ             loc_1824AC
LDR             R0, [R6,#8]
LDR             R1, [R4,#0x2C]
LDRH            R3, [R7,#2]
MOV             R2, R0,LSR#5
AND             R0, R0, #0x1F
LDR             R1, [R1,R2,LSL#2]
MOV             R2, R5
MOV             R0, R1,LSR R0
AND             R0, R0, #1
VMOV            S0, R0
LDR             R1, [SP,#0x38+var_30]
MOV             R0, R3
VCVT.F32.U32    S0, S0
BL              sub_145730
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R0, [R6,#8]
LDR             R1, [R4,#0x28]
MOV             R2, R5
ADD             R1, R1, R0,LSL#2
LDRH            R0, [R7,#2]
VLDR            S0, [R1]
LDR             R1, [SP,#0x38+var_30]
B               loc_1824A4
LDR             R0, [R6,#4]; jumptable 001821E8 case 13
CMP             R0, #0
BEQ             loc_182514
VLDR            S0, [R11,#0xC]
LDR             R0, [R6,#8]
LDR             R2, [R4,#0x2C]
VCVT.U32.F32    S0, S0
MOV             R3, #1
VMOV            R1, S0
CMP             R1, #0
MOV             R1, R0,LSR#5
AND             R0, R0, #0x1F
LDR             R12, [R2,R1,LSL#2]
MOV             R0, R3,LSL R0
BICEQ           R0, R12, R0
ORRNE           R0, R0, R12
STR             R0, [R2,R1,LSL#2]
B               def_1821E8; jumptable 001821E8 default case, cases 4,6,8,10
LDR             R2, [R4,#0x28]
LDR             R0, [R6,#8]
LDR             R1, [R11,#0xC]
STR             R1, [R2,R0,LSL#2]
ADD             SP, SP, #0x14; jumptable 001821E8 default case, cases 4,6,8,10
MOV             R0, R10
POP             {R4-R11,PC}
