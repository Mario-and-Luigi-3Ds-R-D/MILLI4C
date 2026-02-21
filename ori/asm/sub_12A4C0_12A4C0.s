PUSH            {R4-R12,LR}
MOV             R8, R0
MOV             R9, R2
ADD             R2, SP, #0x28+arg_0
LDM             R2, {R0,R10,R11}
MRC             p15, 0, R4,c13,c0, 3
LDR             R12, =0xD0080
MOV             R2, #0
STR             R12, [R4,#0x80]!
STR             R1, [R4,#4]
STR             R0, [R4,#8]
MRC             p15, 0, R1,c13,c0, 3
ADD             R5, R1, #0x180
ORR             R0, R2, R0,LSL#14
ORR             R0, R0, #2
LDRD            R6, R7, [R5]
STM             R5, {R0,R3}
LDR             R0, =dword_6D49C0
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
STRD            R6, R7, [R5]
BMI             locret_12A540
LDR             R0, [R4,#8]
STR             R0, [R8]
LDR             R0, [R4,#0xC]
STR             R0, [R9]
LDR             R0, [R4,#0x10]
STR             R0, [R10]
LDR             R0, [R4,#0x18]
STR             R0, [R11]
LDR             R0, [R4,#4]
POP             {R4-R12,PC}
