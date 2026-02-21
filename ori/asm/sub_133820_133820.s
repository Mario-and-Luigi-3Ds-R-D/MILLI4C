PUSH            {R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R3, =0x400042
MOV             R2, #0
STR             R3, [R4,#0x80]!
STR             R1, [R4,#4]
STR             R0, [R4,#0xC]
LDR             R0, =dword_6D49C0
ORR             R1, R2, R1,LSL#14
ORR             R1, R1, #2
STR             R1, [R4,#8]
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4,PC}
