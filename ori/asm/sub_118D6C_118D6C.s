PUSH            {R4-R6,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R5, =0x500C2
MOV             R12, #0
STR             R5, [R4,#0x80]!
ADD             R6, R4, #4
STR             R0, [R4,#0x14]
LDR             R0, =dword_6D4B68
STM             R6, {R1-R3,R12}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R6,PC}
