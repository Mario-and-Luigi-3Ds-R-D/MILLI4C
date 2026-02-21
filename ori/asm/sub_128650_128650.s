PUSH            {R0,R1,R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R1, =0x170040
STR             R1, [R4,#0x80]!
LDRH            R1, [SP,#0x10+var_C]
STRH            R1, [R4,#4]
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
ADD             SP, SP, #8
POP             {R4,PC}
