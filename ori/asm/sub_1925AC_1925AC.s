PUSH            {R4-R6,LR}
ADD             R5, R0, #0x14C00
ADD             R5, R5, #0x3FC
LDR             R1, [R5]
CMP             R1, #0
BEQ             locret_192614
ADD             R6, R0, #0x15000
MOV             R4, #0
LDRB            R0, [R6]
CMP             R0, #0
BLE             loc_192600
LDR             R0, [R5]
ADD             R1, R4, R4,LSL#1
ADD             R1, R1, R4,LSL#7
LDR             R1, [R0,R1,LSL#4]!
LDR             R1, [R1,#0x14]
BLX             R1
LDRB            R0, [R6]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1925D8
LDR             R1, =sub_598F3C
LDR             R0, [R5]
BLX             sub_3016C8
MOV             R0, #0
STR             R0, [R5]
POP             {R4-R6,PC}
