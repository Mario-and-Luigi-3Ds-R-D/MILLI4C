PUSH            {R0-R8,LR}
MOV             R5, R1
MOV             R6, R2
LDR             R8, [SP,#0x28+arg_0]
MOV             R7, R3
MRC             p15, 0, R4,c13,c0, 3
LDR             R0, =0x50040
STR             R0, [R4,#0x80]!
LDRB            R0, [SP,#0x28+var_28]
STRB            R0, [R4,#4]
LDR             R0, =dword_6D49C0
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             loc_11B548
LDRB            R0, [R4,#8]
STRB            R0, [R5]
LDR             R0, [R4,#0xC]
STR             R0, [R6]
LDR             R0, [R4,#0x10]
STR             R0, [R7]
LDR             R0, [R4,#0x14]
STR             R0, [R8]
LDR             R0, [R4,#4]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
