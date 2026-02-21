MOV             R1, #0
ADD             R2, R1, R1,LSL#2
ADD             R2, R0, R2,LSL#2
ADD             R2, R2, #0x16C00
ADD             R2, R2, #0x38 ; '8'
LDRB            R2, [R2]
CMP             R2, #0
BEQ             loc_1663E8
ADD             R1, R1, #1
CMP             R1, #8
BLT             loc_1663BC
BX              LR
ADD             R1, R1, R1,LSL#2
MOV             R2, #1
ADD             R0, R0, R1,LSL#2
ADD             R1, R0, #0x16C00
ADD             R1, R1, #0x38 ; '8'
ADD             R0, R0, #0x16C00
ADD             R0, R0, #0x3C ; '<'
STRB            R2, [R1]
VSTM            R0, {S0-S3}
BX              LR
