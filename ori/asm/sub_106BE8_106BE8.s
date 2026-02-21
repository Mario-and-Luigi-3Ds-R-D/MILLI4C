LDRB            R2, [R0,#0x84]
MOV             R1, #0
CMP             R2, #0
BLE             loc_106C04
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_106BF8
MOV             R1, #0
STR             R1, [R0,#0x88]
BX              LR
