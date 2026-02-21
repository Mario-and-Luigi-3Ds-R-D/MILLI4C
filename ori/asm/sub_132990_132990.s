MOV             R3, R1
LDR             R1, =byte_6D4A28
MOV             R2, R0
LDR             R0, =0xC8A0A7F8
LDR             R12, [R1,#(dword_6D4A30 - 0x6D4A28)]
CMP             R12, #0
BEQ             locret_1329BC
LDR             R0, =dword_69A360
LDR             R1, [R0]
MOV             R0, R12
B               loc_132A04
BX              LR
DCD 0xC8A0A7F8
DCD byte_6D4A28
DCD dword_69A360
PUSH            {R0,R1,R4,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R1, =0x70040
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
DCD 0x70040
PUSH            {R4-R6,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R5, =0x130082
MOV             R12, #0
STR             R5, [R4,#0x80]!
ADD             R6, R4, #4
STR             R1, [R4,#0x10]
STM             R6, {R2,R3,R12}
LDR             R0, [R0]
SVC             0x32 ; '2'
AND             R1, R0, #0x80000000
CMP             R1, #0
LDRGE           R0, [R4,#4]
POP             {R4-R6,PC}
