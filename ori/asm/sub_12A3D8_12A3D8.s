PUSH            {R0-R6,LR}
LDR             R5, [SP,#0x20+arg_0]
MRC             p15, 0, R4,c13,c0, 3
LDR             R0, =0xF0100
STR             R0, [R4,#0x80]!
LDRB            R0, [SP,#0x20+var_20]
STRB            R0, [R4,#4]
STR             R1, [R4,#8]
LDRB            R0, [SP,#0x20+var_18]
STRB            R0, [R4,#0xC]
LDR             R0, =dword_6D49C0
STR             R3, [R4,#0x10]
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             loc_12A424
LDRB            R0, [R4,#8]
STRB            R0, [R5]
LDR             R0, [R4,#4]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
