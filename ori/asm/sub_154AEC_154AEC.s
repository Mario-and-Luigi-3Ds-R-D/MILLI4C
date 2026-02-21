PUSH            {R4-R6,LR}
MOV             R5, R1
LDRH            R2, [R2,#0x10]
BIC             R2, R2, #0xF000
ADD             R0, R0, R2,LSL#3
ADD             R4, R0, #0x9F0
LDR             R0, [R0,#0x9F4]
CMP             R0, #0
BEQ             loc_154B24
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#4]
STR             R5, [R4,#4]
STR             R4, [R5,#0x14]
POP             {R4-R6,PC}
