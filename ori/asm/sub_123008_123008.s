PUSH            {R0-R2,R4,R5,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R3, =0x160042
MOV             R2, #0
STR             R3, [R4,#0x80]!
LDRB            R3, [SP,#0x18+var_10]
STRB            R3, [R4,#4]
STR             R1, [R4,#0xC]
STR             R2, [R4,#8]
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
