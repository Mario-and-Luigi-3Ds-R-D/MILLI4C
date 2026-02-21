PUSH            {R4-R6,LR}
MOV             R5, R1
MRC             p15, 0, R4,c13,c0, 3
MOV             R1, #0x160000
STR             R1, [R4,#0x80]!
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_1286B8
LDR             R0, [R4,#0xC]
STR             R0, [R5]
LDR             R0, [R4,#4]
POP             {R4-R6,PC}
