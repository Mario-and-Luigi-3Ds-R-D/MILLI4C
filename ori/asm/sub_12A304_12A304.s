PUSH            {R4-R10,LR}
LDR             R6, [SP,#0x20+arg_4]
LDR             R12, [SP,#0x20+arg_0]
MRC             p15, 0, R4,c13,c0, 3
LDR             R5, =0x4B00C2
MOV             R9, #0
STR             R5, [R4,#0x80]!
ADD             R7, R4, #4
STM             R7, {R0,R2,R12}
MOV             R0, #0x400
ORR             R0, R0, R2,LSL#14
ORR             R0, R0, #2
STRD            R0, R1, [R4,#0x10]
MRC             p15, 0, R0,c13,c0, 3
ADD             R5, R0, #0x180
ORR             R0, R9, R12,LSL#14
LDM             R5, {R7,R8}
ORR             R0, R0, #2
STM             R5, {R0,R3}
LDR             R0, =dword_6D49C0
LDR             R0, [R0]
SVC             0x32 ; '2'
STM             R5, {R7,R8}
ANDS            R1, R0, #0x80000000
BMI             locret_12A374
LDR             R0, [R4,#8]
STR             R0, [R6]
LDR             R0, [R4,#4]
POP             {R4-R10,PC}
