PUSH            {R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R12, =0x20082
MOV             R3, #0
STR             R12, [R4,#0x80]!
ADD             LR, R4, #4
STR             R0, [R4,#0x10]
LDR             R0, =dword_6D4B68
STM             LR, {R1-R3}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4,PC}
