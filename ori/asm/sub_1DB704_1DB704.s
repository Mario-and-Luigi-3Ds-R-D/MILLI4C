PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R0, [R5]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58F534
CMP             R0, #0
BNE             locret_1DB7F4
LDR             R0, [R5]
BL              sub_5295A8
CMP             R0, #0
BNE             locret_1DB7F4
LDRB            R1, [R4,#0x53]
MOV             R0, #0
CMP             R1, #0
BLE             loc_1DB768
ADD             R2, R4, R0,LSL#2
LDR             R2, [R2,#0x54]
LDRB            R2, [R2,#0x3F4]
CMP             R2, #5
BNE             locret_1DB7F4
ADD             R0, R0, #1
CMP             R1, R0
BGT             loc_1DB748
LDR             R1, =0xFFFDF53B
MOV             R0, #0
ADD             R3, R0, R0,LSL#1
ADD             R2, R4, R3,LSL#2
SUB             R2, R2, R1
LDRB            R2, [R2]
CMP             R2, #1
BNE             locret_1DB7F4
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_1DB770
LDR             R0, [R4,#0x80]
CMP             R0, #0
BNE             locret_1DB7F4
LDR             R0, =0x10CA5
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             locret_1DB7F4
LDR             R0, =0x1FACC
LDR             R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1DB7D0
LDR             R0, =0x1FBBD
LDRB            R0, [R0,R4]
CMP             R0, #4
BNE             locret_1DB7F4
LDR             R0, =0x1F91D
LDRB            R0, [R0,R4]
CMP             R0, #4
BNE             locret_1DB7F4
LDR             R1, =unk_656B78
ADD             R2, R4, #0x20000
ADD             R2, R2, #0xA00
LDRD            R0, R1, [R1,#(off_656C24 - 0x656B78)]
STRD            R0, R1, [R2,#0xBC]
POP             {R4-R6,PC}
