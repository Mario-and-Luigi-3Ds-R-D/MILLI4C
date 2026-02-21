ADD             R0, R0, #0x14800
ADD             R0, R0, #0x35C
MOV             R1, #0
LDR             R0, [R0]
MOV             R3, #0xC0
ADD             R2, R1, R1,LSL#4
ADD             R2, R2, R1,LSL#5
ADD             R2, R3, R2,LSL#2
LDR             R2, [R0,R2]
LDRB            R2, [R2]
TST             R2, #3
BEQ             loc_1914F8
ADD             R1, R1, #1
CMP             R1, #0x40 ; '@'
BLT             loc_1914C8
MOV             R0, #0
BX              LR
ADD             R2, R1, R1,LSL#4
ADD             R1, R2, R1,LSL#5
ADD             R0, R0, R1,LSL#2
BX              LR
