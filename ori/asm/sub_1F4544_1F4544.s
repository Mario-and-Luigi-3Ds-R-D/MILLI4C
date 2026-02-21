PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0xCC
LDR             R0, [R1]
MOV             R4, R1
CMP             R0, #0
MOV             R0, #1
BEQ             loc_1F45F8
LDRH            R0, [R4,#0x24]
CMP             R0, #0
BEQ             loc_1F4588
SUB             R0, R0, #1
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
STRH            R0, [R4,#0x24]
MOVNE           R0, #3
BNE             loc_1F45F8
LDR             R6, =off_65AF0C
MOV             R2, SP
MOV             R1, R4
MOV             R0, R5
BL              sub_29D018
LDRH            R3, [SP,#0xE0+var_E0]
MOV             R2, SP
MOV             R0, R5
CMP             R3, #0x3F ; '?'
MOV             R1, R4
BCS             loc_1F45E4
ADD             R3, R6, R3,LSL#3
LDR             R12, [R3,#4]
TST             R12, #1
LDREQ           R3, [R3]
ADD             R0, R5, R12,ASR#1
BEQ             loc_1F45D8
LDR             R12, [R0]
LDR             R3, [R3]
LDR             R3, [R12,R3]
NOP
BLX             R3
B               loc_1F45F0
LDR             R3, [R0]
LDR             R3, [R3,#0x14]
BLX             R3
CMP             R0, #0
BEQ             loc_1F458C
ADD             SP, SP, #0xCC
POP             {R4-R7,PC}
