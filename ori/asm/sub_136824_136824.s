ADD             R1, R0, R1,LSL#3
PUSH            {R4-R6}
MOV             R2, R2,ASR#8
LDRH            R3, [R1,#0x60]!
LDR             R12, [R0,#0xC]
LDRH            R1, [R1,#2]
CMP             R2, #0
ADD             R0, R0, R12
ADD             R0, R0, R3,LSL#3
ADD             R1, R0, R1,LSL#3
SUB             R12, R1, #8
MOVLT           R2, #0
LDRH            R1, [R12,#4]
MOV             R3, #0
CMP             R1, R2
SUBLE           R2, R1, #1
CMP             R2, R1,LSR#1
BGE             loc_1368BC
ADD             R5, R12, #8
SUB             R6, R5, R0
MOV             R4, #1
ADD             R6, R4, R6,ASR#3
CMP             R6, #1
SUBGT           R5, R5, R0
MOV             R1, R0
MOV             R12, R4
ADDGT           R5, R4, R5,ASR#3
BLE             loc_1368F4
LDRH            R4, [R1,#4]
CMP             R4, R2
BLE             loc_1368A8
MOV             R3, R1
B               loc_1368F4
ADD             R12, R12, #1
CMP             R5, R12
ADD             R1, R1, #8
BGT             loc_136894
B               loc_1368F4
SUB             R1, R12, #8
SUB             R3, R0, #8
CMP             R1, R3
BEQ             loc_1368F0
LDRH            R12, [R1,#4]
CMP             R12, R2
BGT             loc_1368E4
ADDS            R3, R1, #8
BNE             loc_1368F4
B               loc_1368F0
SUB             R1, R1, #8
CMP             R1, R3
BNE             loc_1368CC
MOV             R3, R0
SUB             R0, R3, R0
POP             {R4-R6}
MOV             R0, R0,LSL#13
MOV             R0, R0,LSR#16
BX              LR
