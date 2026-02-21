PUSH            {R4-R8,LR}
MOV             R5, R1
LDR             R1, [SP,#0x18+arg_4]
LDR             R12, [SP,#0x18+arg_0]
MRC             p15, 0, R4,c13,c0, 3
LDR             R7, =0x80C00C2
MOV             R6, #0
STR             R7, [R4,#0x80]!
STR             R1, [R4,#0xC]
ORR             R1, R6, R1,LSL#14
ADD             R6, R4, #0x10
ORR             R1, R1, #2
STM             R6, {R1,R12}
STRD            R2, R3, [R4,#4]
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             locret_120BCC
ADD             R1, R4, #8
LDRD            R0, R1, [R1]
STRD            R0, R1, [R5]
LDR             R0, [R4,#4]
POP             {R4-R8,PC}
