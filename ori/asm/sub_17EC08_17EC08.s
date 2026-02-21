LDR             R1, [R0,#4]
ADD             R0, R3, #8
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x15C
LDR             R1, [R1]
CMP             R1, #0
BEQ             loc_17EC5C
LDR             R2, [R0,#4]
CMP             R2, #0
LDR             R2, [R0]
LDR             R0, [R0]
ADD             R3, R2, R2,LSL#2
ADD             R2, R3, R2,LSL#3
ADD             R3, R0, R0,LSL#2
ADD             R2, R1, R2,LSL#2
ADD             R0, R3, R0,LSL#3
LDRH            R2, [R2]
ADD             R0, R1, R0,LSL#2
ORREQ           R2, R2, #2
BICNE           R2, R2, #2
STRH            R2, [R0]
MOV             R0, #0
BX              LR
