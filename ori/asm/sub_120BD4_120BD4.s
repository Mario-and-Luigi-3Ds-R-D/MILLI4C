PUSH            {R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R1, =0x80E0080
ADD             R4, R4, #0x80
STM             R4, {R1-R3}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4,PC}
