PUSH            {R4-R8,LR}
ADD             R4, SP, #0x18+arg_8
LDM             R4, {R1,R6,R12}
LDR             R5, [SP,#0x18+arg_4]
LDR             R7, [SP,#0x18+arg_0]
MRC             p15, 0, R4,c13,c0, 3
LDR             R8, =0x80D0144
STR             R8, [R4,#0x80]!
ADD             LR, R4, #4
STM             LR, {R2,R3,R7}
ADD             LR, R4, #0x10
MOV             R2, #0xA
STM             LR, {R1,R12}
ADD             LR, R4, #0x18
ORR             R1, R2, R1,LSL#4
STM             LR, {R1,R5}
MOV             R1, #0xC
ADD             LR, R4, #0x20 ; ' '
ORR             R1, R1, R12,LSL#4
STM             LR, {R1,R6}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R8,PC}
