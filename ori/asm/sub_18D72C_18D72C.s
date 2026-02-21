MOV             R1, #0
ADD             R2, R0, R1,LSL#2
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x148
LDR             R2, [R2]
LDR             R2, [R2,#0xA4]
CMP             R2, #0
BEQ             loc_18D760
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BLT             loc_18D730
MOV             R0, #0
BX              LR
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x148
LDR             R0, [R0]
BX              LR
