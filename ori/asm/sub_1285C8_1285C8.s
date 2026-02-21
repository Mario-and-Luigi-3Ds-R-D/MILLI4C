PUSH            {R0-R6,LR}
LDR             R5, [SP,#0x20+arg_4]
MRC             p15, 0, R4,c13,c0, 3
LDR             R3, =0x1100C2
STR             R3, [R4,#0x80]!
STR             R2, [R4,#4]
LDRH            R3, [SP,#0x20+var_14]
STRH            R3, [R4,#8]
LDRH            R3, [SP,#0x20+arg_0]
STRH            R3, [R4,#0xC]
MOV             R3, #0xA
ORR             R2, R3, R2,LSL#4
STR             R1, [R4,#0x14]
STR             R2, [R4,#0x10]
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             loc_12861C
LDRB            R0, [R4,#8]
STRB            R0, [R5]
LDR             R0, [R4,#4]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
