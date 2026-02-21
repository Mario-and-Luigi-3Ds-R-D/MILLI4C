PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R2
MOV             R7, R3
MRC             p15, 0, R4,c13,c0, 3
LDR             R0, =0x50100
ADD             R4, R4, #0x80
ADD             R2, R4, #4
STR             R0, [R4]
MOV             R0, R2
BL              sub_1257F4
LDR             R0, =dword_6D4B9C
STRD            R6, R7, [R4,#0xC]
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_119CC4
LDR             R0, [R4,#0xC]
STR             R0, [R5]
LDR             R0, [R4,#4]
POP             {R4-R8,PC}
