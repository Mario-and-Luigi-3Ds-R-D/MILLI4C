PUSH            {R0,R4,R5,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R0, =0x130040
STR             R0, [R4,#0x80]!
LDRB            R0, [SP,#0x10+var_10]
STRB            R0, [R4,#4]
LDR             R0, =dword_6D4F18
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R3-R5,PC}
