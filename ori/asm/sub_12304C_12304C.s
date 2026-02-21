PUSH            {R4-R6,LR}
LDR             R12, [SP,#0x10+arg_0]
MRC             p15, 0, R4,c13,c0, 3
LDR             R6, =0x20084
MOV             R5, #0
STR             R6, [R4,#0x80]!
ADD             LR, R4, #4
STM             LR, {R1,R12}
ORR             R1, R5, R12,LSL#14
ADD             R5, R4, #0xC
ORR             R1, R1, #2
STM             R5, {R1,R2}
MOV             R1, #0x400
ORR             R1, R1, R12,LSL#14
ADD             R5, R4, #0x14
ORR             R1, R1, #2
STM             R5, {R1,R3}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R6,PC}
