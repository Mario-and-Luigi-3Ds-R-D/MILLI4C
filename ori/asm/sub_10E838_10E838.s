PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R0, SP, #0x20+arg_0
MOV             R6, R1
LDM             R0, {R9,R10}
MOV             R7, R2
MOV             R8, R3
MRC             p15, 0, R4,c13,c0, 3
MOV             R0, #0xA0000
STR             R0, [R4,#0x80]!
LDR             R0, =dword_6D4AC0
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_10E8A8
LDR             R0, [R4,#0xC]
STR             R0, [R5]
LDR             R0, [R4,#0x10]
STR             R0, [R6]
LDR             R0, [R4,#0x14]
STR             R0, [R7]
LDR             R0, [R4,#0x18]
STR             R0, [R8]
LDR             R0, [R4,#0x1C]
STR             R0, [R9]
LDR             R0, [R4,#0x20]
STR             R0, [R10]
LDR             R0, [R4,#4]
POP             {R4-R10,PC}
