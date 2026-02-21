ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x1400
ADD             R0, R0, #0x1DC
MOV             R1, R2
LDR             R0, [R0]
LDR             R0, [R0,#0x68]
NOP
PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R6, R1
SUB             SP, SP, #0x14
LDRSH           R0, [R1,#2]
LDRSH           R1, [R4,#4]
CMP             R0, R1
BNE             loc_13EF20
LDR             R0, [R6,#4]
MOV             R0, R0,ROR#16
STR             R0, [R4,#8]
LDRH            R0, [R6]
TST             R0, #0xFF00
BEQ             loc_13EF20
ADD             R5, R4, #0x70 ; 'p'
LDRH            R7, [R6,#8]
LDRH            R8, [R6,#0xA]
MOV             R0, R5
BL              sub_13273C
LDR             R2, [R4,#0x30]
CMP             R2, #0
BEQ             loc_13EE78
LDRH            R3, [R4,#0x34]
ADD             R0, R4, #0x34 ; '4'
MOV             R12, SP
CMP             R3, #0
MOV             R1, #0
BEQ             loc_13EEE0
LDRH            R3, [R2,#0x12]
CMP             R3, R7
BNE             loc_13EE8C
MOV             R3, #2
STRB            R3, [R2,#0x11]
B               loc_13EEE0
MOV             R0, R5
BL              sub_1327BC
NOP
NOP
B               loc_13EF20
LDRH            R3, [R0]
CMP             R7, #0
SUB             R3, R3, #1
SXTH            R9, R3
STRH            R9, [R0]
STR             R2, [R12,R1,LSL#2]
ADD             R1, R1, #1
BEQ             loc_13EEC0
MOV             R3, #0
LDR             R2, [R2,#0x14]
CMP             R3, #0
BNE             loc_13EEE0
B               loc_13EED8
LDRH            R3, [R2,#0x12]
CMP             R3, R8
CMPNE           R8, #0
MOVEQ           R3, #1
BEQ             loc_13EEB0
B               loc_13EEAC
CMP             R9, #0
BNE             loc_13EE60
CMP             R7, #0
MOV             R3, #0
STRHEQ          R3, [R0]
MCR             p15, 0, R3,c7,c10, 5
CMP             R1, #0
MOV             R0, #0
MOVGT           R3, #3
BLE             loc_13EF14
LDR             R7, [R12,R0,LSL#2]
ADD             R0, R0, #1
CMP             R1, R0
STRB            R3, [R7,#0x11]
BGT             loc_13EF00
MOV             R0, R5
STR             R2, [R4,#0x30]
BL              sub_1327BC
LDRH            R0, [R6]
AND             R0, R0, #0xFF
CMP             R0, #1
MOVNE           R0, #0
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0x14
POP             {R4-R9,PC}
