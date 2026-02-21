MOV             R1, #0x4E ; 'N'
ADD             R2, R0, R1,LSL#2
ADD             R2, R2, #0x14400
ADD             R2, R2, #0xC
LDR             R2, [R2]
LDR             R2, [R2,#4]
CMP             R2, #0
BEQ             loc_18C30C
SUB             R1, R1, #1
CMP             R1, #6
BGT             loc_18C2DC
MOV             R0, #0
BX              LR
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14400
ADD             R0, R0, #0xC
LDR             R0, [R0]
BX              LR
