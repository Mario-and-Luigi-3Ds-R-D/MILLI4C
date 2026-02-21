LDR             R2, =off_6D1648
PUSH            {R4}
LDR             R2, [R2]
LDR             R2, [R2,#0xC4]
LDR             R2, [R2,#4]
LDR             R2, [R2,#4]
CMP             R2, R1
LDREQ           R0, [R0,#0x34]
ANDEQ           R0, R0, #1
BEQ             loc_1F65B4
LDRSB           R12, [R0,#0x32]
CMP             R12, #0
MOVLE           R2, #0
BLE             loc_1F6568
AND             R2, R12, #1
CMP             R2, #0
MOV             R3, #0
BLE             loc_1F6568
LDR             R4, [R0,R3,LSL#2]
CMP             R4, R1
BNE             loc_1F655C
ADD             R0, R0, R3
LDRB            R0, [R0,#0x28]
CMP             R0, #0
BEQ             loc_1F65B4
B               loc_1F65B0
ADD             R3, R3, #1
CMP             R2, R3
BGT             loc_1F653C
CMP             R2, R12
BGE             loc_1F65C8
LDR             R3, [R0,R2,LSL#2]
CMP             R3, R1
BNE             loc_1F6590
ADD             R0, R0, R2
LDRB            R0, [R0,#0x28]
CMP             R0, #0
BEQ             loc_1F65B4
B               loc_1F65B0
ADD             R3, R0, R2,LSL#2
LDR             R3, [R3,#4]
CMP             R3, R1
BNE             loc_1F65BC
ADD             R0, R0, R2
LDRB            R0, [R0,#0x29]
CMP             R0, #0
BEQ             loc_1F65B4
MOV             R0, #1
POP             {R4}
BX              LR
ADD             R2, R2, #2
CMP             R12, R2
BGT             loc_1F6570
POP             {R4}
MOV             R0, #0
BX              LR
