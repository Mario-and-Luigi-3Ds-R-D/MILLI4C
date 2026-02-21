LDR             R3, [R0,#4]
ADD             R2, R1, #8
CMP             R3, R2
MOVEQ           R2, #0xFFFFFFFF
BEQ             loc_1212F4
LDR             R3, [R2]
MOV             R3, R3,LSL#1
ADD             R2, R2, R3,ASR#1
LDR             R3, [R1]
LDR             R0, [R0]
MOV             R3, R3,LSL#1
ADD             R1, R1, R3,ASR#1
CMP             R0, R1
MOVCC           R0, #0xFFFFFFFF
BCC             locret_12131C
CMP             R2, R0
MOVLS           R0, #1
MOVHI           R0, #0
BX              LR
