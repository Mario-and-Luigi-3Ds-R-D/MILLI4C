PUSH            {R4-R6,LR}
MOV             R5, R0
MRC             p15, 0, R4,c13,c0, 3
MOV             R0, #0x10800
STR             R0, [R4,#0x80]!
ADD             R0, R4, #4
MOV             R2, #0x80
BL              sub_127EB8
LDR             R0, [R5]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R6,PC}
