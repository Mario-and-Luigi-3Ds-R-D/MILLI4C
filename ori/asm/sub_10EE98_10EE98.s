PUSH            {R4-R6,LR}
MOV             R5, R0
MRC             p15, 0, R4,c13,c0, 3
MOV             R0, #0x20000
STR             R0, [R4,#0x80]!
LDR             R0, =dword_6D4B9C
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_10EECC
LDR             R0, [R4,#0xC]
STR             R0, [R5]
LDR             R0, [R4,#4]
POP             {R4-R6,PC}
