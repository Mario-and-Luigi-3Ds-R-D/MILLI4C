PUSH            {R4-R8,LR}
MOV             R5, R1
MRC             p15, 0, R4,c13,c0, 3
MOV             R1, #0x180000
STR             R1, [R4,#0x80]!
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_13F20C
ADD             R0, R4, #8
ADD             R6, R4, #0x18
LDM             R0, {R1-R3,R12}
LDR             R0, [R4,#0x24]
LDM             R6, {R6-R8}
STR             R0, [R5,#0x1C]
STM             R5, {R1-R3,R12}
ADD             R5, R5, #0x10
STM             R5, {R6-R8}
LDR             R0, [R4,#4]
POP             {R4-R8,PC}
