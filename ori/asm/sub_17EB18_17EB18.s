LDR             R1, [R0,#4]
ADD             R2, R3, #8
MOV             R0, R2
LDR             R2, [R3,#8]
ADD             R1, R1, #0x14800
ADD             R1, R1, #0x36C
LDR             R0, [R0,#4]
LDR             R1, [R1]
ADD             R3, R2, R2,LSL#2
ADD             R2, R3, R2,LSL#5
CMP             R0, #0
LDRB            R0, [R1,R2,LSL#2]
ORREQ           R0, R0, #2
BICNE           R0, R0, #2
STRB            R0, [R1,R2,LSL#2]
MOV             R0, #0
BX              LR
