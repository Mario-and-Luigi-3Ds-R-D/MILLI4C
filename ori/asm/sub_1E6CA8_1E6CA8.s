LDR             R12, [SP,#arg_0]
CMP             R2, #0
BEQ             loc_1E6CD8
SUB             R0, R2, #1
AND             R0, R0, #0xFF
ADD             R2, R1, R0,LSL#4
ADD             R0, R1, R0,LSL#2
ADD             R1, R2, #0x240
STR             R1, [R3]
LDR             R0, [R0,#0x270]
STR             R0, [R12]
BX              LR
ADD             R1, R0, #0x400
ADD             R1, R1, #0x1BC
STR             R1, [R3]
LDR             R0, [R0,#0x5CC]
B               loc_1E6CD0
