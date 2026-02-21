PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
MOV             R5, R0
LDR             R1, [R1,#0x3C]
BLX             R1
LDR             R1, [R4,#4]
LDR             R2, [R5,#4]
LDR             R3, [R4,#8]
ANDS            R1, R1, #0xFF
ADD             R2, R2, #0xCC
AND             R3, R3, #0xFF
BEQ             loc_17D010
CMP             R1, #1
BEQ             loc_17D024
CMP             R1, #2
BNE             loc_17D048
B               loc_17D038
LDR             R1, [R0]
LDR             R12, [R1,#0x30]
MOV             R1, #0
BLX             R12
B               loc_17D048
LDR             R1, [R0]
LDR             R12, [R1,#0x34]
MOV             R1, #0
BLX             R12
B               loc_17D048
LDR             R1, [R0]
LDR             R12, [R1,#0x38]
MOV             R1, #0
BLX             R12
MOV             R0, #0
POP             {R4-R6,PC}
