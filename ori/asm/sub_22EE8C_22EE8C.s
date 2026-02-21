PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, R2
LDR             R1, [R0,#0x14]
MOV             R7, R3
TST             R1, #0x400000
LDREQ           R4, [R0,#4]
LDRNE           R4, [R0,#8]
MOV             R1, R5
LDR             R0, [R4]
LDR             R2, [R0,#0x37C]
MOV             R0, R4
BLX             R2
ADD             R4, R4, #0x800
MOV             R2, R7
VLDR            S0, [R4,#0x28]
MOV             R1, R6
MOV             R0, R5
POP             {R4-R8,LR}
NOP
