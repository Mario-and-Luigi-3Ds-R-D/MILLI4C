LDR             R0, =off_6D1648
ADD             R1, R3, #8
LDR             R3, [R3,#8]
LDR             R2, [R1,#4]
LDR             R0, [R0]
CMP             R3, #0
LDR             R1, [R0,#0xE0]
BEQ             loc_182178
MOV             R3, #2
BIC             R1, R1, #2
AND             R2, R3, R2,LSL#1
ORR             R1, R1, R2
STR             R1, [R0,#0xE0]
MOV             R0, #0
BX              LR
BIC             R1, R1, #1
AND             R2, R2, #1
ORR             R1, R1, R2
STR             R1, [R0,#0xE0]
B               loc_182170
