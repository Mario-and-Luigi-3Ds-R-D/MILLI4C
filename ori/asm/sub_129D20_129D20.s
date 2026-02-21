PUSH            {R4-R6,LR}
MOV             R5, R3
LDR             R6, [SP,#0x10+arg_0]
MRC             p15, 0, R4,c13,c0, 3
LDR             R12, =0x130042
MOV             R3, #0
STR             R12, [R4,#0x80]!
STR             R1, [R4,#0xC]
STRD            R2, R3, [R4,#4]
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_129D68
LDR             R0, [R4,#8]
STR             R0, [R6]
LDR             R0, [R4,#0x10]
STR             R0, [R5]
LDR             R0, [R4,#4]
POP             {R4-R6,PC}
