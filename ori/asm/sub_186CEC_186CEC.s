PUSH            {R4-R10,LR}
MOV             R6, R0
ADD             R7, R0, #0x14000
MOV             R5, #0
LDRB            R0, [R7,#0x28D]
CMP             R0, #0
ADDGT           R9, R6, #0x13800
ADDGT           R8, R6, #0x13800
ADDGT           R9, R9, #0x3E4
ADDGT           R8, R8, #0x3A4
BLE             loc_186DBC
ADD             R0, R6, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #3
BEQ             loc_186DAC
LDR             R0, =0x4B6
LDRH            R0, [R0,R4]
TST             R0, #2
BNE             loc_186D5C
LDR             R0, [R4]
LDR             R1, [R0,#0x88]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
MOV             R1, R8
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
LDR             R0, [R4]
LDR             R2, [R0,#0x74]
BEQ             loc_186DD8
MOV             R1, R8
MOV             R0, R4
BLX             R2
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#0x328]
BLX             R1
LDRB            R0, [R7,#0x28D]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_186D18
ADD             R0, R6, #0x13C00
ADD             R0, R0, #0x108
BL              sub_585328
ADD             R0, R6, #0x13000
POP             {R4-R10,LR}
ADD             R0, R0, #0xB70
B               sub_201840
MOV             R1, R9
MOV             R0, R4
BLX             R2
B               loc_186DAC
