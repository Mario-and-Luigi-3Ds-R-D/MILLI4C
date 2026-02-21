PUSH            {R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R12, =0x2C0044
MOV             R3, #0
STR             R12, [R4,#0x80]!
ADD             LR, R4, #4
STR             R2, [R4,#0xC]
STM             LR, {R1,R3}
ORR             R1, R3, R1,LSL#14
STR             R0, [R4,#0x14]
LDR             R0, =dword_6D49C0
ORR             R1, R1, #2
STR             R1, [R4,#0x10]
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4,PC}
