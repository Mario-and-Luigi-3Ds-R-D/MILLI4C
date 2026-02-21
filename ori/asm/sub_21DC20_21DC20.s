PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R7, R1
MOV             R4, R3
LDRB            R1, [R0,#0x111]
MOV             R0, #1
STRB            R0, [R6,#0x112]
CMP             R1, #0
BEQ             loc_21DC54
MOV             R0, R6
BL              sub_21D858
MOV             R0, #0
STRB            R0, [R6,#0x111]
LDR             R0, [R6,#8]
CMP             R0, #0
BEQ             locret_21DD14
LDR             R1, [R4]
MOV             R5, #0
STR             R0, [R1,#0xC]
LDR             R1, [R6,#8]
LDR             R0, [R4]
STR             R0, [R1,#0x10]
LDR             R0, [R6,#0xC]
STR             R0, [R4]
LDRB            R0, [R6,#0x110]
CMP             R0, #0
MOVGT           R9, #0xFF
ADDGT           R8, R7, #0x400
BLE             locret_21DD14
ADD             R0, R6, R5,LSL#2
LDR             R4, [R0,#0x10]
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_21DCC0
LDR             R0, [R4,#0x8F4]
TST             R0, #4
BEQ             loc_21DCC0
MOV             R1, R7
MOV             R0, R4
BL              sub_5933F4
LDR             R0, [R4,#0x8F8]
TST             R0, #0x3F8
BEQ             loc_21DCFC
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_21DD18
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #1
BEQ             loc_21DD18
LDR             R0, =0x676
STRH            R9, [R0,R4]
LDRB            R0, [R6,#0x110]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_21DC94
POP             {R4-R10,PC}
LDR             R1, =0x676
LDRH            R0, [R8,#0x6C]
STRH            R0, [R1,R4]
B               loc_21DD04
