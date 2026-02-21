PUSH            {R4-R6,LR}
MOV             R5, R1
MRC             p15, 0, R4,c13,c0, 3
LDR             R1, =0xB0040
STR             R1, [R4,#0x80]!
STR             R0, [R4,#4]
LDR             R0, =dword_6D49C0
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_1239F0
LDRB            R0, [R4,#8]
STRB            R0, [R5]
LDR             R0, [R4,#4]
POP             {R4-R6,PC}
