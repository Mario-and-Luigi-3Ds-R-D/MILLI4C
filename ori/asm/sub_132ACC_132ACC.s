PUSH            {R4-R8,LR}
LDR             R7, [SP,#0x18+arg_4]
MRC             p15, 0, R4,c13,c0, 3
LDR             R5, =0x1000C0
MOV             R12, #0
STR             R5, [R4,#0x80]!
ADD             R6, R4, #4
STM             R6, {R1,R2}
LDRH            R1, [SP,#0x18+arg_0]
STRH            R1, [R4,#0xC]
MRC             p15, 0, R2,c13,c0, 3
ADD             R5, R2, #0x180
ORR             R1, R12, R1,LSL#14
LDM             R5, {R6,R8}
ORR             R1, R1, #2
STM             R5, {R1,R3}
LDR             R0, [R0]
SVC             0x32 ; '2'
STM             R5, {R6,R8}
ANDS            R1, R0, #0x80000000
BMI             locret_132B2C
LDRH            R0, [R4,#8]
STRH            R0, [R7]
LDR             R0, [R4,#4]
POP             {R4-R8,PC}
