CMP             R3, #0x40 ; '@'
BLT             loc_17EF70
ADD             R0, R2, R3,LSL#2
ADD             R0, R0, #0x14400
ADD             R0, R0, #0xB8
LDR             R0, [R0]
BX              LR
NOP
NOP
