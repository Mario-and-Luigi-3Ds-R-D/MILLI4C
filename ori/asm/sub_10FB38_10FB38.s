PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R2
MOV             R7, R3
MRC             p15, 0, R4,c13,c0, 3
LDR             R0, =0x10040
ADD             R4, R4, #0x80
STRD            R0, R1, [R4]
LDR             R0, =dword_6D49C0
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_10FB88
LDR             R0, [R4,#8]
STR             R0, [R6]
LDR             R0, [R4,#0xC]
STR             R0, [R7]
LDR             R0, [R4,#0x14]
STR             R0, [R5]
LDR             R0, [R4,#4]
POP             {R4-R8,PC}
