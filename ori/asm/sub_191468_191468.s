ADD             R0, R0, #0x14000
ADD             R0, R0, #0xFF0
MOV             R1, #0
LDR             R0, [R0]
MOV             R3, #0x10
ADD             R2, R1, R1,LSL#2
ADD             R2, R3, R2,LSL#2
LDR             R2, [R0,R2]
LDRB            R2, [R2]
TST             R2, #1
BEQ             loc_1914A8
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BLT             loc_19147C
MOV             R0, #0
BX              LR
ADD             R1, R1, R1,LSL#2
ADD             R0, R0, R1,LSL#2
BX              LR
