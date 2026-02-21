PUSH            {R0-R2,R4,R5,LR}
MOV             R5, R2
MRC             p15, 0, R4,c13,c0, 3
LDR             R1, =0x20040
STR             R1, [R4,#0x80]!
LDRH            R1, [SP,#0x18+var_14]
STRH            R1, [R4,#4]
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             loc_132A78
LDRB            R0, [R4,#8]
STRB            R0, [R5]
LDR             R0, [R4,#4]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
