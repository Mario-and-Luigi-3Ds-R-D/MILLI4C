PUSH            {R4-R8,LR}
ADD             R4, SP, #0x18+arg_0
LDM             R4, {R5,R12}
MRC             p15, 0, R4,c13,c0, 3
LDR             R7, =0xC0104
MOV             R6, #0
STR             R7, [R4,#0x80]!
ADD             R8, R4, #4
STM             R8, {R0-R2,R5,R6,R12}
ORR             R0, R6, R5,LSL#14
ADD             R6, R4, #0x1C
ORR             R0, R0, #2
STM             R6, {R0,R3}
LDR             R0, =dword_6D49C0
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R8,PC}
