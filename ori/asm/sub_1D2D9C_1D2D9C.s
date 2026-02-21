PUSH            {R4-R8,LR}
MOV             R8, R0
BL              sub_528E64
ADD             R5, R0, #0x400
MOV             R6, R0
LDRH            R0, [R5,#0x98]
MOV             R7, #0
AND             R0, R0, #0x7F
CMP             R0, #5
CMPNE           R0, #6
BNE             loc_1D2E38
CMP             R0, #5
BEQ             loc_1D2E0C
BL              sub_146A88
MOV             R4, R0
MOV             R0, #7
ADD             R0, R4, R0,LSL#3
CMP             R4, R0
LDRHNE          R1, [R5,#0x9C]
BEQ             loc_1D2E38
LDRH            R2, [R4]
CMP             R2, R1
BNE             loc_1D2E2C
LDR             R1, [R4,#4]
MOV             R0, R6
BLX             R1
MOV             R7, R0
B               loc_1D2E38
NOP
BL              sub_1465D4
MOV             R4, R0
NOP
MOV             R0, #0xD
NOP
NOP
B               loc_1D2DDC
ADD             R4, R4, #8
CMP             R4, R0
BNE             loc_1D2DEC
MOV             R2, R7
MOV             R1, R6
MOV             R0, R8
POP             {R4-R8,LR}
MOV             R3, #1
B               loc_1CFC94
