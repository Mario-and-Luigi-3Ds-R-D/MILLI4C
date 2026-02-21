PUSH            {R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R12, =0xD0082
STR             R12, [R4,#0x80]!
ADD             LR, R4, #4
STM             LR, {R1,R3}
MOV             R1, #0x400
ORR             R1, R1, R3,LSL#14
ADD             LR, R4, #0xC
ORR             R1, R1, #2
STM             LR, {R1,R2}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4,PC}
