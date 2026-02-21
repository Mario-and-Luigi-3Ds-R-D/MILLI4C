PUSH            {R4-R6,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R5, =0x10082
MOV             R12, #0
STR             R5, [R4,#0x80]!
ADD             R6, R4, #4
STM             R6, {R1,R3}
ORR             R1, R12, R3,LSL#14
ADD             R6, R4, #0xC
ORR             R1, R1, #2
STM             R6, {R1,R2}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R6,PC}
