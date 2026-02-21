PUSH            {R3-R7,LR}
MOV             R4, R1
MOV             R12, #2
LDR             R2, [R0,#0x19C]
LDR             R1, [SP,#0x18+var_18]
LDR             R3, [R0,#0x120]
LDR             R5, [R0,#0x3D0]
MOV             R2, R2,LSL#30
AND             R1, R1, #0xE
ORR             R1, R1, R2,LSR#31
AND             R2, R12, R3,LSL#1
BIC             R1, R1, #2
MOV             R6, #4
ORR             R1, R1, R2
AND             R3, R6, R5,LSL#2
BIC             R1, R1, #4
ORR             R1, R1, R3
STR             R1, [SP,#0x18+var_18]
LDRB            R2, [R0,#0xB7]
CMP             R2, #0
ORREQ           R1, R1, #8
BICNE           R1, R1, #8
STR             R1, [SP,#0x18+var_18]
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
MOV             R2, R0
MOV             R1, SP
MOV             R0, R4
BL              sub_1103A4
POP             {R3-R7,PC}
