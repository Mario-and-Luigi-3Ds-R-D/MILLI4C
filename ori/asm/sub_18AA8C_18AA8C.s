PUSH            {R4-R10,LR}
MOV             R9, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x164]
MOV             R0, R9
BLX             R1
CMP             R0, #0
BNE             locret_18AB78
LDR             R0, [R9]
LDR             R1, [R0,#0xA4]
MOV             R0, R9
BLX             R1
MOV             R8, #0
MOV             R10, #0x5C ; '\'
ADD             R6, R9, R8,LSL#2
ADD             R6, R6, #0x13C00
ADD             R6, R6, #0x94
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_18AB30
ADD             R0, R9, R8
ADD             R7, R0, #0x14000
MOV             R4, #0
LDRB            R0, [R7,#0x287]
CMP             R0, #0
BLE             loc_18AB30
LDR             R0, [R6]
ADD             R5, R4, R4,LSL#1
ADD             R1, R10, R5,LSL#5
LDR             R1, [R0,R1]
CMP             R1, #0
BNE             loc_18AB20
ADD             R0, R0, R5,LSL#5
BL              sub_1E4D00
LDR             R0, [R6]
ADD             R0, R0, R5,LSL#5
BL              sub_1E4C48
LDRB            R0, [R7,#0x287]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18AAF4
ADD             R8, R8, #1
CMP             R8, #2
BLT             loc_18AAC4
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x60]
BLX             R1
LDR             R0, [R9]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DD74
LDM             R0, {R1,R2}
MOV             R0, R9
POP             {R4-R10,LR}
BX              R12
POP             {R4-R10,PC}
