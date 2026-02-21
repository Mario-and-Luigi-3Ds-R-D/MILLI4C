PUSH            {R4-R6,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R5, =loc_1F0084
MOV             R12, #0
STR             R5, [R4,#0x80]!
ADD             R6, R4, #4
STR             R3, [R4,#0x10]
STM             R6, {R0,R2,R12}
ORR             R0, R12, R2,LSL#14
ORR             R0, R0, #2
STRD            R0, R1, [R4,#0x14]
LDR             R0, =dword_6D49C0
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R6,PC}
