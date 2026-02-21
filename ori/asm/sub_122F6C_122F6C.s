PUSH            {R4-R8,LR}
MRC             p15, 0, R5,c13,c0, 3
LDR             R4, =0x40080
MOV             R12, #0
STR             R4, [R5,#0x80]!
ADD             R6, R5, #4
STM             R6, {R1,R3}
MRC             p15, 0, R1,c13,c0, 3
ADD             R4, R1, #0x180
ORR             R1, R12, R3,LSL#14
ORR             R1, R1, #2
LDRD            R6, R7, [R4]
STM             R4, {R1,R2}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
STRD            R6, R7, [R4]
LDRGE           R0, [R5,#4]
POP             {R4-R8,PC}
