NOP
PUSH            {R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R3, =0x10082
STR             R3, [R4,#0x80]!
ADD             R12, R4, #4
STM             R12, {R1,R2}
MOV             R2, #0xC
STR             R0, [R4,#0x10]
LDR             R0, =dword_6D4F28
ORR             R1, R2, R1,LSL#4
STR             R1, [R4,#0xC]
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4,PC}
